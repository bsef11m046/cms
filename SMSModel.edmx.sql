
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/27/2014 05:59:54
-- Generated from EDMX file: C:\Users\Saba\Desktop\SMS\SMS\SMSModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SMSModel.CMS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_StudentSubmission]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Submissions] DROP CONSTRAINT [FK_StudentSubmission];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentAttendance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Attendances] DROP CONSTRAINT [FK_StudentAttendance];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentCourseGrade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CourseGrades] DROP CONSTRAINT [FK_StudentCourseGrade];
GO
IF OBJECT_ID(N'[dbo].[FK_TeacherCourse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [FK_TeacherCourse];
GO
IF OBJECT_ID(N'[dbo].[FK_TeacherSubmission]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Submissions] DROP CONSTRAINT [FK_TeacherSubmission];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseAssignment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Assignments] DROP CONSTRAINT [FK_CourseAssignment];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseCourseGrade]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CourseGrades] DROP CONSTRAINT [FK_CourseCourseGrade];
GO
IF OBJECT_ID(N'[dbo].[FK_CourseSubmission]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Submissions] DROP CONSTRAINT [FK_CourseSubmission];
GO
IF OBJECT_ID(N'[dbo].[FK_StudentCourse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [FK_StudentCourse];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Students]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Students];
GO
IF OBJECT_ID(N'[dbo].[Teachers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Teachers];
GO
IF OBJECT_ID(N'[dbo].[Courses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Courses];
GO
IF OBJECT_ID(N'[dbo].[Assignments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Assignments];
GO
IF OBJECT_ID(N'[dbo].[CourseGrades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CourseGrades];
GO
IF OBJECT_ID(N'[dbo].[Attendances]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Attendances];
GO
IF OBJECT_ID(N'[dbo].[Submissions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Submissions];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Sem] int  NOT NULL
);
GO

-- Creating table 'Teachers'
CREATE TABLE [dbo].[Teachers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Courses'
CREATE TABLE [dbo].[Courses] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [CrHr] int  NOT NULL,
    [TeacherId] int  NOT NULL,
    [Student_Id] int  NOT NULL
);
GO

-- Creating table 'Assignments'
CREATE TABLE [dbo].[Assignments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [path] nvarchar(max)  NOT NULL,
    [CourseId] int  NOT NULL
);
GO

-- Creating table 'CourseGrades'
CREATE TABLE [dbo].[CourseGrades] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Marks] float  NOT NULL,
    [gpa] float  NOT NULL,
    [CSem] int  NOT NULL,
    [StudentId] int  NOT NULL,
    [CourseId] int  NOT NULL
);
GO

-- Creating table 'Attendances'
CREATE TABLE [dbo].[Attendances] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [Sem] int  NOT NULL,
    [Status] int  NOT NULL,
    [StudentId] int  NOT NULL
);
GO

-- Creating table 'Submissions'
CREATE TABLE [dbo].[Submissions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Path] nvarchar(max)  NOT NULL,
    [StudentId] int  NOT NULL,
    [TeacherId] int  NOT NULL,
    [CourseId] int  NOT NULL
);
GO

-- Creating table 'Admins'
CREATE TABLE [dbo].[Admins] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Teachers'
ALTER TABLE [dbo].[Teachers]
ADD CONSTRAINT [PK_Teachers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [PK_Courses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Assignments'
ALTER TABLE [dbo].[Assignments]
ADD CONSTRAINT [PK_Assignments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CourseGrades'
ALTER TABLE [dbo].[CourseGrades]
ADD CONSTRAINT [PK_CourseGrades]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [PK_Attendances]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Submissions'
ALTER TABLE [dbo].[Submissions]
ADD CONSTRAINT [PK_Submissions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Admins'
ALTER TABLE [dbo].[Admins]
ADD CONSTRAINT [PK_Admins]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [StudentId] in table 'Submissions'
ALTER TABLE [dbo].[Submissions]
ADD CONSTRAINT [FK_StudentSubmission]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentSubmission'
CREATE INDEX [IX_FK_StudentSubmission]
ON [dbo].[Submissions]
    ([StudentId]);
GO

-- Creating foreign key on [StudentId] in table 'Attendances'
ALTER TABLE [dbo].[Attendances]
ADD CONSTRAINT [FK_StudentAttendance]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentAttendance'
CREATE INDEX [IX_FK_StudentAttendance]
ON [dbo].[Attendances]
    ([StudentId]);
GO

-- Creating foreign key on [StudentId] in table 'CourseGrades'
ALTER TABLE [dbo].[CourseGrades]
ADD CONSTRAINT [FK_StudentCourseGrade]
    FOREIGN KEY ([StudentId])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentCourseGrade'
CREATE INDEX [IX_FK_StudentCourseGrade]
ON [dbo].[CourseGrades]
    ([StudentId]);
GO

-- Creating foreign key on [TeacherId] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [FK_TeacherCourse]
    FOREIGN KEY ([TeacherId])
    REFERENCES [dbo].[Teachers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TeacherCourse'
CREATE INDEX [IX_FK_TeacherCourse]
ON [dbo].[Courses]
    ([TeacherId]);
GO

-- Creating foreign key on [TeacherId] in table 'Submissions'
ALTER TABLE [dbo].[Submissions]
ADD CONSTRAINT [FK_TeacherSubmission]
    FOREIGN KEY ([TeacherId])
    REFERENCES [dbo].[Teachers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TeacherSubmission'
CREATE INDEX [IX_FK_TeacherSubmission]
ON [dbo].[Submissions]
    ([TeacherId]);
GO

-- Creating foreign key on [CourseId] in table 'Assignments'
ALTER TABLE [dbo].[Assignments]
ADD CONSTRAINT [FK_CourseAssignment]
    FOREIGN KEY ([CourseId])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseAssignment'
CREATE INDEX [IX_FK_CourseAssignment]
ON [dbo].[Assignments]
    ([CourseId]);
GO

-- Creating foreign key on [CourseId] in table 'CourseGrades'
ALTER TABLE [dbo].[CourseGrades]
ADD CONSTRAINT [FK_CourseCourseGrade]
    FOREIGN KEY ([CourseId])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseCourseGrade'
CREATE INDEX [IX_FK_CourseCourseGrade]
ON [dbo].[CourseGrades]
    ([CourseId]);
GO

-- Creating foreign key on [CourseId] in table 'Submissions'
ALTER TABLE [dbo].[Submissions]
ADD CONSTRAINT [FK_CourseSubmission]
    FOREIGN KEY ([CourseId])
    REFERENCES [dbo].[Courses]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CourseSubmission'
CREATE INDEX [IX_FK_CourseSubmission]
ON [dbo].[Submissions]
    ([CourseId]);
GO

-- Creating foreign key on [Student_Id] in table 'Courses'
ALTER TABLE [dbo].[Courses]
ADD CONSTRAINT [FK_StudentCourse]
    FOREIGN KEY ([Student_Id])
    REFERENCES [dbo].[Students]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StudentCourse'
CREATE INDEX [IX_FK_StudentCourse]
ON [dbo].[Courses]
    ([Student_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------