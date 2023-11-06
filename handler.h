#pragma once
#include "database.h"

class State;

class Handler
{
public:
    virtual bool specHandle(State* state, DataBase* db) = 0;
protected:
    size_t makeDialogID(const std::string& sender, const std::string& recipient);
	size_t hashFunction(const std::string& password);
};

class SignUpHandler : public Handler
{
public:
    bool specHandle(State* state, DataBase* db) override;
};

class SignInHandler : public Handler
{
public:
    bool specHandle(State* state, DataBase* db) override;
};

class PubPostHandler : public Handler
{
public:
    bool specHandle(State* state, DataBase* db) override;
};

class PubReadHandler : public Handler
{
public:
    bool specHandle(State* state, DataBase* db) override;
};

class PvtPostHandler : public Handler
{
public:
    bool specHandle(State* state, DataBase* db) override;
};