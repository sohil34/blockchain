// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;
contract Test {
function return_example()
public
pure
returns (
uint256,
uint256,
uint256,
string memory
)
{
uint256 num1 = 10;
uint256 num2 = 16;
uint256 sum = num1 + num2;
uint256 prod = num1 * num2;
uint256 diff = num2 - num1;
string memory message = "Multiple return values";
return (sum, prod, diff, message);
}
}