pragma solidity ^0.5.0;

contract SolidityTest {
    uint16 public a = 20; 
    uint16 public b = 10;
    uint256 public sum = a + b; 
    uint256 public diff = a - b; 
    uint256 public mul = a * b; 
    uint256 public div = a / b; 
    uint256 public mod = a % b; 
    uint256 public dec = --b;
    uint256 public inc = ++a;
}
