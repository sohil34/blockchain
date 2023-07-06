pragma solidity ^0.5.0;
contract ifelsedemo
{
uint i=10;
function decision_making() public view returns(string memory)
{
if(i%2==0)
{
return "even";
}
else
{
return "Odd";
}
}
}