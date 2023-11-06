#include "states.h"
#include "chat.h"

State::~State()
{
    delete hd_;
}

Handler* State::getHD() const
{
    return hd_;
}

const Dataset& State::getDS() const
{
    return ds_;
}

void State::setPathForRead(const fs::path& path)
{
    pathForRead_ = path;
}

void State::setState(Chat* chat, State* state)
{
    chat->setState(state);
}

void State::exit(Chat* chat)
{
    chat->active_ = false;
}

SignUp::SignUp()
{
    hd_ = new SignUpHandler();
}

void SignUp::request(Chat* chat)
{
    char action = '0';
    std::cout << "Sign up(1), sign in(2), exit(q): ";
    std::cin >> action;
    switch(action)
    {
    case '1':
        sign();
        if (ds_[0] == "all" || !chat->send(this))
		    std::cout << "This login is already taken!\n";
	    else
		    std::cout << "Registration was successful!\n";
        break;
    case '2':
        setState(chat, new SignIn());
        break;
    case 'q':
        exit(chat);
        break;
    default:
        std::cout << "Your command is unclear. Please, select an action from the list:\n";
    }
}

void SignUp::sign()
{
    std::string login;
	std::string password;
	std::cout << "Enter your login: ";
	std::cin >> login;
	std::cout << "Enter your password: ";
	std::cin >> password;
    ds_.push_back(login);
    ds_.push_back(password);
}

SignIn::SignIn()
{
    hd_ = new SignInHandler();
}

void SignIn::request(Chat* chat)
{
    sign();
    if(!chat->send(this))
    {
        std::cout << "Invalid login or password!\n";
        setState(chat, new SignUp());
    }
    else
    {
        std::cout << "Welcome to the chat room!\n";
        setState(chat, new PubPost(ds_[0]));
    }
}

PubPost::PubPost(const std::string& sender)
{
    ds_.push_back(sender);
    ds_.push_back("all");
    hd_ = new PubPostHandler();
}

void PubPost::request(Chat* chat)
{
    char action = '0';
    std::cout << "Send message(1), read chat(2), dialog(3), sign out(4), exit(q): ";
    std::cin >> action;
    std::string recipient;
    switch(action)
    {
    case '1':
        if(!post())
            std::cout << "You can't send an empty message!\n";
        else
            chat->send(this);
        break;
    case '2':
        setState(chat, new PubRead(ds_[0]));
        break;
    case '3':
		std::cout << "Enter the recipient login: ";
		std::cin >> recipient;
		if (recipient == ds_[0])
			std::cout << "The developer still believes that users should not send messages to themselves :)\n";
        else
            setState(chat, new PvtPost(ds_[0], recipient));
        break;
    case '4':
        std::cout << "User " << ds_[0] << " left the chat room.\n";
        setState(chat, new SignUp());
        break;
    case 'q':
        exit(chat);
        break;
    default:
        std::cout << "Your command is unclear. Please, select an action from the list:\n";
    }
}

bool PubPost::post()
{
    std::string text;
	std::cout << "Message: ";
	std::getline(std::cin.ignore(), text);
    ds_.push_back(text);
    return !text.empty();
}

PubRead::PubRead(const std::string& user)
{
    ds_.push_back(user);
    hd_ = new PubReadHandler();
}

void PubRead::request(Chat* chat)
{
    chat->send(this);
    read();
    setState(chat, new PubPost(ds_[0]));
}

void PubRead::read()
{
    std::ifstream in(pathForRead_);
	for (std::string line; std::getline(in, line);) 
    	std::cout << line << std::endl;
}

PvtPost::PvtPost(const std::string& sender, const std::string& recipient)
{
    ds_.push_back(sender);
    ds_.push_back(recipient);
    hd_ = new PvtPostHandler();
}

void PvtPost::request(Chat* chat)
{
    char action = '0';
    std::cout << "Send message(1), read conversation(2), back chat(3), exit(q): ";
    std::cin >> action;
    switch(action)
    {
    case '1':
        if(!post())
            std::cout << "You can't send an empty message!\n";
        else
            chat->send(this);
        break;
    case '2':
        setState(chat, new PvtRead(ds_[0], ds_[1]));
        break;
    case '3':
        setState(chat, new PubPost(ds_[0]));
        break;
    case 'q':
        exit(chat);
        break;
    default:
        std::cout << "Your command is unclear. Please, select an action from the list:\n";
    }
}

PvtRead::PvtRead(const std::string& user1, const std::string& user2)
{
    ds_.push_back(user1);
    ds_.push_back(user2);
}

void PvtRead::request(Chat* chat)
{
}
