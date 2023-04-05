CREATE TABLE [productines] (
  [productLine] int PRIMARY KEY,
  [textDescription] nvarchar(255),
  [htmlDescription] nvarchar(255),
  [image] nvarchar(255)
)
GO

CREATE TABLE [products] (
  [productCode] int PRIMARY KEY,
  [productName] nvarchar(255),
  [productLine] nvarchar(255),
  [productScale] nvarchar(255),
  [productVendor] nvarchar(255),
  [productDescription] nvarchar(255),
  [quatitylnStock] nvarchar(255),
  [buyPrice] nvarchar(255),
  [MSRP] nvarchar(255)
)
GO

CREATE TABLE [orderdetails] (
  [oerderNumber] int PRIMARY KEY,
  [productCode] int,
  [quantityOrdered] nvarchar(255),
  [priceEach] nvarchar(255),
  [orderLineNumber] nvarchar(255)
)
GO

CREATE TABLE [employees] (
  [employeNumber] int PRIMARY KEY,
  [lastName] nvarchar(255),
  [firstName] nvarchar(255),
  [extension] nvarchar(255),
  [email] nvarchar(255),
  [officeCode] nvarchar(255),
  [reportsTo] nvarchar(255),
  [jobTitle] nvarchar(255)
)
GO

CREATE TABLE [customers] (
  [customerNumber] int PRIMARY KEY,
  [customerName] nvarchar(255),
  [contactLastName] nvarchar(255),
  [contactFirstName] nvarchar(255),
  [phone] nvarchar(255),
  [addresLine1] nvarchar(255),
  [addresLine2] nvarchar(255),
  [city] nvarchar(255),
  [state] nvarchar(255),
  [postalCode] nvarchar(255),
  [country] nvarchar(255),
  [salesRepEmployeeNumber] nvarchar(255),
  [creditLimit] nvarchar(255)
)
GO

CREATE TABLE [orders] (
  [orderNumber] int PRIMARY KEY,
  [orderDate] nvarchar(255),
  [requiredDate] nvarchar(255),
  [shippedDate] nvarchar(255),
  [status] nvarchar(255),
  [comments] nvarchar(255),
  [costomerNumber] nvarchar(255)
)
GO

CREATE TABLE [offices] (
  [officeCode] int PRIMARY KEY,
  [city] nvarchar(255),
  [phone] nvarchar(255),
  [addresLine1] nvarchar(255),
  [addresLine2] nvarchar(255),
  [state] nvarchar(255),
  [country] nvarchar(255),
  [postalCode] nvarchar(255),
  [territory] nvarchar(255)
)
GO

CREATE TABLE [payments] (
  [customerNumber] int PRIMARY KEY,
  [checkNumber] int,
  [paymentDate] nvarchar(255),
  [amount] nvarchar(255)
)
GO
