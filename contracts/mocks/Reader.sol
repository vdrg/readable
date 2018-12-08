pragma solidity 0.5.1;

import "./ReadableMock.sol";


contract Reader is ReadableMock(0) {
    
    function get() public view returns(uint256) {
        return value;
    }
}
