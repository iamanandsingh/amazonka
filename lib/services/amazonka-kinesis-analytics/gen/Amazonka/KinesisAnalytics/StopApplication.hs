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
-- Module      : Amazonka.KinesisAnalytics.StopApplication
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This documentation is for version 1 of the Amazon Kinesis Data Analytics
-- API, which only supports SQL applications. Version 2 of the API supports
-- SQL and Java applications. For more information about version 2, see
-- </kinesisanalytics/latest/apiv2/Welcome.html Amazon Kinesis Data Analytics API V2 Documentation>.
--
-- Stops the application from processing input data. You can stop an
-- application only if it is in the running state. You can use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to find the application state. After the application is
-- stopped, Amazon Kinesis Analytics stops reading data from the input, the
-- application stops processing data, and there is no output written to the
-- destination.
--
-- This operation requires permissions to perform the
-- @kinesisanalytics:StopApplication@ action.
module Amazonka.KinesisAnalytics.StopApplication
  ( -- * Creating a Request
    StopApplication (..),
    newStopApplication,

    -- * Request Lenses
    stopApplication_applicationName,

    -- * Destructuring the Response
    StopApplicationResponse (..),
    newStopApplicationResponse,

    -- * Response Lenses
    stopApplicationResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.KinesisAnalytics.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newStopApplication' smart constructor.
data StopApplication = StopApplication'
  { -- | Name of the running application to stop.
    applicationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopApplication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'stopApplication_applicationName' - Name of the running application to stop.
newStopApplication ::
  -- | 'applicationName'
  Prelude.Text ->
  StopApplication
newStopApplication pApplicationName_ =
  StopApplication'
    { applicationName =
        pApplicationName_
    }

-- | Name of the running application to stop.
stopApplication_applicationName :: Lens.Lens' StopApplication Prelude.Text
stopApplication_applicationName = Lens.lens (\StopApplication' {applicationName} -> applicationName) (\s@StopApplication' {} a -> s {applicationName = a} :: StopApplication)

instance Core.AWSRequest StopApplication where
  type
    AWSResponse StopApplication =
      StopApplicationResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveEmpty
      ( \s h x ->
          StopApplicationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopApplication where
  hashWithSalt _salt StopApplication' {..} =
    _salt `Prelude.hashWithSalt` applicationName

instance Prelude.NFData StopApplication where
  rnf StopApplication' {..} =
    Prelude.rnf applicationName

instance Data.ToHeaders StopApplication where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "KinesisAnalytics_20150814.StopApplication" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON StopApplication where
  toJSON StopApplication' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ApplicationName" Data..= applicationName)
          ]
      )

instance Data.ToPath StopApplication where
  toPath = Prelude.const "/"

instance Data.ToQuery StopApplication where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newStopApplicationResponse' smart constructor.
data StopApplicationResponse = StopApplicationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopApplicationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'stopApplicationResponse_httpStatus' - The response's http status code.
newStopApplicationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopApplicationResponse
newStopApplicationResponse pHttpStatus_ =
  StopApplicationResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
stopApplicationResponse_httpStatus :: Lens.Lens' StopApplicationResponse Prelude.Int
stopApplicationResponse_httpStatus = Lens.lens (\StopApplicationResponse' {httpStatus} -> httpStatus) (\s@StopApplicationResponse' {} a -> s {httpStatus = a} :: StopApplicationResponse)

instance Prelude.NFData StopApplicationResponse where
  rnf StopApplicationResponse' {..} =
    Prelude.rnf httpStatus
