pragma solidity 0.5.1;


contract Readable {
    
    function read(address reader, bytes memory data) public view returns(bytes memory) {
        bytes memory _data = abi.encodeWithSelector(this.staticRead.selector, reader, data);
        (bool success, bytes memory returnData) = address(this).staticcall(_data);
        
        if (success) return returnData;
    }
    
    function staticRead(address reader, bytes memory data) public returns(bytes memory) {
        require(msg.sender == address(this));
        (bool success, bytes memory returnData) = reader.delegatecall(data);
        
        if (success) return returnData;
    }
}
