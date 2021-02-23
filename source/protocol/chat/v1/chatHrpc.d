module protocol.chat.v1.chatHrpc;
import protocol.chat.v1.chat;
import google.protobuf.empty;
import protocol.harmonytypes.v1.types;
import protocol.chat.v1.profile;
import protocol.chat.v1.guilds;
import protocol.chat.v1.channels;
import protocol.chat.v1.messages;
import protocol.chat.v1.emotes;
import protocol.chat.v1.permissions;
import protocol.chat.v1.streaming;
import protocol.chat.v1.postbox;
mixin Service!(
	"ChatService", "protocol.chat.v1",

	// "Unary", CreateGuildRequest, CreateGuildResponse, "CreateGuild",
	// "Unary", CreateInviteRequest, CreateInviteResponse, "CreateInvite",
	// "Unary", CreateChannelRequest, CreateChannelResponse, "CreateChannel",
	// "Unary", CreateEmotePackRequest, CreateEmotePackResponse, "CreateEmotePack",
	// "Unary", GetGuildListRequest, GetGuildListResponse, "GetGuildList",
	// "Unary", AddGuildToGuildListRequest, AddGuildToGuildListResponse, "AddGuildToGuildList",
	// "Unary", RemoveGuildFromGuildListRequest, RemoveGuildFromGuildListResponse, "RemoveGuildFromGuildList",
	// "Unary", GetGuildRequest, GetGuildResponse, "GetGuild",
	// "Unary", GetGuildInvitesRequest, GetGuildInvitesResponse, "GetGuildInvites",
	// "Unary", GetGuildMembersRequest, GetGuildMembersResponse, "GetGuildMembers",
	// "Unary", GetGuildChannelsRequest, GetGuildChannelsResponse, "GetGuildChannels",
	// "Unary", GetChannelMessagesRequest, GetChannelMessagesResponse, "GetChannelMessages",
	// "Unary", GetMessageRequest, GetMessageResponse, "GetMessage",
	// "Unary", GetEmotePacksRequest, GetEmotePacksResponse, "GetEmotePacks",
	// "Unary", GetEmotePackEmotesRequest, GetEmotePackEmotesResponse, "GetEmotePackEmotes",
	// "Unary", UpdateGuildInformationRequest, Empty, "UpdateGuildInformation",
	// "Unary", UpdateChannelInformationRequest, Empty, "UpdateChannelInformation",
	// "Unary", UpdateChannelOrderRequest, Empty, "UpdateChannelOrder",
	// "Unary", UpdateMessageRequest, Empty, "UpdateMessage",
	// "Unary", AddEmoteToPackRequest, Empty, "AddEmoteToPack",
	// "Unary", DeleteGuildRequest, Empty, "DeleteGuild",
	// "Unary", DeleteInviteRequest, Empty, "DeleteInvite",
	// "Unary", DeleteChannelRequest, Empty, "DeleteChannel",
	// "Unary", DeleteMessageRequest, Empty, "DeleteMessage",
	// "Unary", DeleteEmoteFromPackRequest, Empty, "DeleteEmoteFromPack",
	// "Unary", DeleteEmotePackRequest, Empty, "DeleteEmotePack",
	// "Unary", DequipEmotePackRequest, Empty, "DequipEmotePack",
	// "Unary", JoinGuildRequest, JoinGuildResponse, "JoinGuild",
	// "Unary", LeaveGuildRequest, Empty, "LeaveGuild",
	// "Unary", TriggerActionRequest, Empty, "TriggerAction",
	// "Unary", SendMessageRequest, SendMessageResponse, "SendMessage",
	// "Unary", QueryPermissionsRequest, QueryPermissionsResponse, "QueryHasPermission",
	// "Unary", SetPermissionsRequest, Empty, "SetPermissions",
	// "Unary", GetPermissionsRequest, GetPermissionsResponse, "GetPermissions",
	// "Unary", MoveRoleRequest, MoveRoleResponse, "MoveRole",
	// "Unary", GetGuildRolesRequest, GetGuildRolesResponse, "GetGuildRoles",
	// "Unary", AddGuildRoleRequest, AddGuildRoleResponse, "AddGuildRole",
	// "Unary", ModifyGuildRoleRequest, Empty, "ModifyGuildRole",
	// "Unary", DeleteGuildRoleRequest, Empty, "DeleteGuildRole",
	// "Unary", ManageUserRolesRequest, Empty, "ManageUserRoles",
	// "Unary", GetUserRolesRequest, GetUserRolesResponse, "GetUserRoles",
	// "Unary", GetUserRequest, GetUserResponse, "GetUser",
	// "Unary", GetUserMetadataRequest, GetUserMetadataResponse, "GetUserMetadata",
	// "Unary", ProfileUpdateRequest, Empty, "ProfileUpdate",
	// "Unary", TypingRequest, Empty, "Typing",
	// "Unary", PreviewGuildRequest, PreviewGuildResponse, "PreviewGuild",
);
import harmonytemplates.templates;
