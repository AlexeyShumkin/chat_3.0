#include "chat.h"

Chat::Chat(DataBase* database) : database_{ database } { request_ = new SignUp(); }

Chat::~Chat() { delete request_; }

void Chat::request() { request_->request(this); }

bool Chat::send(Request* request) const { return database_->handle(request); }

void Chat::makeRequest(Request* request)
{
    delete request_;
    request_ = request;
}

void Chat::run()
{
    std::cout << "Hello! You are welcome to register, or you can enter the chat room if you are already registered.\n";
    while(active_)
        request();
    std::cout << "Goodbye!\n";
}
