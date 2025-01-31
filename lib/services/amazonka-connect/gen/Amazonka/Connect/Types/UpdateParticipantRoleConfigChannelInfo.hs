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
-- Module      : Amazonka.Connect.Types.UpdateParticipantRoleConfigChannelInfo
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.UpdateParticipantRoleConfigChannelInfo where

import Amazonka.Connect.Types.ChatParticipantRoleConfig
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

-- | Configuration information for the chat participant role.
--
-- /See:/ 'newUpdateParticipantRoleConfigChannelInfo' smart constructor.
data UpdateParticipantRoleConfigChannelInfo = UpdateParticipantRoleConfigChannelInfo'
  { -- | Configuration information for the chat participant role.
    chat :: Prelude.Maybe ChatParticipantRoleConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateParticipantRoleConfigChannelInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'chat', 'updateParticipantRoleConfigChannelInfo_chat' - Configuration information for the chat participant role.
newUpdateParticipantRoleConfigChannelInfo ::
  UpdateParticipantRoleConfigChannelInfo
newUpdateParticipantRoleConfigChannelInfo =
  UpdateParticipantRoleConfigChannelInfo'
    { chat =
        Prelude.Nothing
    }

-- | Configuration information for the chat participant role.
updateParticipantRoleConfigChannelInfo_chat :: Lens.Lens' UpdateParticipantRoleConfigChannelInfo (Prelude.Maybe ChatParticipantRoleConfig)
updateParticipantRoleConfigChannelInfo_chat = Lens.lens (\UpdateParticipantRoleConfigChannelInfo' {chat} -> chat) (\s@UpdateParticipantRoleConfigChannelInfo' {} a -> s {chat = a} :: UpdateParticipantRoleConfigChannelInfo)

instance
  Prelude.Hashable
    UpdateParticipantRoleConfigChannelInfo
  where
  hashWithSalt
    _salt
    UpdateParticipantRoleConfigChannelInfo' {..} =
      _salt `Prelude.hashWithSalt` chat

instance
  Prelude.NFData
    UpdateParticipantRoleConfigChannelInfo
  where
  rnf UpdateParticipantRoleConfigChannelInfo' {..} =
    Prelude.rnf chat

instance
  Data.ToJSON
    UpdateParticipantRoleConfigChannelInfo
  where
  toJSON UpdateParticipantRoleConfigChannelInfo' {..} =
    Data.object
      ( Prelude.catMaybes
          [("Chat" Data..=) Prelude.<$> chat]
      )
