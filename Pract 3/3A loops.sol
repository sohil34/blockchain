pragma solidity ^0.5.0;
contract loopDemo
{
uint [] data;
function forDemo() public returns(uint[] memory)
{
for(uint i=0; i<10; i++){
data.push(i);
}
return data;
}
function disp() public view returns(uint[] memory)
{
return data;
}
}