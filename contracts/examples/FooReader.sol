pragma solidity 0.5.1;

import "./Foo.sol";


contract FooReader is Foo {
    
    function getSum() public view returns(uint sum) {
        for (uint256 i = 0; i < data.length; i++) {
            sum += data[i];
        }
    }
}
