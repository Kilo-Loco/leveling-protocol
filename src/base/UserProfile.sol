// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract UserProfile {
	mapping(address => User) public users;
	mapping(address => bool) public registered;

	function registerUser(string calldata name) external {
		require(!registered[msg.sender], "User already registered");
		users[msg.sender] = User(name);
		registered[msg.sender] = true;
	}

	function updateStats(string calldata category, uint256 points) external {
		require(registered[msg.sender], "User not registered");
		users[msg.sender].stats[category] += points;
	}

	function getStats(string calldata category) external view returns (uint256) {
		require(registered[msg.sender], "User not registered");
		return users[msg.sender].stats[category];
	}
}

