// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Voting {
    /**
     创建一个名为Voting的合约，包含以下功能：
        一个mapping来存储候选人的得票数
        一个vote函数，允许用户投票给某个候选人
        一个getVotes函数，返回某个候选人的得票数
        一个resetVotes函数，重置所有候选人的得票数
    */
    mapping(string=>uint) public votes;
    // 定义一个字符串数组来存储候选人的名字
    string[] public candidates;
    function vote(string memory candidate) public {
        votes[candidate] += 1;
        candidates.push(candidate);
    }
    function getVotes(string memory candidate) public view returns (uint) {
        return votes[candidate];
    }
    function resetVotes() public {
        for (uint i=0;i<candidates.length;i++) {
            votes[candidates[i]]=0;
        }
    }
}
