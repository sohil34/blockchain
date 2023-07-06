//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract RestrictedAccess {
address public owner = msg.sender;
uint256 public creationTime = block.timestamp;
modifier onlyBy(address _account) {
require(msg.sender == _account, "Sender not authorized!");
_;
}
modifier onlyAfter(uint256 _time) {
require(block.timestamp >= _time, "Function was called too early!");
_;
}
modifier costs(uint256 _amount) {
require(msg.value >= _amount, "Not enough Ether provided!");
_;
}
function forceOwnerChange(address _newOwner)
public
payable
costs(200 ether)
{
owner = _newOwner;
}
function changeOwner(address _owner) public onlyBy(owner) {
owner = _owner;
}
function disown() public onlyBy(owner) onlyAfter(creationTime + 3 weeks) {
delete owner;
}
}