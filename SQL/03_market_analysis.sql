USE international_student_mobility;

CREATE VIEW destination_market_analysis AS

SELECT
    Country,

    MIN(CASE
        WHEN Year = 2013 THEN Mobile_Students
    END) AS Students_2013,

    MAX(CASE
        WHEN Year = 2023 THEN Mobile_Students
    END) AS Students_2023,

    MAX(CASE
        WHEN Year = 2023 THEN Mobile_Students
    END)
    -
    MIN(CASE
        WHEN Year = 2013 THEN Mobile_Students
    END) AS Absolute_Change,

    ROUND(
        (
            (
                MAX(CASE
                    WHEN Year = 2023 THEN Mobile_Students
                END)
                -
                MIN(CASE
                    WHEN Year = 2013 THEN Mobile_Students
                END)
            )
            /
            MIN(CASE
                WHEN Year = 2013 THEN Mobile_Students
                END)
        ) * 100,
        SELECT *
FROM destination_market_analysis;
        2
    ) AS Long_Term_Growth_Percent

FROM student_mobility

GROUP BY Country;