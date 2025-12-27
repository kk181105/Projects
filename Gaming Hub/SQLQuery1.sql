-- Leaderboard Table
CREATE TABLE Leaderboard (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PlayerName NVARCHAR(100),
    Score INT,
    Rank INT
);

-- Contact Table
CREATE TABLE Contacts (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100),
    Message NVARCHAR(MAX)
);
