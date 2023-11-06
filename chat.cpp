#include "chat.h"

Chat::Chat(DataBase* db) : db_{ db }
{
    state_ = new SignUp();
}

Chat::~Chat()
{
    delete state_;
}

void Chat::run()
{
    std::cout << "Hello! You are welcome to register, or you can enter the chat room if you are already registered.\n";
    while(active_)
        request();
    std::cout << "Goodbye!\n";
}

void Chat::request()
{
    state_->request(this);
}

bool Chat::send(State* state) const
{
    return db_->handle(state);
}

void Chat::setState(State* state)
{
    delete state_;
    state_ = state;
}
