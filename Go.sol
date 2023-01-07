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
}
