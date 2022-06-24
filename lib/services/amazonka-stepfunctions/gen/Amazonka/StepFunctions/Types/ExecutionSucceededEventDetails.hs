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
-- Module      : Amazonka.StepFunctions.Types.ExecutionSucceededEventDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.StepFunctions.Types.ExecutionSucceededEventDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.StepFunctions.Types.HistoryEventExecutionDataDetails

-- | Contains details about the successful termination of the execution.
--
-- /See:/ 'newExecutionSucceededEventDetails' smart constructor.
data ExecutionSucceededEventDetails = ExecutionSucceededEventDetails'
  { -- | Contains details about the output of an execution history event.
    outputDetails :: Prelude.Maybe HistoryEventExecutionDataDetails,
    -- | The JSON data output by the execution. Length constraints apply to the
    -- payload size, and are expressed as bytes in UTF-8 encoding.
    output :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecutionSucceededEventDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'outputDetails', 'executionSucceededEventDetails_outputDetails' - Contains details about the output of an execution history event.
--
-- 'output', 'executionSucceededEventDetails_output' - The JSON data output by the execution. Length constraints apply to the
-- payload size, and are expressed as bytes in UTF-8 encoding.
newExecutionSucceededEventDetails ::
  ExecutionSucceededEventDetails
newExecutionSucceededEventDetails =
  ExecutionSucceededEventDetails'
    { outputDetails =
        Prelude.Nothing,
      output = Prelude.Nothing
    }

-- | Contains details about the output of an execution history event.
executionSucceededEventDetails_outputDetails :: Lens.Lens' ExecutionSucceededEventDetails (Prelude.Maybe HistoryEventExecutionDataDetails)
executionSucceededEventDetails_outputDetails = Lens.lens (\ExecutionSucceededEventDetails' {outputDetails} -> outputDetails) (\s@ExecutionSucceededEventDetails' {} a -> s {outputDetails = a} :: ExecutionSucceededEventDetails)

-- | The JSON data output by the execution. Length constraints apply to the
-- payload size, and are expressed as bytes in UTF-8 encoding.
executionSucceededEventDetails_output :: Lens.Lens' ExecutionSucceededEventDetails (Prelude.Maybe Prelude.Text)
executionSucceededEventDetails_output = Lens.lens (\ExecutionSucceededEventDetails' {output} -> output) (\s@ExecutionSucceededEventDetails' {} a -> s {output = a} :: ExecutionSucceededEventDetails) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON ExecutionSucceededEventDetails where
  parseJSON =
    Core.withObject
      "ExecutionSucceededEventDetails"
      ( \x ->
          ExecutionSucceededEventDetails'
            Prelude.<$> (x Core..:? "outputDetails")
            Prelude.<*> (x Core..:? "output")
      )

instance
  Prelude.Hashable
    ExecutionSucceededEventDetails
  where
  hashWithSalt
    _salt
    ExecutionSucceededEventDetails' {..} =
      _salt `Prelude.hashWithSalt` outputDetails
        `Prelude.hashWithSalt` output

instance
  Prelude.NFData
    ExecutionSucceededEventDetails
  where
  rnf ExecutionSucceededEventDetails' {..} =
    Prelude.rnf outputDetails
      `Prelude.seq` Prelude.rnf output
