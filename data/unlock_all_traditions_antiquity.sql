
-- Remove all existing tradition unlocks, since they're unique 
DELETE FROM ProgressionTreeNodeUnlocks
WHERE ProgressionTreeNodeType = 'NODE_CIVIC_AQ_MAIN_CHIEFDOM' AND TargetKind = 'KIND_TRADITION';

INSERT INTO ProgressionTreeNodeUnlocks (TargetType, ProgressionTreeNodeType, TargetKind, UnlockDepth)
SELECT TraditionType, 'NODE_CIVIC_AQ_MAIN_CHIEFDOM', 'KIND_TRADITION', 1
FROM Traditions;

UPDATE Traditions
SET TraitType = NULL;
