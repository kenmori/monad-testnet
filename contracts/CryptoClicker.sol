// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.24

contract CryptoClicker {
    uint256 public counter;
    mapping(address => uint256) public userClicks;

    event Click(address indexed player, uint256 totalClicks);

    function click() external {
        counter++;
        userClicks[msg.sender]++;
        emit Click(msg.sender, userClicks[msg.sender]);
    }

    function getUserClicks(address user) external view returns (uint256) {
        return userClicks[user];
    }
}
