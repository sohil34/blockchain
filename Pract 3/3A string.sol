pragma solidity ^0.5.0;

contract LearningStrings { 
    string text;

    function getText() public view returns (string memory) { return text;
    }

    function setText() public { text = "hello";
    }

    function setTextByPassing(string memory message) public { text = message;
    }
}
