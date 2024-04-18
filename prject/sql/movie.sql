INSERT INTO MOVIE
VALUES (
1, '쿵푸팬더4', '마이크 미첼 등', '잭블랙 등', '애니메이션', 8.6, '925655명', '전체관람가',
'2024-04-10', 'kungfu.jpg'
);
INSERT INTO MOVIE
VALUES (
2, '듄-파트2', '드니 빌뇌브', '티모시 샬라메 등', '액션', 9.2, '1969174명', '12세이상관람가',
'2024-02-28', 'dune.jpg'
);
INSERT INTO MOVIE
VALUES (
3, '고스트버스터즈', '길 키넌', '폴 러드 등', '어드벤처, 액션', 8.8, '100000명', '12세이상관람가',
'2024-04-17', 'ghost.jpg'
);
INSERT INTO MOVIE
VALUES (
4, '파묘', '장재현', '최민식, 김고은 등', '미스터리', 9.5, '11649808명', '15세이상관람가',
'2024-02-22', 'exhuma.jpg'
);
INSERT INTO MOVIE
VALUES (
5, '스파이 패밀리 코드', '카타기리 타카시', '에구치 타쿠야 등', '애니메이션', 9.4, '803500명', '12세이상관람가',
'2024-03-20', 'spy.jpg'
);
INSERT INTO MOVIE
VALUES (
6, '남은인생10년', '후지이 미치히토', '고마츠 나나 등', '로맨스, 멜로', 9.1, '332951명', '12세이상관람가',
'2024-04-03', 'last10.jpg'
);
INSERT INTO MOVIE
VALUES (
7, '오멘 저주의 시작', '아르카샤 스티븐슨', '넬 타이거 프리 등', '호러', 8.7, '152690명', '15세이상관람가',
'2024-04-03', 'omen.jpg'
);
SELECT *
FROM MOVIE;

SELECT *
FROM MOVIE
ORDER BY M_RATE DESC;

SELECT *
FROM MOVIE
ORDER BY M_DATE DESC;
