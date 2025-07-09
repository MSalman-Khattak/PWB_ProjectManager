CREATE DATABASE IF NOT EXISTS PWB;
USE PWB;

-- Users table
CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20),
    Role ENUM('Admin', 'ProjectManager', 'TeamMember', 'Customer') NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Projects table
CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectName VARCHAR(100) NOT NULL,
    Description TEXT,
    CreatedBy INT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CreatedBy) REFERENCES Users(UserID)
);

-- Project Versions
CREATE TABLE ProjectVersions (
    VersionID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    VersionName VARCHAR(50),
    ReleaseDate DATE,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Teams table
CREATE TABLE Teams (
    TeamID INT AUTO_INCREMENT PRIMARY KEY,
    TeamName VARCHAR(100),
    ProjectID INT,
    TeamLeadID INT,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (TeamLeadID) REFERENCES Users(UserID)
);

-- Team Members mapping
CREATE TABLE TeamMembers (
    TeamID INT,
    UserID INT,
    PRIMARY KEY (TeamID, UserID),
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Boards
CREATE TABLE Boards (
    BoardID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    Name VARCHAR(100),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Sprints
CREATE TABLE Sprints (
    SprintID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    SprintName VARCHAR(100),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Issues table
CREATE TABLE Issues (
    IssueID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectID INT,
    SprintID INT,
    Title VARCHAR(255),
    Description TEXT,
    IssueType ENUM('Bug', 'Task', 'Feature', 'Improvement'),
    Priority ENUM('Critical', 'High', 'Medium', 'Low'),
    Status ENUM('Open', 'In Progress', 'Resolved', 'Closed') DEFAULT 'Open',
    AssigneeID INT,
    ReporterID INT,
    DueDate DATE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
    FOREIGN KEY (SprintID) REFERENCES Sprints(SprintID),
    FOREIGN KEY (AssigneeID) REFERENCES Users(UserID),
    FOREIGN KEY (ReporterID) REFERENCES Users(UserID)
);

-- Issue Comments
CREATE TABLE Comments (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    IssueID INT,
    UserID INT,
    CommentText TEXT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Issue Attachments
CREATE TABLE Attachments (
    AttachmentID INT AUTO_INCREMENT PRIMARY KEY,
    IssueID INT,
    FileName VARCHAR(255),
    FilePath VARCHAR(255),
    UploadedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID)
);

-- Workflows
CREATE TABLE Workflows (
    WorkflowID INT AUTO_INCREMENT PRIMARY KEY,
    IssueID INT,
    CurrentStatus ENUM('Open', 'In Progress', 'Resolved', 'Closed'),
    UpdatedBy INT,
    UpdatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IssueID) REFERENCES Issues(IssueID),
    FOREIGN KEY (UpdatedBy) REFERENCES Users(UserID)
);
