CREATE TABLE tbl_attach (
    fullname VARCHAR2(150) NOT NULL,  --첨부파일 이름
    bno NUMBER NOT NULL,  --게시물 번호
    regdate DATE DEFAULT SYSDATE,  --업로드 날짜
    PRIMARY KEY(fullname)
);

ALTER TABLE tbl_attach ADD CONSTRAINT fk_board_attach FOREIGN KEY(bno) REFERENCES BOASTBOARD(BBNO);