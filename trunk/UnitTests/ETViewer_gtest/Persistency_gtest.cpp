// Persistency_gtest.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <gtest/gtest.h>
#include "Persistency.h"
#include "ConfigFile.h"

// Small structure that exposes two persistent fields
struct STestData
{
    int             value;
    std::tstring    text;

    BEGIN_PERSIST_MAP(STestData)
        PERSIST(value, _T("Value"))
        PERSIST(text,  _T("Text"))
    END_PERSIST_MAP();
};

// Verify that data can be saved and loaded through the persistency helpers
TEST(Persistency, SaveLoadRoundTrip)
{
    // create and fill the structure
    STestData original;
    original.value = 42;
    original.text  = _T("Hello");

    // use an in-memory config file as backing store
    CConfigFile file;

    // save data
    ASSERT_EQ(S_OK, original.PersistencySave(file.GetRoot()));

    // load into a new instance
    STestData loaded;
    loaded.value = 0;
    loaded.text  = _T("");
    ASSERT_EQ(S_OK, loaded.PersistencyLoad(file.GetRoot()));

    // verify round trip values
    EXPECT_EQ(original.value, loaded.value);
    EXPECT_STREQ(original.text.c_str(), loaded.text.c_str());
}
