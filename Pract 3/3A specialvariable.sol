// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Special_Variables {
mapping(address => uint256) rollNo;
function setRollNO(uint256 _myNumber) public {
rollNo[msg.sender] = _myNumber;
}
function whatIsMyRollNumber() public view returns (uint256) {
return rollNo[msg.sender];
}
}