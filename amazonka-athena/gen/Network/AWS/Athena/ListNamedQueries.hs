{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Athena.ListNamedQueries
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides a list of available query IDs only for queries saved in the
-- specified workgroup. Requires that you have access to the specified
-- workgroup. If a workgroup is not specified, lists the saved queries for
-- the primary workgroup.
--
-- For code samples using the AWS SDK for Java, see
-- <http://docs.aws.amazon.com/athena/latest/ug/code-samples.html Examples and Code Samples>
-- in the /Amazon Athena User Guide/.
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListNamedQueries
  ( -- * Creating a Request
    ListNamedQueries (..),
    newListNamedQueries,

    -- * Request Lenses
    listNamedQueries_nextToken,
    listNamedQueries_maxResults,
    listNamedQueries_workGroup,

    -- * Destructuring the Response
    ListNamedQueriesResponse (..),
    newListNamedQueriesResponse,

    -- * Response Lenses
    listNamedQueriesResponse_namedQueryIds,
    listNamedQueriesResponse_nextToken,
    listNamedQueriesResponse_httpStatus,
  )
where

import Network.AWS.Athena.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListNamedQueries' smart constructor.
data ListNamedQueries = ListNamedQueries'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of queries to return in this request.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the workgroup from which the named queries are being
    -- returned. If a workgroup is not specified, the saved queries for the
    -- primary workgroup are returned.
    workGroup :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListNamedQueries' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNamedQueries_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'maxResults', 'listNamedQueries_maxResults' - The maximum number of queries to return in this request.
--
-- 'workGroup', 'listNamedQueries_workGroup' - The name of the workgroup from which the named queries are being
-- returned. If a workgroup is not specified, the saved queries for the
-- primary workgroup are returned.
newListNamedQueries ::
  ListNamedQueries
newListNamedQueries =
  ListNamedQueries'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      workGroup = Prelude.Nothing
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listNamedQueries_nextToken :: Lens.Lens' ListNamedQueries (Prelude.Maybe Prelude.Text)
listNamedQueries_nextToken = Lens.lens (\ListNamedQueries' {nextToken} -> nextToken) (\s@ListNamedQueries' {} a -> s {nextToken = a} :: ListNamedQueries)

-- | The maximum number of queries to return in this request.
listNamedQueries_maxResults :: Lens.Lens' ListNamedQueries (Prelude.Maybe Prelude.Natural)
listNamedQueries_maxResults = Lens.lens (\ListNamedQueries' {maxResults} -> maxResults) (\s@ListNamedQueries' {} a -> s {maxResults = a} :: ListNamedQueries)

-- | The name of the workgroup from which the named queries are being
-- returned. If a workgroup is not specified, the saved queries for the
-- primary workgroup are returned.
listNamedQueries_workGroup :: Lens.Lens' ListNamedQueries (Prelude.Maybe Prelude.Text)
listNamedQueries_workGroup = Lens.lens (\ListNamedQueries' {workGroup} -> workGroup) (\s@ListNamedQueries' {} a -> s {workGroup = a} :: ListNamedQueries)

instance Pager.AWSPager ListNamedQueries where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listNamedQueriesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listNamedQueriesResponse_namedQueryIds
              Prelude.. Lens._Just
              Prelude.. Lens.to Prelude.toList
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listNamedQueries_nextToken
          Lens..~ rs
          Lens.^? listNamedQueriesResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListNamedQueries where
  type Rs ListNamedQueries = ListNamedQueriesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListNamedQueriesResponse'
            Prelude.<$> (x Prelude..?> "NamedQueryIds")
            Prelude.<*> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListNamedQueries

instance Prelude.NFData ListNamedQueries

instance Prelude.ToHeaders ListNamedQueries where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonAthena.ListNamedQueries" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListNamedQueries where
  toJSON ListNamedQueries' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("WorkGroup" Prelude..=) Prelude.<$> workGroup
          ]
      )

instance Prelude.ToPath ListNamedQueries where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListNamedQueries where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListNamedQueriesResponse' smart constructor.
data ListNamedQueriesResponse = ListNamedQueriesResponse'
  { -- | The list of unique query IDs.
    namedQueryIds :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListNamedQueriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namedQueryIds', 'listNamedQueriesResponse_namedQueryIds' - The list of unique query IDs.
--
-- 'nextToken', 'listNamedQueriesResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'httpStatus', 'listNamedQueriesResponse_httpStatus' - The response's http status code.
newListNamedQueriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListNamedQueriesResponse
newListNamedQueriesResponse pHttpStatus_ =
  ListNamedQueriesResponse'
    { namedQueryIds =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of unique query IDs.
listNamedQueriesResponse_namedQueryIds :: Lens.Lens' ListNamedQueriesResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listNamedQueriesResponse_namedQueryIds = Lens.lens (\ListNamedQueriesResponse' {namedQueryIds} -> namedQueryIds) (\s@ListNamedQueriesResponse' {} a -> s {namedQueryIds = a} :: ListNamedQueriesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listNamedQueriesResponse_nextToken :: Lens.Lens' ListNamedQueriesResponse (Prelude.Maybe Prelude.Text)
listNamedQueriesResponse_nextToken = Lens.lens (\ListNamedQueriesResponse' {nextToken} -> nextToken) (\s@ListNamedQueriesResponse' {} a -> s {nextToken = a} :: ListNamedQueriesResponse)

-- | The response's http status code.
listNamedQueriesResponse_httpStatus :: Lens.Lens' ListNamedQueriesResponse Prelude.Int
listNamedQueriesResponse_httpStatus = Lens.lens (\ListNamedQueriesResponse' {httpStatus} -> httpStatus) (\s@ListNamedQueriesResponse' {} a -> s {httpStatus = a} :: ListNamedQueriesResponse)

instance Prelude.NFData ListNamedQueriesResponse
