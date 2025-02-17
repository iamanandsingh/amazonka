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
-- Module      : Amazonka.CodePipeline.Types.StageContext
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CodePipeline.Types.StageContext where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Represents information about a stage to a job worker.
--
-- /See:/ 'newStageContext' smart constructor.
data StageContext = StageContext'
  { -- | The name of the stage.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StageContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'stageContext_name' - The name of the stage.
newStageContext ::
  StageContext
newStageContext =
  StageContext' {name = Prelude.Nothing}

-- | The name of the stage.
stageContext_name :: Lens.Lens' StageContext (Prelude.Maybe Prelude.Text)
stageContext_name = Lens.lens (\StageContext' {name} -> name) (\s@StageContext' {} a -> s {name = a} :: StageContext)

instance Data.FromJSON StageContext where
  parseJSON =
    Data.withObject
      "StageContext"
      ( \x ->
          StageContext' Prelude.<$> (x Data..:? "name")
      )

instance Prelude.Hashable StageContext where
  hashWithSalt _salt StageContext' {..} =
    _salt `Prelude.hashWithSalt` name

instance Prelude.NFData StageContext where
  rnf StageContext' {..} = Prelude.rnf name
