// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

library Types {
	struct User {
		string name;
		mapping(string => uint256) stats;
	}

	struct Task {
		uint256 id;
		string description;
		string category;
		uint256 difficulty;
	}
}
