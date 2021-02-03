import std.stdio;
import protocol.harmonytypes.v1.types;
import protocol.mediaproxy.v1.mediaproxy;
import protocol.chat.v1.chat;
import protocol.chat.v1.guilds;
import google.protobuf;
import std.range;
import harmonytemplates.templates;

void main()
{
	protocol.harmonytypes.v1.types.Action mu = new protocol.harmonytypes.v1.types.Action;
	mu.text = "";

	writeln("Edit source/app.d to start your project.");
}
