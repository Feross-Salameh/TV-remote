CREATE TABLE [dbo].[tbl_actions_list]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Order] INT NULL, 
    [Device_ID] INT NOT NULL, 
    [Command_ID] INT NOT NULL, 
    [Action_ID] INT NOT NULL, 
    CONSTRAINT [FK_tbl_actions_list_ToTable] FOREIGN KEY ([Device_ID]) REFERENCES tbl_Devices(Id), 
    CONSTRAINT [FK_tbl_actions_list_ToTable_1] FOREIGN KEY ([Command_ID]) REFERENCES tbl_IR_commands(Id), 
    CONSTRAINT [FK_tbl_actions_list_ToTable_2] FOREIGN KEY ([Action_ID]) REFERENCES tbl_Actions(Id), 
)
