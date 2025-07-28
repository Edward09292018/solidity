// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract Reverse{
    /**
    ✅ 反转字符串 (Reverse String)
    题目描述：反转一个字符串。输入 "abcde"，输出 "edcba"
    */
    function reverseString(string memory str) public pure returns (string memory) {
        bytes memory input = bytes(str);
        bytes memory strRev = new bytes(input.length);
    
        for (uint i = 0; i < input.length; i++) {
            // strRev = string.concat(string(bytes(str)[str.length - 1 - i]), strRev);
            strRev[i] = input[input.length - 1 - i];
        }
        return string(strRev);
    }
}