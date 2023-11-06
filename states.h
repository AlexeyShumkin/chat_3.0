#pragma once
#include "handler.h"

class Chat;

class State
{
public:
    virtual ~State();
    virtual void request(Chat* chat) = 0;
    Handler* getHD() const;
    const Dataset& getDS() const;
    void setPathForRead(const fs::path& path);
protected:
    fs::path pathForRead_;
    void setState(Chat* chat, State* state);
    void exit(Chat* chat);
    Handler* hd_{ nullptr };
    Dataset ds_;
};

class SignUp : public State
{
public:
    SignUp();
    void request(Chat* chat) override;
    void sign();
};

class SignIn : public SignUp
{
public:
    SignIn();
    void request(Chat* chat) override;
};

class PubPost : public State
{
public:
    PubPost() = default;
    PubPost(const std::string& sender);
    void request(Chat* chat) override;
    bool post();
};

class PubRead : public State
{
public:
    PubRead() = default;
    PubRead(const std::string& user);
    void request(Chat* chat) override;
    void read();
};

class PvtPost : public PubPost
{
public:
    PvtPost(const std::string& sender, const std::string& recipient);
    void request(Chat* chat) override;
};

class PvtRead : public PubRead
{
public:
    PvtRead(const std::string& user1, const std::string& user2);
    void request(Chat* chat) override;
};
