{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ComputeOptimizer.Types.ExportableInstanceField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComputeOptimizer.Types.ExportableInstanceField
  ( ExportableInstanceField
      ( ..,
        ExportableInstanceField_AccountId,
        ExportableInstanceField_CurrentInstanceType,
        ExportableInstanceField_CurrentMemory,
        ExportableInstanceField_CurrentNetwork,
        ExportableInstanceField_CurrentOnDemandPrice,
        ExportableInstanceField_CurrentStandardOneYearNoUpfrontReservedPrice,
        ExportableInstanceField_CurrentStandardThreeYearNoUpfrontReservedPrice,
        ExportableInstanceField_CurrentStorage,
        ExportableInstanceField_CurrentVCpus,
        ExportableInstanceField_Finding,
        ExportableInstanceField_FindingReasonCodes,
        ExportableInstanceField_InstanceArn,
        ExportableInstanceField_InstanceName,
        ExportableInstanceField_LastRefreshTimestamp,
        ExportableInstanceField_LookbackPeriodInDays,
        ExportableInstanceField_RecommendationOptionsInstanceType,
        ExportableInstanceField_RecommendationOptionsMemory,
        ExportableInstanceField_RecommendationOptionsNetwork,
        ExportableInstanceField_RecommendationOptionsOnDemandPrice,
        ExportableInstanceField_RecommendationOptionsPerformanceRisk,
        ExportableInstanceField_RecommendationOptionsPlatformDifferences,
        ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum,
        ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum,
        ExportableInstanceField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice,
        ExportableInstanceField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice,
        ExportableInstanceField_RecommendationOptionsStorage,
        ExportableInstanceField_RecommendationOptionsVcpus,
        ExportableInstanceField_RecommendationsSourcesRecommendationSourceArn,
        ExportableInstanceField_RecommendationsSourcesRecommendationSourceType,
        ExportableInstanceField_UtilizationMetricsCpuMaximum,
        ExportableInstanceField_UtilizationMetricsDiskReadBytesPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsDiskReadOpsPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsDiskWriteBytesPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsDiskWriteOpsPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsEbsReadBytesPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsEbsReadOpsPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsEbsWriteBytesPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsEbsWriteOpsPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsMemoryMaximum,
        ExportableInstanceField_UtilizationMetricsNetworkInBytesPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsNetworkOutBytesPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsNetworkPacketsInPerSecondMaximum,
        ExportableInstanceField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ExportableInstanceField = ExportableInstanceField'
  { fromExportableInstanceField ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern ExportableInstanceField_AccountId :: ExportableInstanceField
pattern ExportableInstanceField_AccountId = ExportableInstanceField' "AccountId"

pattern ExportableInstanceField_CurrentInstanceType :: ExportableInstanceField
pattern ExportableInstanceField_CurrentInstanceType = ExportableInstanceField' "CurrentInstanceType"

pattern ExportableInstanceField_CurrentMemory :: ExportableInstanceField
pattern ExportableInstanceField_CurrentMemory = ExportableInstanceField' "CurrentMemory"

pattern ExportableInstanceField_CurrentNetwork :: ExportableInstanceField
pattern ExportableInstanceField_CurrentNetwork = ExportableInstanceField' "CurrentNetwork"

pattern ExportableInstanceField_CurrentOnDemandPrice :: ExportableInstanceField
pattern ExportableInstanceField_CurrentOnDemandPrice = ExportableInstanceField' "CurrentOnDemandPrice"

pattern ExportableInstanceField_CurrentStandardOneYearNoUpfrontReservedPrice :: ExportableInstanceField
pattern ExportableInstanceField_CurrentStandardOneYearNoUpfrontReservedPrice = ExportableInstanceField' "CurrentStandardOneYearNoUpfrontReservedPrice"

pattern ExportableInstanceField_CurrentStandardThreeYearNoUpfrontReservedPrice :: ExportableInstanceField
pattern ExportableInstanceField_CurrentStandardThreeYearNoUpfrontReservedPrice = ExportableInstanceField' "CurrentStandardThreeYearNoUpfrontReservedPrice"

pattern ExportableInstanceField_CurrentStorage :: ExportableInstanceField
pattern ExportableInstanceField_CurrentStorage = ExportableInstanceField' "CurrentStorage"

pattern ExportableInstanceField_CurrentVCpus :: ExportableInstanceField
pattern ExportableInstanceField_CurrentVCpus = ExportableInstanceField' "CurrentVCpus"

pattern ExportableInstanceField_Finding :: ExportableInstanceField
pattern ExportableInstanceField_Finding = ExportableInstanceField' "Finding"

pattern ExportableInstanceField_FindingReasonCodes :: ExportableInstanceField
pattern ExportableInstanceField_FindingReasonCodes = ExportableInstanceField' "FindingReasonCodes"

pattern ExportableInstanceField_InstanceArn :: ExportableInstanceField
pattern ExportableInstanceField_InstanceArn = ExportableInstanceField' "InstanceArn"

pattern ExportableInstanceField_InstanceName :: ExportableInstanceField
pattern ExportableInstanceField_InstanceName = ExportableInstanceField' "InstanceName"

pattern ExportableInstanceField_LastRefreshTimestamp :: ExportableInstanceField
pattern ExportableInstanceField_LastRefreshTimestamp = ExportableInstanceField' "LastRefreshTimestamp"

pattern ExportableInstanceField_LookbackPeriodInDays :: ExportableInstanceField
pattern ExportableInstanceField_LookbackPeriodInDays = ExportableInstanceField' "LookbackPeriodInDays"

pattern ExportableInstanceField_RecommendationOptionsInstanceType :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsInstanceType = ExportableInstanceField' "RecommendationOptionsInstanceType"

pattern ExportableInstanceField_RecommendationOptionsMemory :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsMemory = ExportableInstanceField' "RecommendationOptionsMemory"

pattern ExportableInstanceField_RecommendationOptionsNetwork :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsNetwork = ExportableInstanceField' "RecommendationOptionsNetwork"

pattern ExportableInstanceField_RecommendationOptionsOnDemandPrice :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsOnDemandPrice = ExportableInstanceField' "RecommendationOptionsOnDemandPrice"

pattern ExportableInstanceField_RecommendationOptionsPerformanceRisk :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsPerformanceRisk = ExportableInstanceField' "RecommendationOptionsPerformanceRisk"

pattern ExportableInstanceField_RecommendationOptionsPlatformDifferences :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsPlatformDifferences = ExportableInstanceField' "RecommendationOptionsPlatformDifferences"

pattern ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum = ExportableInstanceField' "RecommendationOptionsProjectedUtilizationMetricsCpuMaximum"

pattern ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum = ExportableInstanceField' "RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum"

pattern ExportableInstanceField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice = ExportableInstanceField' "RecommendationOptionsStandardOneYearNoUpfrontReservedPrice"

pattern ExportableInstanceField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice = ExportableInstanceField' "RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice"

pattern ExportableInstanceField_RecommendationOptionsStorage :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsStorage = ExportableInstanceField' "RecommendationOptionsStorage"

pattern ExportableInstanceField_RecommendationOptionsVcpus :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationOptionsVcpus = ExportableInstanceField' "RecommendationOptionsVcpus"

pattern ExportableInstanceField_RecommendationsSourcesRecommendationSourceArn :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationsSourcesRecommendationSourceArn = ExportableInstanceField' "RecommendationsSourcesRecommendationSourceArn"

pattern ExportableInstanceField_RecommendationsSourcesRecommendationSourceType :: ExportableInstanceField
pattern ExportableInstanceField_RecommendationsSourcesRecommendationSourceType = ExportableInstanceField' "RecommendationsSourcesRecommendationSourceType"

pattern ExportableInstanceField_UtilizationMetricsCpuMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsCpuMaximum = ExportableInstanceField' "UtilizationMetricsCpuMaximum"

pattern ExportableInstanceField_UtilizationMetricsDiskReadBytesPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsDiskReadBytesPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsDiskReadBytesPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsDiskReadOpsPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsDiskReadOpsPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsDiskReadOpsPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsDiskWriteBytesPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsDiskWriteBytesPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsDiskWriteBytesPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsDiskWriteOpsPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsDiskWriteOpsPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsDiskWriteOpsPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsEbsReadBytesPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsEbsReadBytesPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsEbsReadBytesPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsEbsReadOpsPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsEbsReadOpsPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsEbsReadOpsPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsEbsWriteBytesPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsEbsWriteBytesPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsEbsWriteBytesPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsEbsWriteOpsPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsEbsWriteOpsPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsEbsWriteOpsPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsMemoryMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsMemoryMaximum = ExportableInstanceField' "UtilizationMetricsMemoryMaximum"

pattern ExportableInstanceField_UtilizationMetricsNetworkInBytesPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsNetworkInBytesPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsNetworkInBytesPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsNetworkOutBytesPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsNetworkOutBytesPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsNetworkOutBytesPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsNetworkPacketsInPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsNetworkPacketsInPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsNetworkPacketsInPerSecondMaximum"

pattern ExportableInstanceField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum :: ExportableInstanceField
pattern ExportableInstanceField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum = ExportableInstanceField' "UtilizationMetricsNetworkPacketsOutPerSecondMaximum"

{-# COMPLETE
  ExportableInstanceField_AccountId,
  ExportableInstanceField_CurrentInstanceType,
  ExportableInstanceField_CurrentMemory,
  ExportableInstanceField_CurrentNetwork,
  ExportableInstanceField_CurrentOnDemandPrice,
  ExportableInstanceField_CurrentStandardOneYearNoUpfrontReservedPrice,
  ExportableInstanceField_CurrentStandardThreeYearNoUpfrontReservedPrice,
  ExportableInstanceField_CurrentStorage,
  ExportableInstanceField_CurrentVCpus,
  ExportableInstanceField_Finding,
  ExportableInstanceField_FindingReasonCodes,
  ExportableInstanceField_InstanceArn,
  ExportableInstanceField_InstanceName,
  ExportableInstanceField_LastRefreshTimestamp,
  ExportableInstanceField_LookbackPeriodInDays,
  ExportableInstanceField_RecommendationOptionsInstanceType,
  ExportableInstanceField_RecommendationOptionsMemory,
  ExportableInstanceField_RecommendationOptionsNetwork,
  ExportableInstanceField_RecommendationOptionsOnDemandPrice,
  ExportableInstanceField_RecommendationOptionsPerformanceRisk,
  ExportableInstanceField_RecommendationOptionsPlatformDifferences,
  ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsCpuMaximum,
  ExportableInstanceField_RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum,
  ExportableInstanceField_RecommendationOptionsStandardOneYearNoUpfrontReservedPrice,
  ExportableInstanceField_RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice,
  ExportableInstanceField_RecommendationOptionsStorage,
  ExportableInstanceField_RecommendationOptionsVcpus,
  ExportableInstanceField_RecommendationsSourcesRecommendationSourceArn,
  ExportableInstanceField_RecommendationsSourcesRecommendationSourceType,
  ExportableInstanceField_UtilizationMetricsCpuMaximum,
  ExportableInstanceField_UtilizationMetricsDiskReadBytesPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsDiskReadOpsPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsDiskWriteBytesPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsDiskWriteOpsPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsEbsReadBytesPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsEbsReadOpsPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsEbsWriteBytesPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsEbsWriteOpsPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsMemoryMaximum,
  ExportableInstanceField_UtilizationMetricsNetworkInBytesPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsNetworkOutBytesPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsNetworkPacketsInPerSecondMaximum,
  ExportableInstanceField_UtilizationMetricsNetworkPacketsOutPerSecondMaximum,
  ExportableInstanceField'
  #-}
