slot0 = class("Story")
slot0.MODE_ASIDE = 1
slot0.MODE_DIALOGUE = 2
slot0.MODE_BG = 3

function slot0.GetStoryStepCls(slot0)
	return ({
		AsideStep,
		DialogueStep,
		BgStep
	})[slot0]
end

function slot0.Ctor(slot0, slot1, slot2, slot3)
	slot0.name = slot1.id
	slot0.mode = slot1.mode
	slot0.once = slot1.once
	slot0.fadeOut = slot1.fadeOut
	slot0.hideSkip = slot1.hideSkip
	slot0.skipTip = defaultValue(slot1.skipTip, true)
	slot0.noWaitFade = defaultValue(slot1.noWaitFade, false)
	slot0.steps = {}

	for slot7, slot8 in ipairs(slot1.scripts) do
		table.insert(slot0.steps, uv0.GetStoryStepCls(slot8.mode or slot0.mode).New(slot8))
	end

	slot0.branchCode = nil
	slot0.force = slot2
	slot0.isReview = slot3
	slot0.isPlayed = pg.NewStoryMgr:GetInstance():IsPlayed(slot0.name)
	slot0.nextScriptName = nil
	slot0.skipAll = false
end

function slot0.ShowSkipTip(slot0)
	return slot0.skipTip
end

function slot0.ShouldWaitFadeout(slot0)
	return not slot0.noWaitFade
end

function slot0.ShouldHideSkip(slot0)
	return slot0.hideSkip
end

function slot0.CanPlay(slot0)
	return slot0.force or not slot0.isPlayed or slot0.isReview
end

function slot0.GetId(slot0)
	return slot0.name
end

function slot0.GetName(slot0)
	return slot0.name
end

function slot0.GetStepByIndex(slot0, slot1)
	if not slot0.steps[slot1] or slot0.branchCode and not slot2:IsSameBranch(slot0.branchCode) then
		return nil
	end

	return slot2
end

function slot0.GetNextStep(slot0, slot1)
	if slot1 >= #slot0.steps then
		return nil
	end

	if not slot0:GetStepByIndex(slot1 + 1) and slot2 < #slot0.steps then
		return slot0:GetNextStep(slot2)
	else
		return slot3
	end
end

function slot0.GetPrevStep(slot0, slot1)
	if slot1 <= 1 then
		return nil
	end

	if not slot0:GetStepByIndex(slot1 - 1) and slot2 > 1 then
		return slot0:GetPrevStep(slot2)
	else
		return slot3
	end
end

function slot0.ShouldFadeout(slot0)
	return slot0.fadeOut ~= nil
end

function slot0.GetFadeoutTime(slot0)
	return slot0.fadeOut
end

function slot0.IsPlayed(slot0)
	return slot0.isPlayed
end

function slot0.SetBranchCode(slot0, slot1)
	slot0.branchCode = slot1
end

function slot0.GetBranchCode(slot0)
	return slot0.branchCode
end

function slot0.GetNextScriptName(slot0)
	return slot0.nextScriptName
end

function slot0.SetNextScriptName(slot0, slot1)
	slot0.nextScriptName = slot1
end

function slot0.SkipAll(slot0)
	slot0.skipAll = true
end

function slot0.StopSkip(slot0)
	slot0.skipAll = false
end

function slot0.ShouldSkipAll(slot0)
	return slot0.skipAll
end

return slot0
