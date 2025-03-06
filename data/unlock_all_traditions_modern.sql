-- Remove all existing tradition unlocks, since they're unique 
DELETE FROM ProgressionTreeNodeUnlocks
WHERE ProgressionTreeNodeType = 'NODE_CIVIC_MO_MAIN_MODERNIZATION' AND TargetKind = 'KIND_TRADITION';

-- Unlock all traditions for the modern age right at the start
INSERT INTO ProgressionTreeNodeUnlocks (TargetType, ProgressionTreeNodeType, TargetKind, UnlockDepth)
SELECT TraditionType, 'NODE_CIVIC_MO_MAIN_MODERNIZATION', 'KIND_TRADITION', 1
FROM Traditions;

-- Give us access even to civ unique traditions
UPDATE Traditions
SET TraitType = NULL;
