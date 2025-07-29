// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract BinarySearch{

    // 有序数组
    uint[] public sortedArray;

    // 添加数组元素（保证数组有序）
    function setArray(uint[] memory arr) public {
        // 这里假设传入已经有序的数组
        sortedArray = arr;
    }

    // 二分查找目标值
    function binarySearch(uint target) public view returns (int) {
        uint left = 0;
        uint right = sortedArray.length;
        while (left < right) {
            uint mid = left + (right - left) / 2;
            if (sortedArray[mid] == target) {
                return int(mid); // 找到目标，返回索引
            } else if (sortedArray[mid] < target) {
                left = mid + 1;
            } else {
                right = mid;
            }
        }
        return -1; // 未找到
    }
}