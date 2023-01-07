pragma solidity ^0.6.0;

import "./AbstractGo.sol";

contract Go9x9 is AbstractGo {
  // Initializes the game state with an empty 9x9 board.
  constructor() public {
    for (uint8 i = 0; i < 9; i++) {
      for (uint8 j = 0; j < 9; j++) {
        board[i][j] = 0;
      }
    }
  }

  // Validates a proposed move on a 9x9 board.
  function validateMove(uint8 x, uint8 y) public view override returns (bool) {
    // Validation logic for 9x9 board goes here.
  }

  // Applies a move to the game state on a 9x9 board if it is valid.
  function applyMove(uint8 x, uint8 y) public override {
    // Move application logic for 9x9 board goes here.
  }
}
