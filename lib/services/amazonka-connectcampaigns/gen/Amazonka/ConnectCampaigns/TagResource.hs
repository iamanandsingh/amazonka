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
-- Module      : Amazonka.ConnectCampaigns.TagResource
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tag a resource.
module Amazonka.ConnectCampaigns.TagResource
  ( -- * Creating a Request
    TagResource (..),
    newTagResource,

    -- * Request Lenses
    tagResource_arn,
    tagResource_tags,

    -- * Destructuring the Response
    TagResourceResponse (..),
    newTagResourceResponse,
  )
where

import Amazonka.ConnectCampaigns.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | TagResourceRequest
--
-- /See:/ 'newTagResource' smart constructor.
data TagResource = TagResource'
  { arn :: Prelude.Text,
    tags :: Prelude.HashMap Prelude.Text Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'tagResource_arn' - Undocumented member.
--
-- 'tags', 'tagResource_tags' - Undocumented member.
newTagResource ::
  -- | 'arn'
  Prelude.Text ->
  TagResource
newTagResource pArn_ =
  TagResource' {arn = pArn_, tags = Prelude.mempty}

-- | Undocumented member.
tagResource_arn :: Lens.Lens' TagResource Prelude.Text
tagResource_arn = Lens.lens (\TagResource' {arn} -> arn) (\s@TagResource' {} a -> s {arn = a} :: TagResource)

-- | Undocumented member.
tagResource_tags :: Lens.Lens' TagResource (Prelude.HashMap Prelude.Text Prelude.Text)
tagResource_tags = Lens.lens (\TagResource' {tags} -> tags) (\s@TagResource' {} a -> s {tags = a} :: TagResource) Prelude.. Lens.coerced

instance Core.AWSRequest TagResource where
  type AWSResponse TagResource = TagResourceResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response = Response.receiveNull TagResourceResponse'

instance Prelude.Hashable TagResource where
  hashWithSalt _salt TagResource' {..} =
    _salt `Prelude.hashWithSalt` arn
      `Prelude.hashWithSalt` tags

instance Prelude.NFData TagResource where
  rnf TagResource' {..} =
    Prelude.rnf arn `Prelude.seq` Prelude.rnf tags

instance Data.ToHeaders TagResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON TagResource where
  toJSON TagResource' {..} =
    Data.object
      ( Prelude.catMaybes
          [Prelude.Just ("tags" Data..= tags)]
      )

instance Data.ToPath TagResource where
  toPath TagResource' {..} =
    Prelude.mconcat ["/tags/", Data.toBS arn]

instance Data.ToQuery TagResource where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTagResourceResponse' smart constructor.
data TagResourceResponse = TagResourceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newTagResourceResponse ::
  TagResourceResponse
newTagResourceResponse = TagResourceResponse'

instance Prelude.NFData TagResourceResponse where
  rnf _ = ()
