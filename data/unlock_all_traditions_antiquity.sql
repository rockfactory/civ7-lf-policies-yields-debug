INSERT INTO ProgressionTreeNodeUnlocks (TargetType, ProgressionTreeNodeType, TargetKind, UnlockDepth)
SELECT TraditionType, 'NODE_CIVIC_AQ_MAIN_CHIEFDOM', 'KIND_TRADITION', 1
FROM Traditions;

UPDATE Traditions
SET TraitType = NULL;
