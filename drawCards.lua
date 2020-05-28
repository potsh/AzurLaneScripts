---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2020/1/21 15:35
---

-- drawCardExpectation just loop
--[[
function drawCardExpectation()
    local pCards = {0.02, 0.025, 0.025, 0.05}
    local len = #pCards

    local e1 = 0
    for i = 1, len do
        e1 = e1 + 1 / pCards[i]
    end

    local e2 = 0
    for i = 1, len - 1 do
        for j = i + 1, len do
            e2 = e2 + 1 / (pCards[i] + pCards[j])
        end
    end

    local e3 = 0
    for i = 1, len - 2 do
        for j = i + 1, len - 1 do
            for k = j + 1, len do
                e3 = e3 + 1 / (pCards[i] + pCards[j] + pCards[k])
            end
        end
    end

    local e4 = 0
    for i = 1, len - 3 do
        for j = i + 1, len - 2 do
            for k = j + 1, len - 1 do
                for l = k + 1, len do
                    e4 = e4 + 1 / (pCards[i] + pCards[j] + pCards[k] + pCards[l])
                end
            end
        end
    end

    print(e1 - e2 + e3 - e4)

end
]]--

function expCalcPolySum(probs, indexes)
    local sum = 0
    local len = #probs
    local index_count = #indexes
    if indexes[index_count] <= len then
        local sum1 = 0
        for i = 1, index_count - 1 do       -- 其中一个(k-1)子集的元素之和，S(P, k-1)   Sum(p[1],p[2],...p[k-1] )
            sum1 = sum1 + probs[indexes[i]]
        end
        for j = indexes[index_count], len do  -- 计算这一组(k-1)个index组合下的 Σ( 1/S(P, k) )
            sum = sum + 1 / (sum1 + probs[j])
        end
        indexes[index_count] = len
    end
    for i = index_count, 1, -1 do               -- 生成下一个k子集的index   从后往前扫indexes，直到找到新的一个可以前进的index，然后初始化该index后面的所有index为前一个index+1
        if indexes[i] < len + i - index_count then
            indexes[i] = indexes[i] + 1
            for j = i + 1, index_count do
                indexes[j] = indexes[j - 1] + 1
            end
            sum = sum + expCalcPolySum(probs, indexes) -- 计算下一组index组合的多项式值，并加到SUM中
        end
    end
    return sum
end

function expCalcPolySumN(probs, n) -- 计算 Σ( 1/S(P, k) )
    local indexes = {}
    for i = 1, n do
        indexes[i] = i
    end
    return expCalcPolySum(probs, indexes)
end

function drawCardExpectation(pCards)
    local len = #pCards
    local res = 0
    for i = 1, len do
        if i % 2 == 1 then
            res = res + expCalcPolySumN(pCards, i)
        else
            res = res - expCalcPolySumN(pCards, i)
        end
    end
    return res
end

function probCalcPolySum(probs, indexes, x)
    local sum = 0
    local len = #probs
    local index_count = #indexes
    if indexes[index_count] <= len then
        local sum1 = 0
        for i = 1, index_count - 1 do       -- 其中一个(k-1)子集的概率之和
            sum1 = sum1 + probs[indexes[i]]
        end
        local deltaProb = 1 - sum1
        for j = indexes[index_count], len do  -- 加入第k个元素，组合成一系列完整的Ck，并且计算这些Ck的 Σ P(Cki, x)
            sum = sum + (deltaProb - probs[j]) ^ x
        end
        indexes[index_count] = len
    end
    for i = index_count, 1, -1 do               -- 生成下一个k子集的index   从后往前扫indexes，直到找到新的一个可以前进的index，然后初始化该index后面的所有index为前一个index+1
        if indexes[i] < len + i - index_count then
            indexes[i] = indexes[i] + 1
            for j = i + 1, index_count do
                indexes[j] = indexes[j - 1] + 1
            end
            sum = sum + probCalcPolySum(probs, indexes, x) -- 计算下一组index组合的多项式值，并加到SUM中
        end
    end
    return sum
end

function probCalcPolySumN(probs, n, x) -- 计算 S(Ck,x)
    local indexes = {}
    for i = 1, n do
        indexes[i] = i
    end
    return probCalcPolySum(probs, indexes, x)
end

function drawCardProb(pCards, x)
    local len = #pCards
    local res = 1
    for i = 1, len do
        if i % 2 == 1 then
            res = res - probCalcPolySumN(pCards, i, x)
        else
            res = res + probCalcPolySumN(pCards, i, x)
        end
    end
    return res
end


-- local pCards = {0.02, 0.02, 0.025, 0.05} --微层混合
-- local pCards = {0.02, 0.02, 0.015, 0.025, 0.025} --北方联合活动
-- local pCards = {0.02, 0.025, 0.025, 0.05} --闹腾嬉戏东煌春节
-- local pCards = {0.02, 0.02, 0.025, 0.025, 0.025, 0.05} --复刻·苍红的回响
local pCards = {0.02, 0.02, 0.025} --穹顶下的圣咏曲 (三周年)
-- local pCards = {0.02, 0.025, 0.05} --test
local exp = drawCardExpectation(pCards)
print(exp)
print(drawCardProb(pCards, 86))


