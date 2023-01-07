pragma solidity ^0.6.0;

import "./AbstractGo.sol";

contract Go is AbstractGo {
  // Initializes the game state with an empty 19x19 board.
  constructor() public {
    for (uint8 i = 0; i < 19; i++) {
      for (uint8 j = 0; j < 19; j++) {
        board[i][j] = 0;
      }
    }
  }

  // Makes a move on the board.
  function makeMove(uint8 x, uint8 y) public {
    require(validateMove(x, y), "Invalid move.");
    applyMove(x, y);
    emit MoveMade(x, y, turn);
    turn = turn == 1 ? 2 : 1;
  }

  // Returns the current state of the board.
  function getBoard() public view returns (uint8[19][19]) {
    return board;
  }
  
  // The player's status. 0 for inactive, 1 for active.
  uint8 public status;

  // Makes a move on the board.
  function makeMove(uint8 x, uint8 y) public {
    require(validateMove(x, y), "Invalid move.");
    applyMove(x, y);
    emit MoveMade(x, y, turn);
    turn = turn == 1 ? 2 : 1;
    // Update the player's status.
    if (turn == 1) {
      status = 1;
    } else {
      status = 0;
    }
  }

  // Sets the player's status to inactive.
  function setInactive() public {
    status = 0;
  }

  // Sets the player's status to active.
  function setActive() public {
    status = 1;
  }
}
