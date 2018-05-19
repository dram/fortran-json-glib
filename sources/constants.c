#include <json-glib/json-glib.h>
#include <stdio.h>

#define INT_PARAMETER "integer(c_int), parameter :: "

int main(void)
{
	printf(INT_PARAMETER
	       "json_major_version = %d\n", JSON_MAJOR_VERSION);

	return 0;
}
