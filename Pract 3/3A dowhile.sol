pragma solidity ^0.5.0;
// Creating a contract
contract DoWhile {
// Declaring a dynamic array
uint256[] data;
// Declaring state variable
uint8 j = 0;
// Defining function to demonstrate
// 'Do-While loop'
function loop() public returns (uint256[] memory) {
do {
j++;
data.push(j);
} while (j < 5);
return data;
}
function display() public view returns(uint256[] memory){
return data;
}
}