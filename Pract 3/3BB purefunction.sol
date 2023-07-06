pragma solidity ^0.5.0;
contract pure_demo {
function getResult() public pure returns (uint256 product, uint256 sum) {
uint256 num1 = 2;
uint256 num2 = 4;
product = num1 * num2;
sum = num1 + num2;
}
}