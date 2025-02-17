{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.KinesisAnalytics.Types.CloudWatchLoggingOptionDescription
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KinesisAnalytics.Types.CloudWatchLoggingOptionDescription where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Description of the CloudWatch logging option.
--
-- /See:/ 'newCloudWatchLoggingOptionDescription' smart constructor.
data CloudWatchLoggingOptionDescription = CloudWatchLoggingOptionDescription'
  { -- | ID of the CloudWatch logging option description.
    cloudWatchLoggingOptionId :: Prelude.Maybe Prelude.Text,
    -- | ARN of the CloudWatch log to receive application messages.
    logStreamARN :: Prelude.Text,
    -- | IAM ARN of the role to use to send application messages. Note: To write
    -- application messages to CloudWatch, the IAM role used must have the
    -- @PutLogEvents@ policy action enabled.
    roleARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLoggingOptionDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchLoggingOptionId', 'cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId' - ID of the CloudWatch logging option description.
--
-- 'logStreamARN', 'cloudWatchLoggingOptionDescription_logStreamARN' - ARN of the CloudWatch log to receive application messages.
--
-- 'roleARN', 'cloudWatchLoggingOptionDescription_roleARN' - IAM ARN of the role to use to send application messages. Note: To write
-- application messages to CloudWatch, the IAM role used must have the
-- @PutLogEvents@ policy action enabled.
newCloudWatchLoggingOptionDescription ::
  -- | 'logStreamARN'
  Prelude.Text ->
  -- | 'roleARN'
  Prelude.Text ->
  CloudWatchLoggingOptionDescription
newCloudWatchLoggingOptionDescription
  pLogStreamARN_
  pRoleARN_ =
    CloudWatchLoggingOptionDescription'
      { cloudWatchLoggingOptionId =
          Prelude.Nothing,
        logStreamARN = pLogStreamARN_,
        roleARN = pRoleARN_
      }

-- | ID of the CloudWatch logging option description.
cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId :: Lens.Lens' CloudWatchLoggingOptionDescription (Prelude.Maybe Prelude.Text)
cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId = Lens.lens (\CloudWatchLoggingOptionDescription' {cloudWatchLoggingOptionId} -> cloudWatchLoggingOptionId) (\s@CloudWatchLoggingOptionDescription' {} a -> s {cloudWatchLoggingOptionId = a} :: CloudWatchLoggingOptionDescription)

-- | ARN of the CloudWatch log to receive application messages.
cloudWatchLoggingOptionDescription_logStreamARN :: Lens.Lens' CloudWatchLoggingOptionDescription Prelude.Text
cloudWatchLoggingOptionDescription_logStreamARN = Lens.lens (\CloudWatchLoggingOptionDescription' {logStreamARN} -> logStreamARN) (\s@CloudWatchLoggingOptionDescription' {} a -> s {logStreamARN = a} :: CloudWatchLoggingOptionDescription)

-- | IAM ARN of the role to use to send application messages. Note: To write
-- application messages to CloudWatch, the IAM role used must have the
-- @PutLogEvents@ policy action enabled.
cloudWatchLoggingOptionDescription_roleARN :: Lens.Lens' CloudWatchLoggingOptionDescription Prelude.Text
cloudWatchLoggingOptionDescription_roleARN = Lens.lens (\CloudWatchLoggingOptionDescription' {roleARN} -> roleARN) (\s@CloudWatchLoggingOptionDescription' {} a -> s {roleARN = a} :: CloudWatchLoggingOptionDescription)

instance
  Data.FromJSON
    CloudWatchLoggingOptionDescription
  where
  parseJSON =
    Data.withObject
      "CloudWatchLoggingOptionDescription"
      ( \x ->
          CloudWatchLoggingOptionDescription'
            Prelude.<$> (x Data..:? "CloudWatchLoggingOptionId")
            Prelude.<*> (x Data..: "LogStreamARN")
            Prelude.<*> (x Data..: "RoleARN")
      )

instance
  Prelude.Hashable
    CloudWatchLoggingOptionDescription
  where
  hashWithSalt
    _salt
    CloudWatchLoggingOptionDescription' {..} =
      _salt
        `Prelude.hashWithSalt` cloudWatchLoggingOptionId
        `Prelude.hashWithSalt` logStreamARN
        `Prelude.hashWithSalt` roleARN

instance
  Prelude.NFData
    CloudWatchLoggingOptionDescription
  where
  rnf CloudWatchLoggingOptionDescription' {..} =
    Prelude.rnf cloudWatchLoggingOptionId
      `Prelude.seq` Prelude.rnf logStreamARN
      `Prelude.seq` Prelude.rnf roleARN
