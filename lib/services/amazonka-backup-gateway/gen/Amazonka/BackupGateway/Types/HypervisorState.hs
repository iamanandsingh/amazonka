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
-- Module      : Amazonka.BackupGateway.Types.HypervisorState
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BackupGateway.Types.HypervisorState
  ( HypervisorState
      ( ..,
        HypervisorState_ERROR,
        HypervisorState_OFFLINE,
        HypervisorState_ONLINE,
        HypervisorState_PENDING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype HypervisorState = HypervisorState'
  { fromHypervisorState ::
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

pattern HypervisorState_ERROR :: HypervisorState
pattern HypervisorState_ERROR = HypervisorState' "ERROR"

pattern HypervisorState_OFFLINE :: HypervisorState
pattern HypervisorState_OFFLINE = HypervisorState' "OFFLINE"

pattern HypervisorState_ONLINE :: HypervisorState
pattern HypervisorState_ONLINE = HypervisorState' "ONLINE"

pattern HypervisorState_PENDING :: HypervisorState
pattern HypervisorState_PENDING = HypervisorState' "PENDING"

{-# COMPLETE
  HypervisorState_ERROR,
  HypervisorState_OFFLINE,
  HypervisorState_ONLINE,
  HypervisorState_PENDING,
  HypervisorState'
  #-}
