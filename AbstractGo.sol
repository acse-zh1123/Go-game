pragma solidity ^0.6.0;

contract AbstractGo {
  // The board is represented as a two-dimensional array of integers.
  // 0 represents an empty space, 1 represents a black stone, and 2 represents a white stone.
  uint8[19][19] public board;

  // The current turn. 1 for black, 2 for white.
  uint8 public turn;

  // The current score.
  int8 public score;

  // Validates a proposed move.
  function validateMove(uint8 x, uint8 y) public view returns (bool);

  // Applies a move to the game state if it is valid.
  function applyMove(uint8 x, uint8 y) public;

  // Returns whether the game is over.
  function gameOver() public view returns (bool);

  // Returns the winner of the game. 0 for draw, 1 for black, 2 for white.
  function winner() public view returns (uint8);

  // Event emitted when a move is made.
  event MoveMade(uint8 x, uint8 y, uint8 color);
}
