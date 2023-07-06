// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract WithdrawalPattern {
address public owner;
uint256 public lockedbalance;
uint256 public withdrawablebalance;
constructor() {
owner = msg.sender;
}
modifier onlyowner() {
require(msg.sender == owner, "Only the owner can call this function");
_;
}
function deposit(uint256 amount) public payable {
require(amount > 0, "Amount must be greater than zero");
lockedbalance += amount;
}
function withdraw(uint256 amount) public payable onlyowner {
require(
amount <= withdrawablebalance,
"Insufficient withdrawable balance"
);
withdrawablebalance -= amount;
payable(msg.sender).transfer(amount);
}
function unlock(uint256 amount) public onlyowner {
require(amount <= lockedbalance, "Insufficient locked balance");
lockedbalance -= amount;
withdrawablebalance += amount;
}
}