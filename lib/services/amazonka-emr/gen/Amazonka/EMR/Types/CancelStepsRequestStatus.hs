{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EMR.Types.CancelStepsRequestStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMR.Types.CancelStepsRequestStatus
  ( CancelStepsRequestStatus
      ( ..,
        CancelStepsRequestStatus_FAILED,
        CancelStepsRequestStatus_SUBMITTED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype CancelStepsRequestStatus = CancelStepsRequestStatus'
  { fromCancelStepsRequestStatus ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern CancelStepsRequestStatus_FAILED :: CancelStepsRequestStatus
pattern CancelStepsRequestStatus_FAILED = CancelStepsRequestStatus' "FAILED"

pattern CancelStepsRequestStatus_SUBMITTED :: CancelStepsRequestStatus
pattern CancelStepsRequestStatus_SUBMITTED = CancelStepsRequestStatus' "SUBMITTED"

{-# COMPLETE
  CancelStepsRequestStatus_FAILED,
  CancelStepsRequestStatus_SUBMITTED,
  CancelStepsRequestStatus'
  #-}
