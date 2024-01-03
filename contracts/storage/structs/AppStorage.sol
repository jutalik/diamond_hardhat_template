// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct User {
  address account;
  uint256 telegramId;
  string useWallet;
  string nation;
}


struct AppStorage {
  User admin;
  string appName;
  string appUrl;
  mapping(address => User) _users;
}
