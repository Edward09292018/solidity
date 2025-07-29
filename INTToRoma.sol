// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Roma{
    /**
     实现整数转罗马数字
    */
     function intToRoman(uint num) public pure returns (string memory) {
        require(num > 0 && num <= 3999, "Number must be between 1 and 3999");

        string memory result = "";

        // 处理千位
        while (num >= 1000) {
            result = string(abi.encodePacked(result, "M"));
            num -= 1000;
        }

        // 处理百位
        if (num >= 900) { result = string(abi.encodePacked(result, "CM")); num -= 900; }
        else if (num >= 500) { result = string(abi.encodePacked(result, "D")); num -= 500; }
        else if (num >= 400) { result = string(abi.encodePacked(result, "CD")); num -= 400; }

        while (num >= 100) {
            result = string(abi.encodePacked(result, "C"));
            num -= 100;
        }

        // 处理十位
        if (num >= 90) { result = string(abi.encodePacked(result, "XC")); num -= 90; }
        else if (num >= 50) { result = string(abi.encodePacked(result, "L")); num -= 50; }
        else if (num >= 40) { result = string(abi.encodePacked(result, "XL")); num -= 40; }

        while (num >= 10) {
            result = string(abi.encodePacked(result, "X"));
            num -= 10;
        }

        // 处理个位
        if (num == 9) { result = string(abi.encodePacked(result, "IX")); }
        else if (num >= 5) { result = string(abi.encodePacked(result, "V")); num -= 5; }
        else if (num == 4) { result = string(abi.encodePacked(result, "IV")); }
        else {
            for (uint i = 0; i < num; i++) {
                result = string(abi.encodePacked(result, "I"));
            }
        }

        return result;
    }
}