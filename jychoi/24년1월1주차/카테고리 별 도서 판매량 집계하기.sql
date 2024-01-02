SELECT B.CATEGORY, SUM(S.SALES) AS TOTAL_SALES
FROM BOOK B LEFT JOIN BOOK_SALES S ON B.BOOK_ID = S.BOOK_ID
WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 1
GROUP BY CATEGORY
ORDER BY B.CATEGORY ASC;