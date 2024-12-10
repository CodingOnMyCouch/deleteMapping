// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract StructMappingExample {
    // Define a simple struct
    struct User {
        string name;
        uint256 age;
        address wallet;
    }

    // Define a mapping to store the struct
    mapping(uint256 => User) public users;

    // Add a new user to the mapping
    function addUser(uint256 userId, string memory name, uint256 age) public {
        users[userId] = User(name, age, msg.sender);
    }

    // Retrieve a user from the mapping
    function getUser(uint256 userId) public view returns (string memory name, uint256 age, address wallet) {
        User memory user = users[userId];
        return (user.name, user.age, user.wallet);
    }

    // Delete a user from the mapping
    function deleteUser(uint256 userId) public {
        delete users[userId];
    }
}
