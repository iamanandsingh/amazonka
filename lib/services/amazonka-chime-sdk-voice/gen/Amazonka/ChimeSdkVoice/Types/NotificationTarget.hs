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
-- Module      : Amazonka.ChimeSdkVoice.Types.NotificationTarget
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ChimeSdkVoice.Types.NotificationTarget
  ( NotificationTarget
      ( ..,
        NotificationTarget_EventBridge,
        NotificationTarget_SNS,
        NotificationTarget_SQS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype NotificationTarget = NotificationTarget'
  { fromNotificationTarget ::
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

pattern NotificationTarget_EventBridge :: NotificationTarget
pattern NotificationTarget_EventBridge = NotificationTarget' "EventBridge"

pattern NotificationTarget_SNS :: NotificationTarget
pattern NotificationTarget_SNS = NotificationTarget' "SNS"

pattern NotificationTarget_SQS :: NotificationTarget
pattern NotificationTarget_SQS = NotificationTarget' "SQS"

{-# COMPLETE
  NotificationTarget_EventBridge,
  NotificationTarget_SNS,
  NotificationTarget_SQS,
  NotificationTarget'
  #-}
