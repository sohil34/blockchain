pragma solidity ^0.5.0;
contract Test{
function callKeccak256() public pure returns(bytes32 result){
return keccak256("BLOCKCHAIN");
}
function callsha256() public pure returns(bytes32 result){
return sha256("BLOCKCHAIN");
}
function callripemd() public pure returns (bytes20 result){
return ripemd160("BLOCKCHAIN");
}
}