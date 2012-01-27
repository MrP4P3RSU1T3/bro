# @TEST-EXEC: BROFILER_FILE=coverage bro -b %INPUT
# @TEST-EXEC: grep %INPUT coverage | sort -k2 >output
# @TEST-EXEC: btest-diff output

print "first";

if ( F )
	{ # @no-test
	print "hello";
	print "world";
	}

print "cover me";

if ( T )
	{
	print "always executed";
	}

print "don't cover me"; # @no-test

if ( 0 + 0 == 1 ) print "impossible"; # @no-test

if ( 1 == 0 )
	{
	print "also impossible, but included in code coverage analysis";
	}

print "success";