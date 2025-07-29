// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Merge{
    // 合并两个有序数组为一个有序数组
    function mergeSortedArrays(uint[] memory arr1, uint[] memory arr2) public pure returns (uint[] memory) {
        uint len1 = arr1.length;
        uint len2 = arr2.length;
        uint[] memory result = new uint[](len1 + len2);
        uint i = 0; // arr1 指针
        uint j = 0; // arr2 指针
        uint k = 0; // result 指针

        while (i < len1 && j < len2) {
            if (arr1[i] <= arr2[j]) {
                result[k] = arr1[i];
                i++;
            } else {
                result[k] = arr2[j];
                j++;
            }
            k++;
        }

        // 若arr1还有剩余
        while (i < len1) {
            result[k] = arr1[i];
            i++;
            k++;
        }

        // 若arr2还有剩余
        while (j < len2) {
            result[k] = arr2[j];
            j++;
            k++;
        }

        return result;
    }

}