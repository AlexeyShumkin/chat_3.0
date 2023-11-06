#include "database.h"
#include "handler.h"
#include "states.h"

const fs::path& DataBase::getUserDataPath() const
{
    return userDataPath_;
}

const fs::path& DataBase::getMsgDataPath() const
{
    return msgDataPath_;
}

LocalDB::LocalDB()
{
    fs::create_directory("data");
	fs::create_directory(userDataPath_);
	fs::create_directory(msgDataPath_);
}

bool LocalDB::handle(State* state)
{
    hd_ = state->getHD();
    return hd_->specHandle(state, this);
}
