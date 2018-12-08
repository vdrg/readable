pragma solidity 0.5.1;

import "../Readable.sol";


contract ReadableMock is Readable {
    uint256 internal value;
    
    constructor(uint256 _value) public {
        value = _value;
    }
}
