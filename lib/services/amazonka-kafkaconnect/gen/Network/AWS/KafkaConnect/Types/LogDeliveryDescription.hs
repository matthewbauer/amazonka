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
-- Module      : Amazonka.KafkaConnect.Types.LogDeliveryDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.KafkaConnect.Types.LogDeliveryDescription where

import qualified Amazonka.Core as Core
import Amazonka.KafkaConnect.Types.WorkerLogDeliveryDescription
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The description of the log delivery settings.
--
-- /See:/ 'newLogDeliveryDescription' smart constructor.
data LogDeliveryDescription = LogDeliveryDescription'
  { -- | The workers can send worker logs to different destination types. This
    -- configuration specifies the details of these destinations.
    workerLogDelivery :: Prelude.Maybe WorkerLogDeliveryDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LogDeliveryDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workerLogDelivery', 'logDeliveryDescription_workerLogDelivery' - The workers can send worker logs to different destination types. This
-- configuration specifies the details of these destinations.
newLogDeliveryDescription ::
  LogDeliveryDescription
newLogDeliveryDescription =
  LogDeliveryDescription'
    { workerLogDelivery =
        Prelude.Nothing
    }

-- | The workers can send worker logs to different destination types. This
-- configuration specifies the details of these destinations.
logDeliveryDescription_workerLogDelivery :: Lens.Lens' LogDeliveryDescription (Prelude.Maybe WorkerLogDeliveryDescription)
logDeliveryDescription_workerLogDelivery = Lens.lens (\LogDeliveryDescription' {workerLogDelivery} -> workerLogDelivery) (\s@LogDeliveryDescription' {} a -> s {workerLogDelivery = a} :: LogDeliveryDescription)

instance Core.FromJSON LogDeliveryDescription where
  parseJSON =
    Core.withObject
      "LogDeliveryDescription"
      ( \x ->
          LogDeliveryDescription'
            Prelude.<$> (x Core..:? "workerLogDelivery")
      )

instance Prelude.Hashable LogDeliveryDescription

instance Prelude.NFData LogDeliveryDescription
