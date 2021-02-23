import std.stdio;
import protocol.harmonytypes.v1.types;
import protocol.mediaproxy.v1.mediaproxy;
import protocol.chat.v1.chat;
import protocol.chat.v1.guilds;
import google.protobuf;
import std.range;
import harmonytemplates.templates;
import protocol.chat.v1.messages;

void main()
{
	ubyte[] mun;
	GetChannelMessagesResponse pb = fromProtobuf!GetChannelMessagesResponse(mun);
	auto test = toProtobuf!GetChannelMessagesResponse(pb);

	// static assert(isProtobuf!GetChannelMessagesResponse);

	protocol.harmonytypes.v1.types.Action mu = new protocol.harmonytypes.v1.types.Action;
	mu.text = "";

	writeln("Edit source/app.d to start your project.");
}
