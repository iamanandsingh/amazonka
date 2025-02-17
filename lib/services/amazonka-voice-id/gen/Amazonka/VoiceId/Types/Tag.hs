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
-- Module      : Amazonka.VoiceId.Types.Tag
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.VoiceId.Types.Tag where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | The tags used to organize, track, or control access for this resource.
-- For example, { \"tags\": {\"key1\":\"value1\", \"key2\":\"value2\"} }.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | The first part of a key:value pair that forms a tag associated with a
    -- given resource. For example, in the tag \'Department\':\'Sales\', the
    -- key is \'Department\'.
    key :: Data.Sensitive Prelude.Text,
    -- | The second part of a key:value pair that forms a tag associated with a
    -- given resource. For example, in the tag \'Department\':\'Sales\', the
    -- value is \'Sales\'.
    value :: Data.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tag_key' - The first part of a key:value pair that forms a tag associated with a
-- given resource. For example, in the tag \'Department\':\'Sales\', the
-- key is \'Department\'.
--
-- 'value', 'tag_value' - The second part of a key:value pair that forms a tag associated with a
-- given resource. For example, in the tag \'Department\':\'Sales\', the
-- value is \'Sales\'.
newTag ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag'
    { key = Data._Sensitive Lens.# pKey_,
      value = Data._Sensitive Lens.# pValue_
    }

-- | The first part of a key:value pair that forms a tag associated with a
-- given resource. For example, in the tag \'Department\':\'Sales\', the
-- key is \'Department\'.
tag_key :: Lens.Lens' Tag Prelude.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag) Prelude.. Data._Sensitive

-- | The second part of a key:value pair that forms a tag associated with a
-- given resource. For example, in the tag \'Department\':\'Sales\', the
-- value is \'Sales\'.
tag_value :: Lens.Lens' Tag Prelude.Text
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag) Prelude.. Data._Sensitive

instance Data.FromJSON Tag where
  parseJSON =
    Data.withObject
      "Tag"
      ( \x ->
          Tag'
            Prelude.<$> (x Data..: "Key") Prelude.<*> (x Data..: "Value")
      )

instance Prelude.Hashable Tag where
  hashWithSalt _salt Tag' {..} =
    _salt `Prelude.hashWithSalt` key
      `Prelude.hashWithSalt` value

instance Prelude.NFData Tag where
  rnf Tag' {..} =
    Prelude.rnf key `Prelude.seq` Prelude.rnf value

instance Data.ToJSON Tag where
  toJSON Tag' {..} =
    Data.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Key" Data..= key),
            Prelude.Just ("Value" Data..= value)
          ]
      )
