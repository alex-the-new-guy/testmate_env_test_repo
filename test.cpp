#include <catch2/catch_test_macros.hpp>

#include "dll.h"

TEST_CASE("Test1")
{
  REQUIRE(1 == 0);
}

TEST_CASE("Test2")
{
  REQUIRE(0 == 0);
}



#ifdef DLL_TEST
TEST_CASE("DLL_TEST")
{
  REQUIRE(add(1, 2) == 3);
}


#endif







