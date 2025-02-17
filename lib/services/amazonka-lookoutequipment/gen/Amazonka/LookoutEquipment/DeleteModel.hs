{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.LookoutEquipment.DeleteModel
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an ML model currently available for Amazon Lookout for
-- Equipment. This will prevent it from being used with an inference
-- scheduler, even one that is already set up.
module Amazonka.LookoutEquipment.DeleteModel
  ( -- * Creating a Request
    DeleteModel (..),
    newDeleteModel,

    -- * Request Lenses
    deleteModel_modelName,

    -- * Destructuring the Response
    DeleteModelResponse (..),
    newDeleteModelResponse,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.LookoutEquipment.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newDeleteModel' smart constructor.
data DeleteModel = DeleteModel'
  { -- | The name of the ML model to be deleted.
    modelName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelName', 'deleteModel_modelName' - The name of the ML model to be deleted.
newDeleteModel ::
  -- | 'modelName'
  Prelude.Text ->
  DeleteModel
newDeleteModel pModelName_ =
  DeleteModel' {modelName = pModelName_}

-- | The name of the ML model to be deleted.
deleteModel_modelName :: Lens.Lens' DeleteModel Prelude.Text
deleteModel_modelName = Lens.lens (\DeleteModel' {modelName} -> modelName) (\s@DeleteModel' {} a -> s {modelName = a} :: DeleteModel)

instance Core.AWSRequest DeleteModel where
  type AWSResponse DeleteModel = DeleteModelResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response = Response.receiveNull DeleteModelResponse'

instance Prelude.Hashable DeleteModel where
  hashWithSalt _salt DeleteModel' {..} =
    _salt `Prelude.hashWithSalt` modelName

instance Prelude.NFData DeleteModel where
  rnf DeleteModel' {..} = Prelude.rnf modelName

instance Data.ToHeaders DeleteModel where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AWSLookoutEquipmentFrontendService.DeleteModel" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON DeleteModel where
  toJSON DeleteModel' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("ModelName" Data..= modelName)]
      )

instance Data.ToPath DeleteModel where
  toPath = Prelude.const "/"

instance Data.ToQuery DeleteModel where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteModelResponse' smart constructor.
data DeleteModelResponse = DeleteModelResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteModelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteModelResponse ::
  DeleteModelResponse
newDeleteModelResponse = DeleteModelResponse'

instance Prelude.NFData DeleteModelResponse where
  rnf _ = ()
