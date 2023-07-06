pragma solidity ^0.5.0;

contract variable_demo {
    uint256 sum = 4; //state variable uint256 x;
    address a;
    string s = "welcome";

    function add(uint256) public {
        uint256 y = 2; //local variable sum = sum+x+y: sum = sum + x + y;
    }

    function display() public view returns (uint256) { return sum;
    }

    function displayMsg() public view returns (string memory) { return s;
    }
}
