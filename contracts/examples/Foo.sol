pragma solidity 0.5.1;

import "../Readable.sol";


contract Foo is Readable {
    uint256[] internal data;
    string internal str;
    
    constructor() public {
        data.push(1);
        data.push(2);
        data.push(3);

        str = "Hello!";
    }
}
