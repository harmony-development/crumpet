// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: chat/v1/streaming.proto

module protocol.chat.v1.streaming;

import google.protobuf;
import protocol.harmonytypes.v1.types;
import google.protobuf.timestamp;

enum protocVersion = 3012004;

class StreamEventsRequest
{
    enum RequestCase
    {
        requestNotSet = 0,
        subscribeToGuild = 1,
        subscribeToActions = 2,
        subscribeToHomeserverEvents = 3,
    }
    RequestCase _requestCase = RequestCase.requestNotSet;
    @property RequestCase requestCase() { return _requestCase; }
    void clearRequest() { _requestCase = RequestCase.requestNotSet; }
    @Oneof("_requestCase") union
    {
        @Proto(1) SubscribeToGuild _subscribeToGuild = protoDefaultValue!SubscribeToGuild; mixin(oneofAccessors!_subscribeToGuild);
        @Proto(2) SubscribeToActions _subscribeToActions; mixin(oneofAccessors!_subscribeToActions);
        @Proto(3) SubscribeToHomeserverEvents _subscribeToHomeserverEvents; mixin(oneofAccessors!_subscribeToHomeserverEvents);
    }

    static class SubscribeToGuild
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
    }

    static class SubscribeToActions
    {
    }

    static class SubscribeToHomeserverEvents
    {
    }
}

class Event
{
    enum EventCase
    {
        eventNotSet = 0,
        guildAddedToList = 1,
        guildRemovedFromList = 2,
        actionPerformed = 3,
        sentMessage = 4,
        editedMessage = 5,
        deletedMessage = 6,
        createdChannel = 7,
        editedChannel = 8,
        deletedChannel = 9,
        editedGuild = 10,
        deletedGuild = 11,
        joinedMember = 12,
        leftMember = 13,
        roleMoved = 14,
        profileUpdated = 15,
        typing = 16,
    }
    EventCase _eventCase = EventCase.eventNotSet;
    @property EventCase eventCase() { return _eventCase; }
    void clearEvent() { _eventCase = EventCase.eventNotSet; }
    @Oneof("_eventCase") union
    {
        @Proto(1) GuildAddedToList _guildAddedToList = protoDefaultValue!GuildAddedToList; mixin(oneofAccessors!_guildAddedToList);
        @Proto(2) GuildRemovedFromList _guildRemovedFromList; mixin(oneofAccessors!_guildRemovedFromList);
        @Proto(3) ActionPerformed _actionPerformed; mixin(oneofAccessors!_actionPerformed);
        @Proto(4) MessageSent _sentMessage; mixin(oneofAccessors!_sentMessage);
        @Proto(5) MessageUpdated _editedMessage; mixin(oneofAccessors!_editedMessage);
        @Proto(6) MessageDeleted _deletedMessage; mixin(oneofAccessors!_deletedMessage);
        @Proto(7) ChannelCreated _createdChannel; mixin(oneofAccessors!_createdChannel);
        @Proto(8) ChannelUpdated _editedChannel; mixin(oneofAccessors!_editedChannel);
        @Proto(9) ChannelDeleted _deletedChannel; mixin(oneofAccessors!_deletedChannel);
        @Proto(10) GuildUpdated _editedGuild; mixin(oneofAccessors!_editedGuild);
        @Proto(11) GuildDeleted _deletedGuild; mixin(oneofAccessors!_deletedGuild);
        @Proto(12) MemberJoined _joinedMember; mixin(oneofAccessors!_joinedMember);
        @Proto(13) MemberLeft _leftMember; mixin(oneofAccessors!_leftMember);
        @Proto(14) RoleMoved _roleMoved; mixin(oneofAccessors!_roleMoved);
        @Proto(15) ProfileUpdated _profileUpdated; mixin(oneofAccessors!_profileUpdated);
        @Proto(16) Typing _typing; mixin(oneofAccessors!_typing);
    }

    static class MessageSent
    {
        @Proto(1) ulong echoId = protoDefaultValue!ulong;
        @Proto(2) protocol.harmonytypes.v1.types.Message message = protoDefaultValue!(protocol.harmonytypes.v1.types.Message);
    }

    static class MessageUpdated
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong channelId = protoDefaultValue!ulong;
        @Proto(3) ulong messageId = protoDefaultValue!ulong;
        @Proto(4) Timestamp editedAt = protoDefaultValue!Timestamp;
        @Proto(5) string content = protoDefaultValue!string;
        @Proto(6) bool updateContent = protoDefaultValue!bool;
        @Proto(7) Embed[] embeds = protoDefaultValue!(Embed[]);
        @Proto(8) bool updateEmbeds = protoDefaultValue!bool;
        @Proto(9) Action[] actions = protoDefaultValue!(Action[]);
        @Proto(10) bool updateActions = protoDefaultValue!bool;
        @Proto(11) Attachment[] attachments = protoDefaultValue!(Attachment[]);
        @Proto(12) bool updateAttachments = protoDefaultValue!bool;
        @Proto(13) Override overrides = protoDefaultValue!Override;
        @Proto(14) bool updateOverrides = protoDefaultValue!bool;
        @Proto(15) Metadata metadata = protoDefaultValue!Metadata;
        @Proto(16) bool updateMetadata = protoDefaultValue!bool;
    }

    static class MessageDeleted
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong channelId = protoDefaultValue!ulong;
        @Proto(3) ulong messageId = protoDefaultValue!ulong;
    }

    static class ChannelCreated
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong channelId = protoDefaultValue!ulong;
        @Proto(3) string name = protoDefaultValue!string;
        @Proto(4) ulong previousId = protoDefaultValue!ulong;
        @Proto(5) ulong nextId = protoDefaultValue!ulong;
        @Proto(6) bool isCategory = protoDefaultValue!bool;
        @Proto(7) Metadata metadata = protoDefaultValue!Metadata;
    }

    static class ChannelUpdated
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong channelId = protoDefaultValue!ulong;
        @Proto(3) string name = protoDefaultValue!string;
        @Proto(4) bool updateName = protoDefaultValue!bool;
        @Proto(5) ulong previousId = protoDefaultValue!ulong;
        @Proto(6) ulong nextId = protoDefaultValue!ulong;
        @Proto(7) bool updateOrder = protoDefaultValue!bool;
        @Proto(8) Metadata metadata = protoDefaultValue!Metadata;
        @Proto(9) bool updateMetadata = protoDefaultValue!bool;
    }

    static class ChannelDeleted
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong channelId = protoDefaultValue!ulong;
    }

    static class GuildUpdated
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) string name = protoDefaultValue!string;
        @Proto(3) bool updateName = protoDefaultValue!bool;
        @Proto(4) string picture = protoDefaultValue!string;
        @Proto(5) bool updatePicture = protoDefaultValue!bool;
        @Proto(6) Metadata metadata = protoDefaultValue!Metadata;
        @Proto(7) bool updateMetadata = protoDefaultValue!bool;
    }

    static class GuildDeleted
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
    }

    static class MemberJoined
    {
        @Proto(1) ulong memberId = protoDefaultValue!ulong;
        @Proto(2) ulong guildId = protoDefaultValue!ulong;
    }

    static class MemberLeft
    {
        @Proto(1) ulong memberId = protoDefaultValue!ulong;
        @Proto(2) ulong guildId = protoDefaultValue!ulong;
    }

    static class GuildAddedToList
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) string homeserver = protoDefaultValue!string;
    }

    static class GuildRemovedFromList
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) string homeserver = protoDefaultValue!string;
    }

    static class ActionPerformed
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong channelId = protoDefaultValue!ulong;
        @Proto(3) ulong messageId = protoDefaultValue!ulong;
        @Proto(4) string actionId = protoDefaultValue!string;
        @Proto(5) string actionData = protoDefaultValue!string;
    }

    static class RoleMoved
    {
        @Proto(1) ulong guildId = protoDefaultValue!ulong;
        @Proto(2) ulong roleId = protoDefaultValue!ulong;
    }

    static class ProfileUpdated
    {
        @Proto(1) ulong userId = protoDefaultValue!ulong;
        @Proto(2) string newUsername = protoDefaultValue!string;
        @Proto(3) bool updateUsername = protoDefaultValue!bool;
        @Proto(4) string newAvatar = protoDefaultValue!string;
        @Proto(5) bool updateAvatar = protoDefaultValue!bool;
        @Proto(6) UserStatus newStatus = protoDefaultValue!UserStatus;
        @Proto(7) bool updateStatus = protoDefaultValue!bool;
        @Proto(8) bool isBot = protoDefaultValue!bool;
        @Proto(9) bool updateIsBot = protoDefaultValue!bool;
    }

    static class Typing
    {
        @Proto(1) ulong userId = protoDefaultValue!ulong;
        @Proto(2) ulong guildId = protoDefaultValue!ulong;
        @Proto(3) ulong channelId = protoDefaultValue!ulong;
    }
}
import harmonytemplates.templates;
