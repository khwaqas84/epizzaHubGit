﻿CREATE TABLE [dbo].[UserRoles] (
    [UserId] INT NOT NULL,
    [RoleId] INT NOT NULL,
    CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED ([UserId] ASC, [RoleId] ASC),
    CONSTRAINT [FK_UserRoles_Roles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Roles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_UserRoles_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]) ON DELETE CASCADE
);

