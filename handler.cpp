#include "handler.h"
#include "states.h"

size_t Handler::makeDialogID(const std::string& sender, const std::string& recipient)
{
    size_t i = 0;
    size_t res = 0;
    size_t sum = sender.size() + recipient.size();
    while(i < sender.size() && i < recipient.size())
    {
        res += sender[i] + recipient[i];
        ++i;
    }
    return res <<= sum;
}

size_t Handler::hashFunction(const std::string& password)
{
    size_t i = 0;
    size_t j = password.size() - 1;
    size_t res = 0;
    while(i < j)
        res += password[i++] << password[j--];
    return res;
}

bool SignUpHandler::specHandle(State* state, DataBase* db)
{
   if(!fs::exists(db->getUserDataPath() / state->getDS()[0]))
    {
        size_t hash = hashFunction(state->getDS()[1]);
        std::fstream fst;
        fst.open(db->getUserDataPath() / state->getDS()[0], std::fstream::out);
        if(fst.is_open())
        {
            fst << hash;
            fst.close();
            return true;
        }
    }
    return false;
}

bool SignInHandler::specHandle(State* state, DataBase* db)
{
    if(fs::exists(db->getUserDataPath() / state->getDS()[0]))
    {
        size_t hash = hashFunction(state->getDS()[1]);
        size_t tmp = 0;
        std::fstream fst;
        fst.open(db->getUserDataPath() / state->getDS()[0], std::fstream::in);
        if(fst.is_open())
        {
            fst >> tmp;
            fst.close();
        }
        if(hash == tmp)
            return true;
    }
    return false;
}

bool PubPostHandler::specHandle(State* state, DataBase* db)
{
    std::fstream fst;
    fst.open(db->getMsgDataPath() / state->getDS()[1], std::fstream::app |  std::fstream::out);
    if(fst.is_open())
    {
        fst << state->getDS()[0] << " -> " << state->getDS()[1] << " | " << state->getDS()[2] << '\n';
        fst.close();
        return true;
    }
    return false;
}

bool PubReadHandler::specHandle(State* state, DataBase* db)
{
    state->setPathForRead(db->getMsgDataPath() / "all");
    return true;
}

bool PvtPostHandler::specHandle(State* state, DataBase* db)
{
    std::fstream fst;
    auto dialog = std::to_string(makeDialogID(state->getDS()[0], state->getDS()[1]));
    fst.open(db->getMsgDataPath() / dialog, std::fstream::app |  std::fstream::out);
    if(fst.is_open())
    {
        fst << state->getDS()[0] << " -> " << state->getDS()[1] << " | " << state->getDS()[2] << '\n';
        fst.close();
        return true;
    }
    return false;
}
