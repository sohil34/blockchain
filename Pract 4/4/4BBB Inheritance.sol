pragma solidity >=0.4.22 <0.6.0;
contract Parent {
uint256 internal sum;
function setValue() external {
uint256 a = 10;
uint256 b = 20;
sum = a + b;
}
}
contract child is Parent {
function getValue() external view returns (uint256) {
return sum;
}
}
contract caller {
child cc = new child();
function testInheritance() public returns (uint256) {
cc.setValue();
return cc.getValue();
}
function show_value() public view returns (uint256) {
return cc.getValue();
}
}