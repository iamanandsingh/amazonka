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
-- Module      : Amazonka.MediaLive.Types.HlsManifestDurationFormat
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.MediaLive.Types.HlsManifestDurationFormat
  ( HlsManifestDurationFormat
      ( ..,
        HlsManifestDurationFormat_FLOATING_POINT,
        HlsManifestDurationFormat_INTEGER
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Hls Manifest Duration Format
newtype HlsManifestDurationFormat = HlsManifestDurationFormat'
  { fromHlsManifestDurationFormat ::
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

pattern HlsManifestDurationFormat_FLOATING_POINT :: HlsManifestDurationFormat
pattern HlsManifestDurationFormat_FLOATING_POINT = HlsManifestDurationFormat' "FLOATING_POINT"

pattern HlsManifestDurationFormat_INTEGER :: HlsManifestDurationFormat
pattern HlsManifestDurationFormat_INTEGER = HlsManifestDurationFormat' "INTEGER"

{-# COMPLETE
  HlsManifestDurationFormat_FLOATING_POINT,
  HlsManifestDurationFormat_INTEGER,
  HlsManifestDurationFormat'
  #-}
