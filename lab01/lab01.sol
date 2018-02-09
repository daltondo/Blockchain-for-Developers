pragma solidity ^0.4.18;

contract Lab01 {
    
    // A ‘greeter’ that returns the a user inputted string
    function greet(string _greeting) public pure returns (string) {
        return _greeting;
    }
    
    // Calls 'greeter' function to out put "hello, World!"
    function helloWorld() public pure returns (string) {
        return greet("hello, World!");
    }
    
    
    // The Fibonacci function (iteratively)
    function fib(uint n) public pure returns (uint[]) {
        uint[] memory fibSequence = new uint[](n);
        uint prev = 0;
        uint curr = 1;
        uint i = 0;
        
        while (i < n) {
            fibSequence[i] = curr;
            uint temp = curr;
            curr = curr + prev;
            prev = temp;
            i += 1;
        }
        
        return fibSequence;
    }
    
    
    // An XOR function (without bitwise operations)
    // Assumes the strings passed in are of same length and contain only 0s or 1s
    function xor(string x, string y) public pure returns (string) {
        bytes memory _x = bytes(x);
        bytes memory _y = bytes(y);
        bytes memory _xor = new bytes(_x.length);
        uint i = 0;

        while (i < _xor.length) {
            if (_x[i] != _y[i]) {
                _xor[i] = "1";
            } else {
                _xor[i] = "0";
            }
            i += 1;
        }
        
        return string(_xor);
    }
    
    
    // A method to concatenate two strings
    // Does not use any modules
    function concatenate(string x, string y) public pure returns (string) {
        bytes memory _x = bytes(x);
        bytes memory _y = bytes(y);
        bytes memory fused = new bytes(_x.length + _y.length);
        uint k = 0;
        
        for (uint i = 0; i < _x.length; i++) {
            fused[k] = _x[i];
            k += 1;
        }
        
        for (uint j = 0; j < _y.length; j++) {
            fused[k] = _y[j];
            k += 1;
        }
        
        return string(fused);
    }
}