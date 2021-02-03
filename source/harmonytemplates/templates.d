module harmonytemplates.templates;

import google.protobuf;

template isProtobuf(T)
{
	const isProtobuf = __traits(compiles, (T t) {
		ubyte[] mun;
		T pb = fromProtobuf!T(mun);
		auto test = toProtobuf!T(pb);
	});
}

mixin template UnaryRequest(Input, Output, string Item, string Package, string Service)
	if (isProtobuf!Input && isProtobuf!Output)
{
	mixin(q{
		Output } ~ Item ~ q{ (Input a) {
			return new Output;
		}
	});
}

mixin template Request(string Kind, Input, Output, string Item, string Package, string Service)
{
	static if (Kind == "Unary") {
		mixin UnaryRequest!(Input, Output, Item, Package, Service);
	} else {
		static assert(false);
	}
}

mixin template Service(string Name, string Package, args...)
	if ((args.length%4) == 0)
{
	mixin(q{
		class } ~ Name ~ q{
		{
		import std.range;

		static foreach(i; 0 .. (args.length / 4))
		{
			mixin Request!(args[(i*4)], args[(i*4)+1], args[(i*4)+2], args[(i*4)+3], Package, Name);
		}
		}
	});
}

