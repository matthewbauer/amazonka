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
-- Module      : Amazonka.ComputeOptimizer.GetEBSVolumeRecommendations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.
--
-- Compute Optimizer generates recommendations for Amazon EBS volumes that
-- meet a specific set of requirements. For more information, see the
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html Supported resources and requirements>
-- in the /Compute Optimizer User Guide/.
module Amazonka.ComputeOptimizer.GetEBSVolumeRecommendations
  ( -- * Creating a Request
    GetEBSVolumeRecommendations (..),
    newGetEBSVolumeRecommendations,

    -- * Request Lenses
    getEBSVolumeRecommendations_accountIds,
    getEBSVolumeRecommendations_filters,
    getEBSVolumeRecommendations_nextToken,
    getEBSVolumeRecommendations_volumeArns,
    getEBSVolumeRecommendations_maxResults,

    -- * Destructuring the Response
    GetEBSVolumeRecommendationsResponse (..),
    newGetEBSVolumeRecommendationsResponse,

    -- * Response Lenses
    getEBSVolumeRecommendationsResponse_nextToken,
    getEBSVolumeRecommendationsResponse_volumeRecommendations,
    getEBSVolumeRecommendationsResponse_errors,
    getEBSVolumeRecommendationsResponse_httpStatus,
  )
where

import Amazonka.ComputeOptimizer.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newGetEBSVolumeRecommendations' smart constructor.
data GetEBSVolumeRecommendations = GetEBSVolumeRecommendations'
  { -- | The ID of the Amazon Web Services account for which to return volume
    -- recommendations.
    --
    -- If your account is the management account of an organization, use this
    -- parameter to specify the member account for which you want to return
    -- volume recommendations.
    --
    -- Only one account ID can be specified per request.
    accountIds :: Prelude.Maybe [Prelude.Text],
    -- | An array of objects to specify a filter that returns a more specific
    -- list of volume recommendations.
    filters :: Prelude.Maybe [EBSFilter],
    -- | The token to advance to the next page of volume recommendations.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the volumes for which to return
    -- recommendations.
    volumeArns :: Prelude.Maybe [Prelude.Text],
    -- | The maximum number of volume recommendations to return with a single
    -- request.
    --
    -- To retrieve the remaining results, make another request with the
    -- returned @nextToken@ value.
    maxResults :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEBSVolumeRecommendations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'getEBSVolumeRecommendations_accountIds' - The ID of the Amazon Web Services account for which to return volume
-- recommendations.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to return
-- volume recommendations.
--
-- Only one account ID can be specified per request.
--
-- 'filters', 'getEBSVolumeRecommendations_filters' - An array of objects to specify a filter that returns a more specific
-- list of volume recommendations.
--
-- 'nextToken', 'getEBSVolumeRecommendations_nextToken' - The token to advance to the next page of volume recommendations.
--
-- 'volumeArns', 'getEBSVolumeRecommendations_volumeArns' - The Amazon Resource Name (ARN) of the volumes for which to return
-- recommendations.
--
-- 'maxResults', 'getEBSVolumeRecommendations_maxResults' - The maximum number of volume recommendations to return with a single
-- request.
--
-- To retrieve the remaining results, make another request with the
-- returned @nextToken@ value.
newGetEBSVolumeRecommendations ::
  GetEBSVolumeRecommendations
newGetEBSVolumeRecommendations =
  GetEBSVolumeRecommendations'
    { accountIds =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      volumeArns = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The ID of the Amazon Web Services account for which to return volume
-- recommendations.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to return
-- volume recommendations.
--
-- Only one account ID can be specified per request.
getEBSVolumeRecommendations_accountIds :: Lens.Lens' GetEBSVolumeRecommendations (Prelude.Maybe [Prelude.Text])
getEBSVolumeRecommendations_accountIds = Lens.lens (\GetEBSVolumeRecommendations' {accountIds} -> accountIds) (\s@GetEBSVolumeRecommendations' {} a -> s {accountIds = a} :: GetEBSVolumeRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | An array of objects to specify a filter that returns a more specific
-- list of volume recommendations.
getEBSVolumeRecommendations_filters :: Lens.Lens' GetEBSVolumeRecommendations (Prelude.Maybe [EBSFilter])
getEBSVolumeRecommendations_filters = Lens.lens (\GetEBSVolumeRecommendations' {filters} -> filters) (\s@GetEBSVolumeRecommendations' {} a -> s {filters = a} :: GetEBSVolumeRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The token to advance to the next page of volume recommendations.
getEBSVolumeRecommendations_nextToken :: Lens.Lens' GetEBSVolumeRecommendations (Prelude.Maybe Prelude.Text)
getEBSVolumeRecommendations_nextToken = Lens.lens (\GetEBSVolumeRecommendations' {nextToken} -> nextToken) (\s@GetEBSVolumeRecommendations' {} a -> s {nextToken = a} :: GetEBSVolumeRecommendations)

-- | The Amazon Resource Name (ARN) of the volumes for which to return
-- recommendations.
getEBSVolumeRecommendations_volumeArns :: Lens.Lens' GetEBSVolumeRecommendations (Prelude.Maybe [Prelude.Text])
getEBSVolumeRecommendations_volumeArns = Lens.lens (\GetEBSVolumeRecommendations' {volumeArns} -> volumeArns) (\s@GetEBSVolumeRecommendations' {} a -> s {volumeArns = a} :: GetEBSVolumeRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The maximum number of volume recommendations to return with a single
-- request.
--
-- To retrieve the remaining results, make another request with the
-- returned @nextToken@ value.
getEBSVolumeRecommendations_maxResults :: Lens.Lens' GetEBSVolumeRecommendations (Prelude.Maybe Prelude.Int)
getEBSVolumeRecommendations_maxResults = Lens.lens (\GetEBSVolumeRecommendations' {maxResults} -> maxResults) (\s@GetEBSVolumeRecommendations' {} a -> s {maxResults = a} :: GetEBSVolumeRecommendations)

instance Core.AWSRequest GetEBSVolumeRecommendations where
  type
    AWSResponse GetEBSVolumeRecommendations =
      GetEBSVolumeRecommendationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetEBSVolumeRecommendationsResponse'
            Prelude.<$> (x Core..?> "nextToken")
            Prelude.<*> ( x Core..?> "volumeRecommendations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "errors" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetEBSVolumeRecommendations

instance Prelude.NFData GetEBSVolumeRecommendations

instance Core.ToHeaders GetEBSVolumeRecommendations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.GetEBSVolumeRecommendations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetEBSVolumeRecommendations where
  toJSON GetEBSVolumeRecommendations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accountIds" Core..=) Prelude.<$> accountIds,
            ("filters" Core..=) Prelude.<$> filters,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("volumeArns" Core..=) Prelude.<$> volumeArns,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath GetEBSVolumeRecommendations where
  toPath = Prelude.const "/"

instance Core.ToQuery GetEBSVolumeRecommendations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetEBSVolumeRecommendationsResponse' smart constructor.
data GetEBSVolumeRecommendationsResponse = GetEBSVolumeRecommendationsResponse'
  { -- | The token to use to advance to the next page of volume recommendations.
    --
    -- This value is null when there are no more pages of volume
    -- recommendations to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that describe volume recommendations.
    volumeRecommendations :: Prelude.Maybe [VolumeRecommendation],
    -- | An array of objects that describe errors of the request.
    --
    -- For example, an error is returned if you request recommendations for an
    -- unsupported volume.
    errors :: Prelude.Maybe [GetRecommendationError],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetEBSVolumeRecommendationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getEBSVolumeRecommendationsResponse_nextToken' - The token to use to advance to the next page of volume recommendations.
--
-- This value is null when there are no more pages of volume
-- recommendations to return.
--
-- 'volumeRecommendations', 'getEBSVolumeRecommendationsResponse_volumeRecommendations' - An array of objects that describe volume recommendations.
--
-- 'errors', 'getEBSVolumeRecommendationsResponse_errors' - An array of objects that describe errors of the request.
--
-- For example, an error is returned if you request recommendations for an
-- unsupported volume.
--
-- 'httpStatus', 'getEBSVolumeRecommendationsResponse_httpStatus' - The response's http status code.
newGetEBSVolumeRecommendationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetEBSVolumeRecommendationsResponse
newGetEBSVolumeRecommendationsResponse pHttpStatus_ =
  GetEBSVolumeRecommendationsResponse'
    { nextToken =
        Prelude.Nothing,
      volumeRecommendations =
        Prelude.Nothing,
      errors = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to advance to the next page of volume recommendations.
--
-- This value is null when there are no more pages of volume
-- recommendations to return.
getEBSVolumeRecommendationsResponse_nextToken :: Lens.Lens' GetEBSVolumeRecommendationsResponse (Prelude.Maybe Prelude.Text)
getEBSVolumeRecommendationsResponse_nextToken = Lens.lens (\GetEBSVolumeRecommendationsResponse' {nextToken} -> nextToken) (\s@GetEBSVolumeRecommendationsResponse' {} a -> s {nextToken = a} :: GetEBSVolumeRecommendationsResponse)

-- | An array of objects that describe volume recommendations.
getEBSVolumeRecommendationsResponse_volumeRecommendations :: Lens.Lens' GetEBSVolumeRecommendationsResponse (Prelude.Maybe [VolumeRecommendation])
getEBSVolumeRecommendationsResponse_volumeRecommendations = Lens.lens (\GetEBSVolumeRecommendationsResponse' {volumeRecommendations} -> volumeRecommendations) (\s@GetEBSVolumeRecommendationsResponse' {} a -> s {volumeRecommendations = a} :: GetEBSVolumeRecommendationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | An array of objects that describe errors of the request.
--
-- For example, an error is returned if you request recommendations for an
-- unsupported volume.
getEBSVolumeRecommendationsResponse_errors :: Lens.Lens' GetEBSVolumeRecommendationsResponse (Prelude.Maybe [GetRecommendationError])
getEBSVolumeRecommendationsResponse_errors = Lens.lens (\GetEBSVolumeRecommendationsResponse' {errors} -> errors) (\s@GetEBSVolumeRecommendationsResponse' {} a -> s {errors = a} :: GetEBSVolumeRecommendationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getEBSVolumeRecommendationsResponse_httpStatus :: Lens.Lens' GetEBSVolumeRecommendationsResponse Prelude.Int
getEBSVolumeRecommendationsResponse_httpStatus = Lens.lens (\GetEBSVolumeRecommendationsResponse' {httpStatus} -> httpStatus) (\s@GetEBSVolumeRecommendationsResponse' {} a -> s {httpStatus = a} :: GetEBSVolumeRecommendationsResponse)

instance
  Prelude.NFData
    GetEBSVolumeRecommendationsResponse
