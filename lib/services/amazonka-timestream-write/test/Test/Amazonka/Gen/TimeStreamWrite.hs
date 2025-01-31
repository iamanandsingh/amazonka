{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.Amazonka.Gen.TimeStreamWrite
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.Amazonka.Gen.TimeStreamWrite where

import Amazonka.TimeStreamWrite
import qualified Data.Proxy as Proxy
import Test.Amazonka.Fixture
import Test.Amazonka.Prelude
import Test.Amazonka.TimeStreamWrite.Internal
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestCreateDatabase $
--             newCreateDatabase
--
--         , requestCreateTable $
--             newCreateTable
--
--         , requestDeleteDatabase $
--             newDeleteDatabase
--
--         , requestDeleteTable $
--             newDeleteTable
--
--         , requestDescribeDatabase $
--             newDescribeDatabase
--
--         , requestDescribeEndpoints $
--             newDescribeEndpoints
--
--         , requestDescribeTable $
--             newDescribeTable
--
--         , requestListDatabases $
--             newListDatabases
--
--         , requestListTables $
--             newListTables
--
--         , requestListTagsForResource $
--             newListTagsForResource
--
--         , requestTagResource $
--             newTagResource
--
--         , requestUntagResource $
--             newUntagResource
--
--         , requestUpdateDatabase $
--             newUpdateDatabase
--
--         , requestUpdateTable $
--             newUpdateTable
--
--         , requestWriteRecords $
--             newWriteRecords
--
--           ]

--     , testGroup "response"
--         [ responseCreateDatabase $
--             newCreateDatabaseResponse
--
--         , responseCreateTable $
--             newCreateTableResponse
--
--         , responseDeleteDatabase $
--             newDeleteDatabaseResponse
--
--         , responseDeleteTable $
--             newDeleteTableResponse
--
--         , responseDescribeDatabase $
--             newDescribeDatabaseResponse
--
--         , responseDescribeEndpoints $
--             newDescribeEndpointsResponse
--
--         , responseDescribeTable $
--             newDescribeTableResponse
--
--         , responseListDatabases $
--             newListDatabasesResponse
--
--         , responseListTables $
--             newListTablesResponse
--
--         , responseListTagsForResource $
--             newListTagsForResourceResponse
--
--         , responseTagResource $
--             newTagResourceResponse
--
--         , responseUntagResource $
--             newUntagResourceResponse
--
--         , responseUpdateDatabase $
--             newUpdateDatabaseResponse
--
--         , responseUpdateTable $
--             newUpdateTableResponse
--
--         , responseWriteRecords $
--             newWriteRecordsResponse
--
--           ]
--     ]

-- Requests

requestCreateDatabase :: CreateDatabase -> TestTree
requestCreateDatabase =
  req
    "CreateDatabase"
    "fixture/CreateDatabase.yaml"

requestCreateTable :: CreateTable -> TestTree
requestCreateTable =
  req
    "CreateTable"
    "fixture/CreateTable.yaml"

requestDeleteDatabase :: DeleteDatabase -> TestTree
requestDeleteDatabase =
  req
    "DeleteDatabase"
    "fixture/DeleteDatabase.yaml"

requestDeleteTable :: DeleteTable -> TestTree
requestDeleteTable =
  req
    "DeleteTable"
    "fixture/DeleteTable.yaml"

requestDescribeDatabase :: DescribeDatabase -> TestTree
requestDescribeDatabase =
  req
    "DescribeDatabase"
    "fixture/DescribeDatabase.yaml"

requestDescribeEndpoints :: DescribeEndpoints -> TestTree
requestDescribeEndpoints =
  req
    "DescribeEndpoints"
    "fixture/DescribeEndpoints.yaml"

requestDescribeTable :: DescribeTable -> TestTree
requestDescribeTable =
  req
    "DescribeTable"
    "fixture/DescribeTable.yaml"

requestListDatabases :: ListDatabases -> TestTree
requestListDatabases =
  req
    "ListDatabases"
    "fixture/ListDatabases.yaml"

requestListTables :: ListTables -> TestTree
requestListTables =
  req
    "ListTables"
    "fixture/ListTables.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestUpdateDatabase :: UpdateDatabase -> TestTree
requestUpdateDatabase =
  req
    "UpdateDatabase"
    "fixture/UpdateDatabase.yaml"

requestUpdateTable :: UpdateTable -> TestTree
requestUpdateTable =
  req
    "UpdateTable"
    "fixture/UpdateTable.yaml"

requestWriteRecords :: WriteRecords -> TestTree
requestWriteRecords =
  req
    "WriteRecords"
    "fixture/WriteRecords.yaml"

-- Responses

responseCreateDatabase :: CreateDatabaseResponse -> TestTree
responseCreateDatabase =
  res
    "CreateDatabaseResponse"
    "fixture/CreateDatabaseResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateDatabase)

responseCreateTable :: CreateTableResponse -> TestTree
responseCreateTable =
  res
    "CreateTableResponse"
    "fixture/CreateTableResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy CreateTable)

responseDeleteDatabase :: DeleteDatabaseResponse -> TestTree
responseDeleteDatabase =
  res
    "DeleteDatabaseResponse"
    "fixture/DeleteDatabaseResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteDatabase)

responseDeleteTable :: DeleteTableResponse -> TestTree
responseDeleteTable =
  res
    "DeleteTableResponse"
    "fixture/DeleteTableResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DeleteTable)

responseDescribeDatabase :: DescribeDatabaseResponse -> TestTree
responseDescribeDatabase =
  res
    "DescribeDatabaseResponse"
    "fixture/DescribeDatabaseResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeDatabase)

responseDescribeEndpoints :: DescribeEndpointsResponse -> TestTree
responseDescribeEndpoints =
  res
    "DescribeEndpointsResponse"
    "fixture/DescribeEndpointsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeEndpoints)

responseDescribeTable :: DescribeTableResponse -> TestTree
responseDescribeTable =
  res
    "DescribeTableResponse"
    "fixture/DescribeTableResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy DescribeTable)

responseListDatabases :: ListDatabasesResponse -> TestTree
responseListDatabases =
  res
    "ListDatabasesResponse"
    "fixture/ListDatabasesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListDatabases)

responseListTables :: ListTablesResponse -> TestTree
responseListTables =
  res
    "ListTablesResponse"
    "fixture/ListTablesResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTables)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy ListTagsForResource)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy TagResource)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UntagResource)

responseUpdateDatabase :: UpdateDatabaseResponse -> TestTree
responseUpdateDatabase =
  res
    "UpdateDatabaseResponse"
    "fixture/UpdateDatabaseResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateDatabase)

responseUpdateTable :: UpdateTableResponse -> TestTree
responseUpdateTable =
  res
    "UpdateTableResponse"
    "fixture/UpdateTableResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy UpdateTable)

responseWriteRecords :: WriteRecordsResponse -> TestTree
responseWriteRecords =
  res
    "WriteRecordsResponse"
    "fixture/WriteRecordsResponse.proto"
    defaultService
    (Proxy.Proxy :: Proxy.Proxy WriteRecords)
