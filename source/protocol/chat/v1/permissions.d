// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: chat/v1/permissions.proto

module protocol.chat.v1.permissions;

import google.protobuf;

enum protocVersion = 3012004;

class QueryPermissionsRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong channelId = protoDefaultValue!ulong;
    @Proto(3) string checkFor = protoDefaultValue!string;
    @Proto(4) ulong as = protoDefaultValue!ulong;
}

class QueryPermissionsResponse
{
    @Proto(1) bool ok = protoDefaultValue!bool;
}

class Permission
{
    @Proto(1) string matches = protoDefaultValue!string;
    @Proto(2) Mode mode = protoDefaultValue!Mode;

    enum Mode
    {
        Allow = 0,
        Deny = 1,
    }
}

class PermissionList
{
    @Proto(1) Permission[] permissions = protoDefaultValue!(Permission[]);
}

class SetPermissionsRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong channelId = protoDefaultValue!ulong;
    @Proto(3) ulong roleId = protoDefaultValue!ulong;
    @Proto(4) PermissionList perms = protoDefaultValue!PermissionList;
}

class GetPermissionsRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong channelId = protoDefaultValue!ulong;
    @Proto(3) ulong roleId = protoDefaultValue!ulong;
}

class GetPermissionsResponse
{
    @Proto(1) PermissionList perms = protoDefaultValue!PermissionList;
}

class Role
{
    @Proto(1) ulong roleId = protoDefaultValue!ulong;
    @Proto(2) string name = protoDefaultValue!string;
    @Proto(3) int color = protoDefaultValue!int;
    @Proto(4) bool hoist = protoDefaultValue!bool;
    @Proto(5) bool pingable = protoDefaultValue!bool;
}

class MoveRoleRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong roleId = protoDefaultValue!ulong;
    @Proto(3) ulong beforeId = protoDefaultValue!ulong;
    @Proto(4) ulong afterId = protoDefaultValue!ulong;
}

class MoveRoleResponse
{
}

class GetGuildRolesRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
}

class GetGuildRolesResponse
{
    @Proto(1) Role[] roles = protoDefaultValue!(Role[]);
}

class AddGuildRoleRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) Role role = protoDefaultValue!Role;
}

class AddGuildRoleResponse
{
    @Proto(1) ulong roleId = protoDefaultValue!ulong;
}

class DeleteGuildRoleRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong roleId = protoDefaultValue!ulong;
}

class ModifyGuildRoleRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) Role role = protoDefaultValue!Role;
    @Proto(3) bool modifyName = protoDefaultValue!bool;
    @Proto(4) bool modifyColor = protoDefaultValue!bool;
    @Proto(5) bool modifyHoist = protoDefaultValue!bool;
    @Proto(6) bool modifyPingable = protoDefaultValue!bool;
}

class ManageUserRolesRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong userId = protoDefaultValue!ulong;
    @Proto(3) ulong[] giveRoleIds = protoDefaultValue!(ulong[]);
    @Proto(4) ulong[] takeRoleIds = protoDefaultValue!(ulong[]);
}

class GetUserRolesRequest
{
    @Proto(1) ulong guildId = protoDefaultValue!ulong;
    @Proto(2) ulong userId = protoDefaultValue!ulong;
}

class GetUserRolesResponse
{
    @Proto(1) ulong[] roles = protoDefaultValue!(ulong[]);
}
import harmonytemplates.templates;
