#pragma once
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <filesystem>

using Dataset = std::vector<std::string>;
namespace fs = std::filesystem;

class State;
class Handler;

class DataBase
{
public:
	virtual ~DataBase() = default;
	virtual bool handle(State* state) = 0;
	const fs::path& getUserDataPath() const;
	const fs::path& getMsgDataPath() const;
protected:
	Handler* hd_{ nullptr };
	fs::path userDataPath_{ "data/userData" };
	fs::path msgDataPath_{ "data/msgData" };
};

class LocalDB : public DataBase
{
public:
	LocalDB();
	bool handle(State* state) override;
};
