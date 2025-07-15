// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TodoList {
    struct Task {
        string content;
        bool completed;
    }

    mapping(address => Task[]) private userTasks;

    event TaskAdded(address user, string content);
    event TaskCompleted(address user, uint index);
    event TaskDeleted(address user, uint index);

    // Add a new task
    function addTask(string memory _content) public {
        userTasks[msg.sender].push(Task(_content, false));
        emit TaskAdded(msg.sender, _content);
    }

    // Mark a task as completed
    function completeTask(uint _index) public {
        require(_index < userTasks[msg.sender].length, "Invalid index");
        userTasks[msg.sender][_index].completed = true;
        emit TaskCompleted(msg.sender, _index);
    }

    // Delete a task (soft delete by moving last task to index and popping)
    function deleteTask(uint _index) public {
        require(_index < userTasks[msg.sender].length, "Invalid index");

        uint lastIndex = userTasks[msg.sender].length - 1;
        if (_index != lastIndex) {
            userTasks[msg.sender][_index] = userTasks[msg.sender][lastIndex];
        }
        userTasks[msg.sender].pop();
        emit TaskDeleted(msg.sender, _index);
    }

    // View all tasks
    function getTasks() public view returns (Task[] memory) {
        return userTasks[msg.sender];
    }
}
