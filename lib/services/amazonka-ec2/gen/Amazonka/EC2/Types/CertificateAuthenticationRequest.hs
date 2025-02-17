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
-- Module      : Amazonka.EC2.Types.CertificateAuthenticationRequest
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EC2.Types.CertificateAuthenticationRequest where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.EC2.Internal
import qualified Amazonka.Prelude as Prelude

-- | Information about the client certificate to be used for authentication.
--
-- /See:/ 'newCertificateAuthenticationRequest' smart constructor.
data CertificateAuthenticationRequest = CertificateAuthenticationRequest'
  { -- | The ARN of the client certificate. The certificate must be signed by a
    -- certificate authority (CA) and it must be provisioned in Certificate
    -- Manager (ACM).
    clientRootCertificateChainArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CertificateAuthenticationRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRootCertificateChainArn', 'certificateAuthenticationRequest_clientRootCertificateChainArn' - The ARN of the client certificate. The certificate must be signed by a
-- certificate authority (CA) and it must be provisioned in Certificate
-- Manager (ACM).
newCertificateAuthenticationRequest ::
  CertificateAuthenticationRequest
newCertificateAuthenticationRequest =
  CertificateAuthenticationRequest'
    { clientRootCertificateChainArn =
        Prelude.Nothing
    }

-- | The ARN of the client certificate. The certificate must be signed by a
-- certificate authority (CA) and it must be provisioned in Certificate
-- Manager (ACM).
certificateAuthenticationRequest_clientRootCertificateChainArn :: Lens.Lens' CertificateAuthenticationRequest (Prelude.Maybe Prelude.Text)
certificateAuthenticationRequest_clientRootCertificateChainArn = Lens.lens (\CertificateAuthenticationRequest' {clientRootCertificateChainArn} -> clientRootCertificateChainArn) (\s@CertificateAuthenticationRequest' {} a -> s {clientRootCertificateChainArn = a} :: CertificateAuthenticationRequest)

instance
  Prelude.Hashable
    CertificateAuthenticationRequest
  where
  hashWithSalt
    _salt
    CertificateAuthenticationRequest' {..} =
      _salt
        `Prelude.hashWithSalt` clientRootCertificateChainArn

instance
  Prelude.NFData
    CertificateAuthenticationRequest
  where
  rnf CertificateAuthenticationRequest' {..} =
    Prelude.rnf clientRootCertificateChainArn

instance
  Data.ToQuery
    CertificateAuthenticationRequest
  where
  toQuery CertificateAuthenticationRequest' {..} =
    Prelude.mconcat
      [ "ClientRootCertificateChainArn"
          Data.=: clientRootCertificateChainArn
      ]
