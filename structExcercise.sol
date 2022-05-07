/* 

Struct are types are used to represent a record. Suppose you want to 
keep track of your movies in a library. 
You might want to track the following attributes about each movie - 

*/ 
/*

1. Create a new movie and set it up so that it updatees to the movie in the setMovie function 
2. return the ID of the new movie
3. Create a new var called comedy and set up comedy to the data type movie 
4. update the setmovie function with a comedy movie that contain name, director, and an id
5. return the movie ID of the comedy. 

*/

pragma solidity >= 0.7.0 < 0.9.0; 

contract learnStructs { 
    
    struct Movie {
        string director;
        string movieTitle;
        uint movieID;
    }

    Movie movie; 
    Movie TheOracle; 
    Movie comedy; 
    function setMovie() public { 
      movie = Movie('The Unknowning', 'Usman Asim', 28);
    }

    function getMovieID() public view returns(uint) { 
        return movie.movieID; 
    }
    function setOracle() public { 
        TheOracle = Movie('The Oracle', 'Usman Asim', 45);
    }

    function getOracleID() public view returns(uint) { 
        return TheOracle.movieID; 
    }

    function setComedy() public {
        comedy = Movie('The Forgetters', 'James Johsnon', 38); 
    }

    function getComedyDirector() public view returns(string memory) {
        return comedy.director;
    }
    
}

