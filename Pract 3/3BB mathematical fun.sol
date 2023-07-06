pragma solidity ^0.5.0;
contract Test{
function CallAddMod() public pure returns(uint){
return addmod(7,3,3);
}
function CallMulMod() public pure returns(uint){
return mulmod(7,3,3);
}
}