// SPDX-License-Identifier: MIT
pragma solidity ^0.5.12;
contract A {
uint256 n;
function set(uint256 value) external {
n = value;
}
function() external payable {
n = 0;
}
}
contract example {
function callA(A a) public returns (bool) {
(bool success, ) = address(a).call(abi.encodeWithSignature("setter()"));
require(success);
address payable payableA = address(uint160(address(a)));
return (payableA.send(2 ether));
}
}