// The GoGamePlayer contract
contract GoGamePlayer {
    // The player's Ethereum address
    address public playerAddress;

    // The player's score
    uint public score;

    // The player's record of games played
    uint public gamesPlayed;

    // An event that is emitted when the player captures one or more stones
    event StonesCaptured(uint numCaptured);

    // Constructor function that initializes the player's address
    constructor(address _playerAddress) public {
        playerAddress = _playerAddress;
    }

    // Function for incrementing the player's score
    function incrementScore(uint amount) public {
        score += amount;
    }

    // Function for incrementing the player's games played
    function incrementGamesPlayed() public {
        gamesPlayed++;
    }

    // Function for capturing stones
    function captureStones(uint numCaptured) public {
        // Increment the player's score by the number of stones captured
        incrementScore(numCaptured);

        // Emit the StonesCaptured event
        emit StonesCaptured(numCaptured);
    }
}
