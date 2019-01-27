pragma solidity ^0.5.0;

contract HelloWorld {

    uint256 counter = 5; //state variable we assigned earlier
    address payable owner; //set owner as msg.sender

    constructor() public {owner = msg.sender;}

    // This contract only defines a modifier but does not use
    // it: it will be used in derived contracts.
    // The function body is inserted where the special symbol
    // `_;` in the definition of a modifier appears.
    // This means that if the owner calls this function, the
    // function is executed and otherwise, an exception is
    // thrown.
    modifier onlyowner {
        require(
            msg.sender == owner,
            "Only owner can call this function."
        );
        _;
    }

    function add() public {//increases counter by 1
        counter++;
    }

    function subtract() public {//decreases counter by 1
        counter--;
    }

    function getCounter() public view returns (uint256) {
        return counter;
    }

    function kill() public onlyowner {//self-destruct function,
        //        if (msg.sender == owner) {
        selfdestruct(owner);
        //        }
    }

    function() external payable {

    }
}