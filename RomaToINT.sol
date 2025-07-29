// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Roma {
    /**
     实现罗马数字转数整数
    */
    function romanToInt(string memory s) public pure returns (uint) {
        bytes memory b = bytes(s);
        uint total = 0;
        uint prevValue = 0;

        for (uint i = b.length; i > 0; i--) {
            uint value = getValue(b[i - 1]);
            if (value < prevValue) {
                total -= value;
            } else {
                total += value;
            }
            prevValue = value;
        }
        return total;
    }

    function getValue(bytes1 roman) internal pure returns (uint) {
        if (roman == "I") return 1;
        if (roman == "V") return 5;
        if (roman == "X") return 10;
        if (roman == "L") return 50;
        if (roman == "C") return 100;
        if (roman == "D") return 500;
        if (roman == "M") return 1000;
        revert("Invalid Roman numeral");
    }
}