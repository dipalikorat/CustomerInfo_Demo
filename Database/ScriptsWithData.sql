USE [CustomerInfoDemo]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 25/02/2021 9:15:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CountryMaster] PRIMARY KEY CLUSTERED 
(
	[Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 25/02/2021 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[CustomerId] [nvarchar](36) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address1] [nvarchar](200) NOT NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Zip] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Notes] [nvarchar](4000) NULL,
	[AddDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_CustomerInfo] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 25/02/2021 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Afghanistan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Aland Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Albania')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Algeria')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'American Samoa')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Andorra')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Angola')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Anguilla')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Antarctica')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Antigua and Barbuda')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Argentina')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Armenia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Aruba')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Australia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Austria')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Azerbaijan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bahamas')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bahrain')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bangladesh')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Barbados')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Belarus')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Belgium')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Belize')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Benin')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bermuda')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bhutan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bolivia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bosnia and Herzegovina')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Botswana')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bouvet Island')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Brazil')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'British Indian Ocean Territory')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Brunei')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Bulgaria')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Burkina Faso')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Burundi')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cambodia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cameroon')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Canada')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cape Verde')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Caribbean Netherlands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cayman Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Central African Republic')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Chad')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Chile')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'China')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Christmas Island')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cocos (Keeling) Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Colombia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Comoros')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Congo')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Congo, Democratic Republic')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cook Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Costa Rica')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Côte d’Ivoire')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Croatia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cuba')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Curacao')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cyberbunker')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Cyprus')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Czech Republic')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Denmark')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Djibouti')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Dominica')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Dominican Republic')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'East Timor')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Ecuador')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Egypt')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'El Salvador')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Equatorial Guinea')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Eritrea')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Estonia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Ethiopia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'European Union')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Falkland Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Faroe Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Fiji Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Finland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'France')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'French Guiana')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'French Polynesia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'French Southern territories')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Gabon')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Gambia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Georgia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Germany')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Ghana')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Gibraltar')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Greece')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Greenland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Grenada')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guadeloupe')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guam')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guatemala')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guernsey')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guinea')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guinea-Bissau')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Guyana')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Haiti')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Heard Island and McDonald Islands')
GO
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Honduras')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Hong Kong')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Hungary')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Iceland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'India')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Indonesia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Iran')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Iraq')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Ireland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Isle of Man')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Israel')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Italy')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Jamaica')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Japan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Jersey')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Jordan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Kazakstan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Kenya')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Kiribati')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Kuwait')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Kyrgyzstan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Laos')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Latvia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Lebanon')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Lesotho')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Liberia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Libya')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Liechtenstein')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Lithuania')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Luxembourg')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Macao')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Macedonia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Madagascar')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Malawi')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Malaysia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Maldives')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mali')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Malta')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Marshall Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Martinique')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mauritania')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mauritius')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mayotte')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mexico')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Micronesia, Federated States')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Moldova')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Monaco')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mongolia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Montenegro')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Montserrat')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Morocco')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Mozambique')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Myanmar')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Namibia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Nauru')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Nepal')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Netherlands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Netherlands Antilles')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'New Caledonia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'New Zealand')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Nicaragua')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Niger')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Nigeria')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Niue')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Norfolk Island')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'North Korea')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Northern Mariana Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Norway')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Oman')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Pakistan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Palau')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Palestine')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Panama')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Papua New Guinea')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Paraguay')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Peru')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Philippines')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Pitcairn')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Poland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Portugal')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Puerto Rico')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Qatar')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Réunion')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Romania')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Russia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Rwanda')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Barthelemy')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Helena')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Kitts and Nevis')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Lucia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Martin')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Pierre and Miquelon')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saint Vincent and the Grenadines')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Samoa')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'San Marino')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Sao Tome and Principe')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Saudi Arabia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Senegal')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Serbia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Seychelles')
GO
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Sierra Leone')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Singapore')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Sint Maarten')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Slovakia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Slovenia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Solomon Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Somalia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'South Africa')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'South Georgia and the South Sandwich Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'South Korea')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'South Sudan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Spain')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Sri Lanka')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Sudan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Suriname')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Svalbard and Jan Mayen')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Swaziland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Sweden')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Switzerland')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Syria')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Taiwan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Tajikistan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Tanzania')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Thailand')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Togo')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Tokelau')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Tonga')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Trinidad and Tobago')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Tunisia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Turkey')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Turkmenistan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Turks and Caicos Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Tuvalu')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Uganda')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Ukraine')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'United Arab Emirates')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'United Kingdom')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'United States Minor Outlying Islands')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Uruguay')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'USA')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Uzbekistan')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Vanuatu')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Vatican (Holy See)')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Venezuela')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Vietnam')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Virgin Islands, British')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Virgin Islands, U.S.')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Wallis and Futuna')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Western Sahara')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Yemen')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Zambia')
INSERT [dbo].[CountryMaster] ([Country]) VALUES (N'Zimbabwe')
INSERT [dbo].[CustomerInfo] ([CustomerId], [FirstName], [LastName], [Address1], [Address2], [City], [State], [Country], [Zip], [Phone], [Email], [Notes], [AddDateTime]) VALUES (N'304AFCB2-02EB-4D60-B3E8-57ADCD344175', N'Boris', N'Johnson', N'123, Abc Street', N'Unit# 5', N'Markham', N'ON', N'Canada', N'ABABAB', N'111-222-3333', N'abc@abc.com', N'No notes', CAST(N'2021-02-26T02:02:16.433' AS DateTime))
INSERT [dbo].[CustomerInfo] ([CustomerId], [FirstName], [LastName], [Address1], [Address2], [City], [State], [Country], [Zip], [Phone], [Email], [Notes], [AddDateTime]) VALUES (N'C5D7734B-929F-4D06-A1B2-D9E39A3E8313', N'ABC', N'XYZ', N'5, Danview Ave', N'Unit 656', N'North York', N'ON', N'Canada', N'HOHOHO', N'123-123-1213', N'abc@xyz.com', N'Sample Customer record', CAST(N'2021-02-25T22:23:02.597' AS DateTime))
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_StateMaster]    Script Date: 25/02/2021 9:15:25 PM ******/
ALTER TABLE [dbo].[StateMaster] ADD  CONSTRAINT [IX_StateMaster] UNIQUE NONCLUSTERED 
(
	[State] ASC,
	[Country] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCustomerInfo]    Script Date: 25/02/2021 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Dipali Korat>
-- Create date: <2021-02-25>
-- Description:	<Get CustomerInfo>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetCustomerInfo] 

AS
BEGIN
	Select CustomerId, FirstName, LastName, 
	(Address1 + 
	Case When ISNULL(Address2,'') = '' Then '' Else ', ' + Address2 End +
	Case When ISNULL(City,'') = '' Then '' Else ', ' + City End +
	Case When ISNULL([State],'') = '' Then '' Else ', ' + [State] End+
	Case When ISNULL(Country,'') = '' Then '' Else ', ' + Country End +
	Case When ISNULL(Zip,'') = '' Then '' Else ', ' + Zip End) as Address, Phone, Email, Notes
	from CustomerInfo
	Order by AddDateTime desc
END

GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCustomerInfo]    Script Date: 25/02/2021 9:15:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Dipali Korat>
-- Create date: <2021-02-25>
-- Description:	<Insert record to CustomerInfoDemo>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertCustomerInfo] 
@FirstName nvarchar(50),
@LastName nvarchar(50), 
@Address1 nvarchar(200),
@Address2 nvarchar(200),
@City nvarchar(50),
@State nvarchar(50),
@Country nvarchar(50),
@Zip nvarchar(20), 
@Phone nvarchar(20),
@Email nvarchar(50),
@Notes nvarchar(4000)
AS
BEGIN
	INSERT INTO CustomerInfo(CustomerId, FirstName, LastName, Address1, Address2, City, State, Country, Zip, Phone, Email, Notes, AddDateTime)
		VALUES(NEWID(), @FirstName, @LastName,  @Address1, @Address2, @City, @State, @Country, @Zip, @Phone, @Email, @Notes, GETUTCDATE())
  return 
END

GO
