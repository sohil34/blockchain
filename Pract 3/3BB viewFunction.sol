pragma solidity ^0.5.0;
contract view_demo {
uint256 num1 = 2;
uint256 num2 = 4;
function getResult() public view returns (uint256 product, uint256 sum) {
product = num1 * num2;
sum = num1 + num2;
}
}