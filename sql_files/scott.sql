select num, name, addr, from member;

SELECT *
FROM
    (SELECT result1.*, ROWNUM AS rnum
    from
        (select num, writer, title, ORGFILENAME
        from BOARD_FILE
        order by num DESC) result1)

-- pageRowCount(한페이지에 출력할 row의 갯수) 가 5 인경우

where rnum BETWEEN 1 and 5;   -- 1 페이지
where rnum BETWEEN 6 and 10;  -- 2 페이지
where rnum BETWEEN 11 and 15; -- 3 페이지
where rnum BETWEEN 16 and 20; -- 4 페이지
where rnum BETWEEN startRowNum and endRowNum;   -- pageNum 페이지

startRowNum = 1 + (pageNum - 1)*pageRowCount

endRowNum = pageNum*pageRowCount