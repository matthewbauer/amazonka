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
-- Module      : Amazonka.LexModels.StartImport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a job to import a resource to Amazon Lex.
module Amazonka.LexModels.StartImport
  ( -- * Creating a Request
    StartImport (..),
    newStartImport,

    -- * Request Lenses
    startImport_tags,
    startImport_payload,
    startImport_resourceType,
    startImport_mergeStrategy,

    -- * Destructuring the Response
    StartImportResponse (..),
    newStartImportResponse,

    -- * Response Lenses
    startImportResponse_resourceType,
    startImportResponse_importId,
    startImportResponse_createdDate,
    startImportResponse_name,
    startImportResponse_mergeStrategy,
    startImportResponse_importStatus,
    startImportResponse_tags,
    startImportResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexModels.Types
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newStartImport' smart constructor.
data StartImport = StartImport'
  { -- | A list of tags to add to the imported bot. You can only add tags when
    -- you import a bot, you can\'t add tags to an intent or slot type.
    tags :: Prelude.Maybe [Tag],
    -- | A zip archive in binary format. The archive should contain one file, a
    -- JSON file containing the resource to import. The resource should match
    -- the type specified in the @resourceType@ field.
    payload :: Core.Base64,
    -- | Specifies the type of resource to export. Each resource also exports any
    -- resources that it depends on.
    --
    -- -   A bot exports dependent intents.
    --
    -- -   An intent exports dependent slot types.
    resourceType :: ResourceType,
    -- | Specifies the action that the @StartImport@ operation should take when
    -- there is an existing resource with the same name.
    --
    -- -   FAIL_ON_CONFLICT - The import operation is stopped on the first
    --     conflict between a resource in the import file and an existing
    --     resource. The name of the resource causing the conflict is in the
    --     @failureReason@ field of the response to the @GetImport@ operation.
    --
    --     OVERWRITE_LATEST - The import operation proceeds even if there is a
    --     conflict with an existing resource. The $LASTEST version of the
    --     existing resource is overwritten with the data from the import file.
    mergeStrategy :: MergeStrategy
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartImport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'startImport_tags' - A list of tags to add to the imported bot. You can only add tags when
-- you import a bot, you can\'t add tags to an intent or slot type.
--
-- 'payload', 'startImport_payload' - A zip archive in binary format. The archive should contain one file, a
-- JSON file containing the resource to import. The resource should match
-- the type specified in the @resourceType@ field.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'resourceType', 'startImport_resourceType' - Specifies the type of resource to export. Each resource also exports any
-- resources that it depends on.
--
-- -   A bot exports dependent intents.
--
-- -   An intent exports dependent slot types.
--
-- 'mergeStrategy', 'startImport_mergeStrategy' - Specifies the action that the @StartImport@ operation should take when
-- there is an existing resource with the same name.
--
-- -   FAIL_ON_CONFLICT - The import operation is stopped on the first
--     conflict between a resource in the import file and an existing
--     resource. The name of the resource causing the conflict is in the
--     @failureReason@ field of the response to the @GetImport@ operation.
--
--     OVERWRITE_LATEST - The import operation proceeds even if there is a
--     conflict with an existing resource. The $LASTEST version of the
--     existing resource is overwritten with the data from the import file.
newStartImport ::
  -- | 'payload'
  Prelude.ByteString ->
  -- | 'resourceType'
  ResourceType ->
  -- | 'mergeStrategy'
  MergeStrategy ->
  StartImport
newStartImport
  pPayload_
  pResourceType_
  pMergeStrategy_ =
    StartImport'
      { tags = Prelude.Nothing,
        payload = Core._Base64 Lens.# pPayload_,
        resourceType = pResourceType_,
        mergeStrategy = pMergeStrategy_
      }

-- | A list of tags to add to the imported bot. You can only add tags when
-- you import a bot, you can\'t add tags to an intent or slot type.
startImport_tags :: Lens.Lens' StartImport (Prelude.Maybe [Tag])
startImport_tags = Lens.lens (\StartImport' {tags} -> tags) (\s@StartImport' {} a -> s {tags = a} :: StartImport) Prelude.. Lens.mapping Lens.coerced

-- | A zip archive in binary format. The archive should contain one file, a
-- JSON file containing the resource to import. The resource should match
-- the type specified in the @resourceType@ field.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
startImport_payload :: Lens.Lens' StartImport Prelude.ByteString
startImport_payload = Lens.lens (\StartImport' {payload} -> payload) (\s@StartImport' {} a -> s {payload = a} :: StartImport) Prelude.. Core._Base64

-- | Specifies the type of resource to export. Each resource also exports any
-- resources that it depends on.
--
-- -   A bot exports dependent intents.
--
-- -   An intent exports dependent slot types.
startImport_resourceType :: Lens.Lens' StartImport ResourceType
startImport_resourceType = Lens.lens (\StartImport' {resourceType} -> resourceType) (\s@StartImport' {} a -> s {resourceType = a} :: StartImport)

-- | Specifies the action that the @StartImport@ operation should take when
-- there is an existing resource with the same name.
--
-- -   FAIL_ON_CONFLICT - The import operation is stopped on the first
--     conflict between a resource in the import file and an existing
--     resource. The name of the resource causing the conflict is in the
--     @failureReason@ field of the response to the @GetImport@ operation.
--
--     OVERWRITE_LATEST - The import operation proceeds even if there is a
--     conflict with an existing resource. The $LASTEST version of the
--     existing resource is overwritten with the data from the import file.
startImport_mergeStrategy :: Lens.Lens' StartImport MergeStrategy
startImport_mergeStrategy = Lens.lens (\StartImport' {mergeStrategy} -> mergeStrategy) (\s@StartImport' {} a -> s {mergeStrategy = a} :: StartImport)

instance Core.AWSRequest StartImport where
  type AWSResponse StartImport = StartImportResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartImportResponse'
            Prelude.<$> (x Core..?> "resourceType")
            Prelude.<*> (x Core..?> "importId")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "mergeStrategy")
            Prelude.<*> (x Core..?> "importStatus")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartImport where
  hashWithSalt _salt StartImport' {..} =
    _salt `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` payload
      `Prelude.hashWithSalt` resourceType
      `Prelude.hashWithSalt` mergeStrategy

instance Prelude.NFData StartImport where
  rnf StartImport' {..} =
    Prelude.rnf tags
      `Prelude.seq` Prelude.rnf payload
      `Prelude.seq` Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf mergeStrategy

instance Core.ToHeaders StartImport where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartImport where
  toJSON StartImport' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("payload" Core..= payload),
            Prelude.Just ("resourceType" Core..= resourceType),
            Prelude.Just
              ("mergeStrategy" Core..= mergeStrategy)
          ]
      )

instance Core.ToPath StartImport where
  toPath = Prelude.const "/imports/"

instance Core.ToQuery StartImport where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartImportResponse' smart constructor.
data StartImportResponse = StartImportResponse'
  { -- | The type of resource to import.
    resourceType :: Prelude.Maybe ResourceType,
    -- | The identifier for the specific import job.
    importId :: Prelude.Maybe Prelude.Text,
    -- | A timestamp for the date and time that the import job was requested.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | The name given to the import job.
    name :: Prelude.Maybe Prelude.Text,
    -- | The action to take when there is a merge conflict.
    mergeStrategy :: Prelude.Maybe MergeStrategy,
    -- | The status of the import job. If the status is @FAILED@, you can get the
    -- reason for the failure using the @GetImport@ operation.
    importStatus :: Prelude.Maybe ImportStatus,
    -- | A list of tags added to the imported bot.
    tags :: Prelude.Maybe [Tag],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartImportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceType', 'startImportResponse_resourceType' - The type of resource to import.
--
-- 'importId', 'startImportResponse_importId' - The identifier for the specific import job.
--
-- 'createdDate', 'startImportResponse_createdDate' - A timestamp for the date and time that the import job was requested.
--
-- 'name', 'startImportResponse_name' - The name given to the import job.
--
-- 'mergeStrategy', 'startImportResponse_mergeStrategy' - The action to take when there is a merge conflict.
--
-- 'importStatus', 'startImportResponse_importStatus' - The status of the import job. If the status is @FAILED@, you can get the
-- reason for the failure using the @GetImport@ operation.
--
-- 'tags', 'startImportResponse_tags' - A list of tags added to the imported bot.
--
-- 'httpStatus', 'startImportResponse_httpStatus' - The response's http status code.
newStartImportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartImportResponse
newStartImportResponse pHttpStatus_ =
  StartImportResponse'
    { resourceType =
        Prelude.Nothing,
      importId = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      name = Prelude.Nothing,
      mergeStrategy = Prelude.Nothing,
      importStatus = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The type of resource to import.
startImportResponse_resourceType :: Lens.Lens' StartImportResponse (Prelude.Maybe ResourceType)
startImportResponse_resourceType = Lens.lens (\StartImportResponse' {resourceType} -> resourceType) (\s@StartImportResponse' {} a -> s {resourceType = a} :: StartImportResponse)

-- | The identifier for the specific import job.
startImportResponse_importId :: Lens.Lens' StartImportResponse (Prelude.Maybe Prelude.Text)
startImportResponse_importId = Lens.lens (\StartImportResponse' {importId} -> importId) (\s@StartImportResponse' {} a -> s {importId = a} :: StartImportResponse)

-- | A timestamp for the date and time that the import job was requested.
startImportResponse_createdDate :: Lens.Lens' StartImportResponse (Prelude.Maybe Prelude.UTCTime)
startImportResponse_createdDate = Lens.lens (\StartImportResponse' {createdDate} -> createdDate) (\s@StartImportResponse' {} a -> s {createdDate = a} :: StartImportResponse) Prelude.. Lens.mapping Core._Time

-- | The name given to the import job.
startImportResponse_name :: Lens.Lens' StartImportResponse (Prelude.Maybe Prelude.Text)
startImportResponse_name = Lens.lens (\StartImportResponse' {name} -> name) (\s@StartImportResponse' {} a -> s {name = a} :: StartImportResponse)

-- | The action to take when there is a merge conflict.
startImportResponse_mergeStrategy :: Lens.Lens' StartImportResponse (Prelude.Maybe MergeStrategy)
startImportResponse_mergeStrategy = Lens.lens (\StartImportResponse' {mergeStrategy} -> mergeStrategy) (\s@StartImportResponse' {} a -> s {mergeStrategy = a} :: StartImportResponse)

-- | The status of the import job. If the status is @FAILED@, you can get the
-- reason for the failure using the @GetImport@ operation.
startImportResponse_importStatus :: Lens.Lens' StartImportResponse (Prelude.Maybe ImportStatus)
startImportResponse_importStatus = Lens.lens (\StartImportResponse' {importStatus} -> importStatus) (\s@StartImportResponse' {} a -> s {importStatus = a} :: StartImportResponse)

-- | A list of tags added to the imported bot.
startImportResponse_tags :: Lens.Lens' StartImportResponse (Prelude.Maybe [Tag])
startImportResponse_tags = Lens.lens (\StartImportResponse' {tags} -> tags) (\s@StartImportResponse' {} a -> s {tags = a} :: StartImportResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
startImportResponse_httpStatus :: Lens.Lens' StartImportResponse Prelude.Int
startImportResponse_httpStatus = Lens.lens (\StartImportResponse' {httpStatus} -> httpStatus) (\s@StartImportResponse' {} a -> s {httpStatus = a} :: StartImportResponse)

instance Prelude.NFData StartImportResponse where
  rnf StartImportResponse' {..} =
    Prelude.rnf resourceType
      `Prelude.seq` Prelude.rnf importId
      `Prelude.seq` Prelude.rnf createdDate
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf mergeStrategy
      `Prelude.seq` Prelude.rnf importStatus
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf httpStatus
