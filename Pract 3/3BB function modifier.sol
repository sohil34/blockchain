// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;
contract ExampleContract {
address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
uint256 public counter;
modifier onlyowner() {
require(msg.sender == owner, "Only the contract owner can call");
_;
}
function incrementcounter() public onlyowner {
counter++;
}
}
