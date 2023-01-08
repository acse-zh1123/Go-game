pragma solidity ^0.6.0;

import "./AbstractGo.sol";

contract GoFrontend {
  // The address of the Go contract.
  address public goContract;

  // Initializes the contract with the address of the Go contract.
  constructor(address _goContract) public {
    goContract = _goContract;
  }

  // Makes a move on the board.
  function makeMove(uint8 x, uint8 y) public {
    Go go = Go(goContract);
    go.makeMove(x, y);
  }

  // Returns the current state of the board.
  function getBoard() public view returns (uint8[19][19]) {
    Go go = Go(goContract);
    return go.getBoard();
  }

  // Returns the current turn.
  function getTurn() public view returns (uint8) {
    Go go = Go(goContract);
    return go.turn;
  }

  // Returns whether the game is over.
  function gameOver() public view returns (bool) {
    Go go = Go(goContract);
    return go.gameOver();
  }

  // Returns the winner of the game.
  function winner() public view returns (uint8) {
    Go go = Go(goContract);
    return go.winner();
  }
}
