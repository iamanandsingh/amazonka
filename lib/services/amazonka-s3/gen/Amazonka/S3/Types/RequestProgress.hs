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
-- Module      : Amazonka.S3.Types.RequestProgress
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.S3.Types.RequestProgress where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.S3.Internal

-- | Container for specifying if periodic @QueryProgress@ messages should be
-- sent.
--
-- /See:/ 'newRequestProgress' smart constructor.
data RequestProgress = RequestProgress'
  { -- | Specifies whether periodic QueryProgress frames should be sent. Valid
    -- values: TRUE, FALSE. Default value: FALSE.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RequestProgress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'requestProgress_enabled' - Specifies whether periodic QueryProgress frames should be sent. Valid
-- values: TRUE, FALSE. Default value: FALSE.
newRequestProgress ::
  RequestProgress
newRequestProgress =
  RequestProgress' {enabled = Prelude.Nothing}

-- | Specifies whether periodic QueryProgress frames should be sent. Valid
-- values: TRUE, FALSE. Default value: FALSE.
requestProgress_enabled :: Lens.Lens' RequestProgress (Prelude.Maybe Prelude.Bool)
requestProgress_enabled = Lens.lens (\RequestProgress' {enabled} -> enabled) (\s@RequestProgress' {} a -> s {enabled = a} :: RequestProgress)

instance Prelude.Hashable RequestProgress where
  hashWithSalt _salt RequestProgress' {..} =
    _salt `Prelude.hashWithSalt` enabled

instance Prelude.NFData RequestProgress where
  rnf RequestProgress' {..} = Prelude.rnf enabled

instance Data.ToXML RequestProgress where
  toXML RequestProgress' {..} =
    Prelude.mconcat ["Enabled" Data.@= enabled]
