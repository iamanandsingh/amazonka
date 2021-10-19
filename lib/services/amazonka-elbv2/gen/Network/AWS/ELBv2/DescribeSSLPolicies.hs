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
-- Module      : Network.AWS.ELBv2.DescribeSSLPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified policies or all policies used for SSL
-- negotiation.
--
-- For more information, see
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies Security policies>
-- in the /Application Load Balancers Guide/ or
-- <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies Security policies>
-- in the /Network Load Balancers Guide/.
--
-- This operation returns paginated results.
module Network.AWS.ELBv2.DescribeSSLPolicies
  ( -- * Creating a Request
    DescribeSSLPolicies (..),
    newDescribeSSLPolicies,

    -- * Request Lenses
    describeSSLPolicies_loadBalancerType,
    describeSSLPolicies_names,
    describeSSLPolicies_marker,
    describeSSLPolicies_pageSize,

    -- * Destructuring the Response
    DescribeSSLPoliciesResponse (..),
    newDescribeSSLPoliciesResponse,

    -- * Response Lenses
    describeSSLPoliciesResponse_sslPolicies,
    describeSSLPoliciesResponse_nextMarker,
    describeSSLPoliciesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ELBv2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeSSLPolicies' smart constructor.
data DescribeSSLPolicies = DescribeSSLPolicies'
  { -- | The type of load balancer. The default lists the SSL policies for all
    -- load balancers.
    loadBalancerType :: Prelude.Maybe LoadBalancerTypeEnum,
    -- | The names of the policies.
    names :: Prelude.Maybe [Prelude.Text],
    -- | The marker for the next set of results. (You received this marker from a
    -- previous call.)
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return with this call.
    pageSize :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSSLPolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerType', 'describeSSLPolicies_loadBalancerType' - The type of load balancer. The default lists the SSL policies for all
-- load balancers.
--
-- 'names', 'describeSSLPolicies_names' - The names of the policies.
--
-- 'marker', 'describeSSLPolicies_marker' - The marker for the next set of results. (You received this marker from a
-- previous call.)
--
-- 'pageSize', 'describeSSLPolicies_pageSize' - The maximum number of results to return with this call.
newDescribeSSLPolicies ::
  DescribeSSLPolicies
newDescribeSSLPolicies =
  DescribeSSLPolicies'
    { loadBalancerType =
        Prelude.Nothing,
      names = Prelude.Nothing,
      marker = Prelude.Nothing,
      pageSize = Prelude.Nothing
    }

-- | The type of load balancer. The default lists the SSL policies for all
-- load balancers.
describeSSLPolicies_loadBalancerType :: Lens.Lens' DescribeSSLPolicies (Prelude.Maybe LoadBalancerTypeEnum)
describeSSLPolicies_loadBalancerType = Lens.lens (\DescribeSSLPolicies' {loadBalancerType} -> loadBalancerType) (\s@DescribeSSLPolicies' {} a -> s {loadBalancerType = a} :: DescribeSSLPolicies)

-- | The names of the policies.
describeSSLPolicies_names :: Lens.Lens' DescribeSSLPolicies (Prelude.Maybe [Prelude.Text])
describeSSLPolicies_names = Lens.lens (\DescribeSSLPolicies' {names} -> names) (\s@DescribeSSLPolicies' {} a -> s {names = a} :: DescribeSSLPolicies) Prelude.. Lens.mapping Lens.coerced

-- | The marker for the next set of results. (You received this marker from a
-- previous call.)
describeSSLPolicies_marker :: Lens.Lens' DescribeSSLPolicies (Prelude.Maybe Prelude.Text)
describeSSLPolicies_marker = Lens.lens (\DescribeSSLPolicies' {marker} -> marker) (\s@DescribeSSLPolicies' {} a -> s {marker = a} :: DescribeSSLPolicies)

-- | The maximum number of results to return with this call.
describeSSLPolicies_pageSize :: Lens.Lens' DescribeSSLPolicies (Prelude.Maybe Prelude.Natural)
describeSSLPolicies_pageSize = Lens.lens (\DescribeSSLPolicies' {pageSize} -> pageSize) (\s@DescribeSSLPolicies' {} a -> s {pageSize = a} :: DescribeSSLPolicies)

instance Core.AWSPager DescribeSSLPolicies where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? describeSSLPoliciesResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? describeSSLPoliciesResponse_sslPolicies
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& describeSSLPolicies_marker
          Lens..~ rs
          Lens.^? describeSSLPoliciesResponse_nextMarker
            Prelude.. Lens._Just

instance Core.AWSRequest DescribeSSLPolicies where
  type
    AWSResponse DescribeSSLPolicies =
      DescribeSSLPoliciesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeSSLPoliciesResult"
      ( \s h x ->
          DescribeSSLPoliciesResponse'
            Prelude.<$> ( x Core..@? "SslPolicies" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "NextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeSSLPolicies

instance Prelude.NFData DescribeSSLPolicies

instance Core.ToHeaders DescribeSSLPolicies where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeSSLPolicies where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeSSLPolicies where
  toQuery DescribeSSLPolicies' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DescribeSSLPolicies" :: Prelude.ByteString),
        "Version"
          Core.=: ("2015-12-01" :: Prelude.ByteString),
        "LoadBalancerType" Core.=: loadBalancerType,
        "Names"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> names),
        "Marker" Core.=: marker,
        "PageSize" Core.=: pageSize
      ]

-- | /See:/ 'newDescribeSSLPoliciesResponse' smart constructor.
data DescribeSSLPoliciesResponse = DescribeSSLPoliciesResponse'
  { -- | Information about the security policies.
    sslPolicies :: Prelude.Maybe [SslPolicy],
    -- | If there are additional results, this is the marker for the next set of
    -- results. Otherwise, this is null.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSSLPoliciesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sslPolicies', 'describeSSLPoliciesResponse_sslPolicies' - Information about the security policies.
--
-- 'nextMarker', 'describeSSLPoliciesResponse_nextMarker' - If there are additional results, this is the marker for the next set of
-- results. Otherwise, this is null.
--
-- 'httpStatus', 'describeSSLPoliciesResponse_httpStatus' - The response's http status code.
newDescribeSSLPoliciesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeSSLPoliciesResponse
newDescribeSSLPoliciesResponse pHttpStatus_ =
  DescribeSSLPoliciesResponse'
    { sslPolicies =
        Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the security policies.
describeSSLPoliciesResponse_sslPolicies :: Lens.Lens' DescribeSSLPoliciesResponse (Prelude.Maybe [SslPolicy])
describeSSLPoliciesResponse_sslPolicies = Lens.lens (\DescribeSSLPoliciesResponse' {sslPolicies} -> sslPolicies) (\s@DescribeSSLPoliciesResponse' {} a -> s {sslPolicies = a} :: DescribeSSLPoliciesResponse) Prelude.. Lens.mapping Lens.coerced

-- | If there are additional results, this is the marker for the next set of
-- results. Otherwise, this is null.
describeSSLPoliciesResponse_nextMarker :: Lens.Lens' DescribeSSLPoliciesResponse (Prelude.Maybe Prelude.Text)
describeSSLPoliciesResponse_nextMarker = Lens.lens (\DescribeSSLPoliciesResponse' {nextMarker} -> nextMarker) (\s@DescribeSSLPoliciesResponse' {} a -> s {nextMarker = a} :: DescribeSSLPoliciesResponse)

-- | The response's http status code.
describeSSLPoliciesResponse_httpStatus :: Lens.Lens' DescribeSSLPoliciesResponse Prelude.Int
describeSSLPoliciesResponse_httpStatus = Lens.lens (\DescribeSSLPoliciesResponse' {httpStatus} -> httpStatus) (\s@DescribeSSLPoliciesResponse' {} a -> s {httpStatus = a} :: DescribeSSLPoliciesResponse)

instance Prelude.NFData DescribeSSLPoliciesResponse
