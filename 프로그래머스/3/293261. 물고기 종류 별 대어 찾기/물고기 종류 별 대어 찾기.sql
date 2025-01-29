-- 코드를 작성해주세요
SELECT 
    FI.ID,
    FN.FISH_NAME,
    FI.LENGTH
FROM 
    FISH_INFO FI
JOIN 
    FISH_NAME_INFO FN ON FI.FISH_TYPE = FN.FISH_TYPE
WHERE 
    FI.LENGTH = (
        SELECT 
            MAX(LENGTH)
        FROM 
            FISH_INFO
        WHERE 
            FISH_TYPE = FI.FISH_TYPE
    )
ORDER BY 
    FI.ID;