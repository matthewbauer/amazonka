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
-- Module      : Amazonka.SageMaker.CreateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an /action/. An action is a lineage tracking entity that
-- represents an action or activity. For example, a model deployment or an
-- HPO job. Generally, an action involves at least one input or output
-- artifact. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html Amazon SageMaker ML Lineage Tracking>.
module Amazonka.SageMaker.CreateAction
  ( -- * Creating a Request
    CreateAction (..),
    newCreateAction,

    -- * Request Lenses
    createAction_metadataProperties,
    createAction_status,
    createAction_description,
    createAction_tags,
    createAction_properties,
    createAction_actionName,
    createAction_source,
    createAction_actionType,

    -- * Destructuring the Response
    CreateActionResponse (..),
    newCreateActionResponse,

    -- * Response Lenses
    createActionResponse_actionArn,
    createActionResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.SageMaker.Types

-- | /See:/ 'newCreateAction' smart constructor.
data CreateAction = CreateAction'
  { metadataProperties :: Prelude.Maybe MetadataProperties,
    -- | The status of the action.
    status :: Prelude.Maybe ActionStatus,
    -- | The description of the action.
    description :: Prelude.Maybe Prelude.Text,
    -- | A list of tags to apply to the action.
    tags :: Prelude.Maybe [Tag],
    -- | A list of properties to add to the action.
    properties :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the action. Must be unique to your account in an Amazon Web
    -- Services Region.
    actionName :: Prelude.Text,
    -- | The source type, ID, and URI.
    source :: ActionSource,
    -- | The action type.
    actionType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metadataProperties', 'createAction_metadataProperties' - Undocumented member.
--
-- 'status', 'createAction_status' - The status of the action.
--
-- 'description', 'createAction_description' - The description of the action.
--
-- 'tags', 'createAction_tags' - A list of tags to apply to the action.
--
-- 'properties', 'createAction_properties' - A list of properties to add to the action.
--
-- 'actionName', 'createAction_actionName' - The name of the action. Must be unique to your account in an Amazon Web
-- Services Region.
--
-- 'source', 'createAction_source' - The source type, ID, and URI.
--
-- 'actionType', 'createAction_actionType' - The action type.
newCreateAction ::
  -- | 'actionName'
  Prelude.Text ->
  -- | 'source'
  ActionSource ->
  -- | 'actionType'
  Prelude.Text ->
  CreateAction
newCreateAction pActionName_ pSource_ pActionType_ =
  CreateAction'
    { metadataProperties = Prelude.Nothing,
      status = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      properties = Prelude.Nothing,
      actionName = pActionName_,
      source = pSource_,
      actionType = pActionType_
    }

-- | Undocumented member.
createAction_metadataProperties :: Lens.Lens' CreateAction (Prelude.Maybe MetadataProperties)
createAction_metadataProperties = Lens.lens (\CreateAction' {metadataProperties} -> metadataProperties) (\s@CreateAction' {} a -> s {metadataProperties = a} :: CreateAction)

-- | The status of the action.
createAction_status :: Lens.Lens' CreateAction (Prelude.Maybe ActionStatus)
createAction_status = Lens.lens (\CreateAction' {status} -> status) (\s@CreateAction' {} a -> s {status = a} :: CreateAction)

-- | The description of the action.
createAction_description :: Lens.Lens' CreateAction (Prelude.Maybe Prelude.Text)
createAction_description = Lens.lens (\CreateAction' {description} -> description) (\s@CreateAction' {} a -> s {description = a} :: CreateAction)

-- | A list of tags to apply to the action.
createAction_tags :: Lens.Lens' CreateAction (Prelude.Maybe [Tag])
createAction_tags = Lens.lens (\CreateAction' {tags} -> tags) (\s@CreateAction' {} a -> s {tags = a} :: CreateAction) Prelude.. Lens.mapping Lens.coerced

-- | A list of properties to add to the action.
createAction_properties :: Lens.Lens' CreateAction (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAction_properties = Lens.lens (\CreateAction' {properties} -> properties) (\s@CreateAction' {} a -> s {properties = a} :: CreateAction) Prelude.. Lens.mapping Lens.coerced

-- | The name of the action. Must be unique to your account in an Amazon Web
-- Services Region.
createAction_actionName :: Lens.Lens' CreateAction Prelude.Text
createAction_actionName = Lens.lens (\CreateAction' {actionName} -> actionName) (\s@CreateAction' {} a -> s {actionName = a} :: CreateAction)

-- | The source type, ID, and URI.
createAction_source :: Lens.Lens' CreateAction ActionSource
createAction_source = Lens.lens (\CreateAction' {source} -> source) (\s@CreateAction' {} a -> s {source = a} :: CreateAction)

-- | The action type.
createAction_actionType :: Lens.Lens' CreateAction Prelude.Text
createAction_actionType = Lens.lens (\CreateAction' {actionType} -> actionType) (\s@CreateAction' {} a -> s {actionType = a} :: CreateAction)

instance Core.AWSRequest CreateAction where
  type AWSResponse CreateAction = CreateActionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateActionResponse'
            Prelude.<$> (x Core..?> "ActionArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAction where
  hashWithSalt salt' CreateAction' {..} =
    salt' `Prelude.hashWithSalt` actionType
      `Prelude.hashWithSalt` source
      `Prelude.hashWithSalt` actionName
      `Prelude.hashWithSalt` properties
      `Prelude.hashWithSalt` tags
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` metadataProperties

instance Prelude.NFData CreateAction where
  rnf CreateAction' {..} =
    Prelude.rnf metadataProperties
      `Prelude.seq` Prelude.rnf actionType
      `Prelude.seq` Prelude.rnf source
      `Prelude.seq` Prelude.rnf actionName
      `Prelude.seq` Prelude.rnf properties
      `Prelude.seq` Prelude.rnf tags
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf status

instance Core.ToHeaders CreateAction where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("SageMaker.CreateAction" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAction where
  toJSON CreateAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MetadataProperties" Core..=)
              Prelude.<$> metadataProperties,
            ("Status" Core..=) Prelude.<$> status,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            ("Properties" Core..=) Prelude.<$> properties,
            Prelude.Just ("ActionName" Core..= actionName),
            Prelude.Just ("Source" Core..= source),
            Prelude.Just ("ActionType" Core..= actionType)
          ]
      )

instance Core.ToPath CreateAction where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateAction where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateActionResponse' smart constructor.
data CreateActionResponse = CreateActionResponse'
  { -- | The Amazon Resource Name (ARN) of the action.
    actionArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateActionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actionArn', 'createActionResponse_actionArn' - The Amazon Resource Name (ARN) of the action.
--
-- 'httpStatus', 'createActionResponse_httpStatus' - The response's http status code.
newCreateActionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateActionResponse
newCreateActionResponse pHttpStatus_ =
  CreateActionResponse'
    { actionArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the action.
createActionResponse_actionArn :: Lens.Lens' CreateActionResponse (Prelude.Maybe Prelude.Text)
createActionResponse_actionArn = Lens.lens (\CreateActionResponse' {actionArn} -> actionArn) (\s@CreateActionResponse' {} a -> s {actionArn = a} :: CreateActionResponse)

-- | The response's http status code.
createActionResponse_httpStatus :: Lens.Lens' CreateActionResponse Prelude.Int
createActionResponse_httpStatus = Lens.lens (\CreateActionResponse' {httpStatus} -> httpStatus) (\s@CreateActionResponse' {} a -> s {httpStatus = a} :: CreateActionResponse)

instance Prelude.NFData CreateActionResponse where
  rnf CreateActionResponse' {..} =
    Prelude.rnf actionArn
      `Prelude.seq` Prelude.rnf httpStatus
