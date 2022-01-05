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
-- Module      : Amazonka.LexModels.Types.Slot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.LexModels.Types.Slot where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.LexModels.Types.ObfuscationSetting
import Amazonka.LexModels.Types.Prompt
import Amazonka.LexModels.Types.SlotConstraint
import Amazonka.LexModels.Types.SlotDefaultValueSpec
import qualified Amazonka.Prelude as Prelude

-- | Identifies the version of a specific slot.
--
-- /See:/ 'newSlot' smart constructor.
data Slot = Slot'
  { -- | The type of the slot, either a custom slot type that you defined or one
    -- of the built-in slot types.
    slotType :: Prelude.Maybe Prelude.Text,
    -- | The prompt that Amazon Lex uses to elicit the slot value from the user.
    valueElicitationPrompt :: Prelude.Maybe Prompt,
    -- | A set of possible responses for the slot type used by text-based
    -- clients. A user chooses an option from the response card, instead of
    -- using text to reply.
    responseCard :: Prelude.Maybe Prelude.Text,
    -- | Directs Amazon Lex the order in which to elicit this slot value from the
    -- user. For example, if the intent has two slots with priorities 1 and 2,
    -- AWS Amazon Lex first elicits a value for the slot with priority 1.
    --
    -- If multiple slots share the same priority, the order in which Amazon Lex
    -- elicits values is arbitrary.
    priority :: Prelude.Maybe Prelude.Natural,
    -- | Determines whether a slot is obfuscated in conversation logs and stored
    -- utterances. When you obfuscate a slot, the value is replaced by the slot
    -- name in curly braces ({}). For example, if the slot name is
    -- \"full_name\", obfuscated values are replaced with \"{full_name}\". For
    -- more information, see
    -- <https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html Slot Obfuscation>
    -- .
    obfuscationSetting :: Prelude.Maybe ObfuscationSetting,
    -- | A list of default values for the slot. Default values are used when
    -- Amazon Lex hasn\'t determined a value for a slot. You can specify
    -- default values from context variables, session attributes, and defined
    -- values.
    defaultValueSpec :: Prelude.Maybe SlotDefaultValueSpec,
    -- | The version of the slot type.
    slotTypeVersion :: Prelude.Maybe Prelude.Text,
    -- | If you know a specific pattern with which users might respond to an
    -- Amazon Lex request for a slot value, you can provide those utterances to
    -- improve accuracy. This is optional. In most cases, Amazon Lex is capable
    -- of understanding user utterances.
    sampleUtterances :: Prelude.Maybe [Prelude.Text],
    -- | A description of the slot.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the slot.
    name :: Prelude.Text,
    -- | Specifies whether the slot is required or optional.
    slotConstraint :: SlotConstraint
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Slot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'slotType', 'slot_slotType' - The type of the slot, either a custom slot type that you defined or one
-- of the built-in slot types.
--
-- 'valueElicitationPrompt', 'slot_valueElicitationPrompt' - The prompt that Amazon Lex uses to elicit the slot value from the user.
--
-- 'responseCard', 'slot_responseCard' - A set of possible responses for the slot type used by text-based
-- clients. A user chooses an option from the response card, instead of
-- using text to reply.
--
-- 'priority', 'slot_priority' - Directs Amazon Lex the order in which to elicit this slot value from the
-- user. For example, if the intent has two slots with priorities 1 and 2,
-- AWS Amazon Lex first elicits a value for the slot with priority 1.
--
-- If multiple slots share the same priority, the order in which Amazon Lex
-- elicits values is arbitrary.
--
-- 'obfuscationSetting', 'slot_obfuscationSetting' - Determines whether a slot is obfuscated in conversation logs and stored
-- utterances. When you obfuscate a slot, the value is replaced by the slot
-- name in curly braces ({}). For example, if the slot name is
-- \"full_name\", obfuscated values are replaced with \"{full_name}\". For
-- more information, see
-- <https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html Slot Obfuscation>
-- .
--
-- 'defaultValueSpec', 'slot_defaultValueSpec' - A list of default values for the slot. Default values are used when
-- Amazon Lex hasn\'t determined a value for a slot. You can specify
-- default values from context variables, session attributes, and defined
-- values.
--
-- 'slotTypeVersion', 'slot_slotTypeVersion' - The version of the slot type.
--
-- 'sampleUtterances', 'slot_sampleUtterances' - If you know a specific pattern with which users might respond to an
-- Amazon Lex request for a slot value, you can provide those utterances to
-- improve accuracy. This is optional. In most cases, Amazon Lex is capable
-- of understanding user utterances.
--
-- 'description', 'slot_description' - A description of the slot.
--
-- 'name', 'slot_name' - The name of the slot.
--
-- 'slotConstraint', 'slot_slotConstraint' - Specifies whether the slot is required or optional.
newSlot ::
  -- | 'name'
  Prelude.Text ->
  -- | 'slotConstraint'
  SlotConstraint ->
  Slot
newSlot pName_ pSlotConstraint_ =
  Slot'
    { slotType = Prelude.Nothing,
      valueElicitationPrompt = Prelude.Nothing,
      responseCard = Prelude.Nothing,
      priority = Prelude.Nothing,
      obfuscationSetting = Prelude.Nothing,
      defaultValueSpec = Prelude.Nothing,
      slotTypeVersion = Prelude.Nothing,
      sampleUtterances = Prelude.Nothing,
      description = Prelude.Nothing,
      name = pName_,
      slotConstraint = pSlotConstraint_
    }

-- | The type of the slot, either a custom slot type that you defined or one
-- of the built-in slot types.
slot_slotType :: Lens.Lens' Slot (Prelude.Maybe Prelude.Text)
slot_slotType = Lens.lens (\Slot' {slotType} -> slotType) (\s@Slot' {} a -> s {slotType = a} :: Slot)

-- | The prompt that Amazon Lex uses to elicit the slot value from the user.
slot_valueElicitationPrompt :: Lens.Lens' Slot (Prelude.Maybe Prompt)
slot_valueElicitationPrompt = Lens.lens (\Slot' {valueElicitationPrompt} -> valueElicitationPrompt) (\s@Slot' {} a -> s {valueElicitationPrompt = a} :: Slot)

-- | A set of possible responses for the slot type used by text-based
-- clients. A user chooses an option from the response card, instead of
-- using text to reply.
slot_responseCard :: Lens.Lens' Slot (Prelude.Maybe Prelude.Text)
slot_responseCard = Lens.lens (\Slot' {responseCard} -> responseCard) (\s@Slot' {} a -> s {responseCard = a} :: Slot)

-- | Directs Amazon Lex the order in which to elicit this slot value from the
-- user. For example, if the intent has two slots with priorities 1 and 2,
-- AWS Amazon Lex first elicits a value for the slot with priority 1.
--
-- If multiple slots share the same priority, the order in which Amazon Lex
-- elicits values is arbitrary.
slot_priority :: Lens.Lens' Slot (Prelude.Maybe Prelude.Natural)
slot_priority = Lens.lens (\Slot' {priority} -> priority) (\s@Slot' {} a -> s {priority = a} :: Slot)

-- | Determines whether a slot is obfuscated in conversation logs and stored
-- utterances. When you obfuscate a slot, the value is replaced by the slot
-- name in curly braces ({}). For example, if the slot name is
-- \"full_name\", obfuscated values are replaced with \"{full_name}\". For
-- more information, see
-- <https://docs.aws.amazon.com/lex/latest/dg/how-obfuscate.html Slot Obfuscation>
-- .
slot_obfuscationSetting :: Lens.Lens' Slot (Prelude.Maybe ObfuscationSetting)
slot_obfuscationSetting = Lens.lens (\Slot' {obfuscationSetting} -> obfuscationSetting) (\s@Slot' {} a -> s {obfuscationSetting = a} :: Slot)

-- | A list of default values for the slot. Default values are used when
-- Amazon Lex hasn\'t determined a value for a slot. You can specify
-- default values from context variables, session attributes, and defined
-- values.
slot_defaultValueSpec :: Lens.Lens' Slot (Prelude.Maybe SlotDefaultValueSpec)
slot_defaultValueSpec = Lens.lens (\Slot' {defaultValueSpec} -> defaultValueSpec) (\s@Slot' {} a -> s {defaultValueSpec = a} :: Slot)

-- | The version of the slot type.
slot_slotTypeVersion :: Lens.Lens' Slot (Prelude.Maybe Prelude.Text)
slot_slotTypeVersion = Lens.lens (\Slot' {slotTypeVersion} -> slotTypeVersion) (\s@Slot' {} a -> s {slotTypeVersion = a} :: Slot)

-- | If you know a specific pattern with which users might respond to an
-- Amazon Lex request for a slot value, you can provide those utterances to
-- improve accuracy. This is optional. In most cases, Amazon Lex is capable
-- of understanding user utterances.
slot_sampleUtterances :: Lens.Lens' Slot (Prelude.Maybe [Prelude.Text])
slot_sampleUtterances = Lens.lens (\Slot' {sampleUtterances} -> sampleUtterances) (\s@Slot' {} a -> s {sampleUtterances = a} :: Slot) Prelude.. Lens.mapping Lens.coerced

-- | A description of the slot.
slot_description :: Lens.Lens' Slot (Prelude.Maybe Prelude.Text)
slot_description = Lens.lens (\Slot' {description} -> description) (\s@Slot' {} a -> s {description = a} :: Slot)

-- | The name of the slot.
slot_name :: Lens.Lens' Slot Prelude.Text
slot_name = Lens.lens (\Slot' {name} -> name) (\s@Slot' {} a -> s {name = a} :: Slot)

-- | Specifies whether the slot is required or optional.
slot_slotConstraint :: Lens.Lens' Slot SlotConstraint
slot_slotConstraint = Lens.lens (\Slot' {slotConstraint} -> slotConstraint) (\s@Slot' {} a -> s {slotConstraint = a} :: Slot)

instance Core.FromJSON Slot where
  parseJSON =
    Core.withObject
      "Slot"
      ( \x ->
          Slot'
            Prelude.<$> (x Core..:? "slotType")
            Prelude.<*> (x Core..:? "valueElicitationPrompt")
            Prelude.<*> (x Core..:? "responseCard")
            Prelude.<*> (x Core..:? "priority")
            Prelude.<*> (x Core..:? "obfuscationSetting")
            Prelude.<*> (x Core..:? "defaultValueSpec")
            Prelude.<*> (x Core..:? "slotTypeVersion")
            Prelude.<*> ( x Core..:? "sampleUtterances"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "description")
            Prelude.<*> (x Core..: "name")
            Prelude.<*> (x Core..: "slotConstraint")
      )

instance Prelude.Hashable Slot where
  hashWithSalt _salt Slot' {..} =
    _salt `Prelude.hashWithSalt` slotType
      `Prelude.hashWithSalt` valueElicitationPrompt
      `Prelude.hashWithSalt` responseCard
      `Prelude.hashWithSalt` priority
      `Prelude.hashWithSalt` obfuscationSetting
      `Prelude.hashWithSalt` defaultValueSpec
      `Prelude.hashWithSalt` slotTypeVersion
      `Prelude.hashWithSalt` sampleUtterances
      `Prelude.hashWithSalt` description
      `Prelude.hashWithSalt` name
      `Prelude.hashWithSalt` slotConstraint

instance Prelude.NFData Slot where
  rnf Slot' {..} =
    Prelude.rnf slotType
      `Prelude.seq` Prelude.rnf valueElicitationPrompt
      `Prelude.seq` Prelude.rnf responseCard
      `Prelude.seq` Prelude.rnf priority
      `Prelude.seq` Prelude.rnf obfuscationSetting
      `Prelude.seq` Prelude.rnf defaultValueSpec
      `Prelude.seq` Prelude.rnf slotTypeVersion
      `Prelude.seq` Prelude.rnf sampleUtterances
      `Prelude.seq` Prelude.rnf description
      `Prelude.seq` Prelude.rnf name
      `Prelude.seq` Prelude.rnf slotConstraint

instance Core.ToJSON Slot where
  toJSON Slot' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("slotType" Core..=) Prelude.<$> slotType,
            ("valueElicitationPrompt" Core..=)
              Prelude.<$> valueElicitationPrompt,
            ("responseCard" Core..=) Prelude.<$> responseCard,
            ("priority" Core..=) Prelude.<$> priority,
            ("obfuscationSetting" Core..=)
              Prelude.<$> obfuscationSetting,
            ("defaultValueSpec" Core..=)
              Prelude.<$> defaultValueSpec,
            ("slotTypeVersion" Core..=)
              Prelude.<$> slotTypeVersion,
            ("sampleUtterances" Core..=)
              Prelude.<$> sampleUtterances,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ("slotConstraint" Core..= slotConstraint)
          ]
      )
