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
-- Module      : Amazonka.AppStream.Types.ImageBuilderStateChangeReasonCode
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppStream.Types.ImageBuilderStateChangeReasonCode
  ( ImageBuilderStateChangeReasonCode
      ( ..,
        ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE,
        ImageBuilderStateChangeReasonCode_INTERNAL_ERROR
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ImageBuilderStateChangeReasonCode = ImageBuilderStateChangeReasonCode'
  { fromImageBuilderStateChangeReasonCode ::
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

pattern ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE :: ImageBuilderStateChangeReasonCode
pattern ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE = ImageBuilderStateChangeReasonCode' "IMAGE_UNAVAILABLE"

pattern ImageBuilderStateChangeReasonCode_INTERNAL_ERROR :: ImageBuilderStateChangeReasonCode
pattern ImageBuilderStateChangeReasonCode_INTERNAL_ERROR = ImageBuilderStateChangeReasonCode' "INTERNAL_ERROR"

{-# COMPLETE
  ImageBuilderStateChangeReasonCode_IMAGE_UNAVAILABLE,
  ImageBuilderStateChangeReasonCode_INTERNAL_ERROR,
  ImageBuilderStateChangeReasonCode'
  #-}
