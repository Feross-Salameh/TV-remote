CREATE TABLE [dbo].[tbl_IR_commands]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Action] NCHAR(10) NOT NULL, 
    [code] VARCHAR(MAX) NOT NULL, 
    [Header] NCHAR(10) NULL, 
    [Hertz ] INT NULL DEFAULT 50000, 
    [Device_ID] INT NOT NULL, 
    CONSTRAINT [FK_tbl_IR_commands_ToTable] FOREIGN KEY ([Device_ID]) REFERENCES tbl_Devices(ID) 
)
