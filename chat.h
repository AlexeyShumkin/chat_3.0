#pragma once
#include "states.h"

class State;

class Chat
{
public:
    Chat(DataBase* db);
    ~Chat();
    void run();
    void request();
    bool send(State* state) const;
private:
    friend class State; 
    void setState(State* state);
    bool active_{ true };
    State* state_{ nullptr };
    DataBase* db_{ nullptr };
};
