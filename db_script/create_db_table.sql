
/****** Script Date: 14-10-2020 15:24:42 ******/

/**CREATE PERSON TABLE**/

CREATE TABLE [dbo].[person](
	[id] INT IDENTITY(1, 1) NOT NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([id] ASC)
) ON [PRIMARY]

    
/** =====================================================================**/   

/**CREATE ADDRESS TABLE**/

CREATE TABLE [dbo].[address](
	[address_id] INT IDENTITY(1, 1) NOT NULL,
	[city] [varchar](255) NULL,
	[postal_code] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[street] [varchar](255) NULL,
	[id] INT  NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([address_id] ASC)
) ON [PRIMARY]


ALTER TABLE [dbo].[address]     
ADD CONSTRAINT FK_id FOREIGN KEY (id)     
    REFERENCES [dbo].[person] (id)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE  
    
/** =====================================================================**/   
     
/** =====================================================================**/    
/** hibernate_sequence TABLE**/

CREATE TABLE [dbo].[hibernate_sequence](
	[next_val] [numeric] (1, 0) NULL
) ON [PRIMARY]

    
/** =====================================================================**/   

   
