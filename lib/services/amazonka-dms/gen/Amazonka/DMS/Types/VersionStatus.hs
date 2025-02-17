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
-- Module      : Amazonka.DMS.Types.VersionStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DMS.Types.VersionStatus
  ( VersionStatus
      ( ..,
        VersionStatus_OUTDATED,
        VersionStatus_UNSUPPORTED,
        VersionStatus_UP_TO_DATE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype VersionStatus = VersionStatus'
  { fromVersionStatus ::
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

pattern VersionStatus_OUTDATED :: VersionStatus
pattern VersionStatus_OUTDATED = VersionStatus' "OUTDATED"

pattern VersionStatus_UNSUPPORTED :: VersionStatus
pattern VersionStatus_UNSUPPORTED = VersionStatus' "UNSUPPORTED"

pattern VersionStatus_UP_TO_DATE :: VersionStatus
pattern VersionStatus_UP_TO_DATE = VersionStatus' "UP_TO_DATE"

{-# COMPLETE
  VersionStatus_OUTDATED,
  VersionStatus_UNSUPPORTED,
  VersionStatus_UP_TO_DATE,
  VersionStatus'
  #-}
