CREATE TABLE tbl_attach (
    fullname VARCHAR2(150) NOT NULL,  --÷������ �̸�
    bno NUMBER NOT NULL,  --�Խù� ��ȣ
    regdate DATE DEFAULT SYSDATE,  --���ε� ��¥
    PRIMARY KEY(fullname)
);

ALTER TABLE tbl_attach ADD CONSTRAINT fk_board_attach FOREIGN KEY(bno) REFERENCES BOASTBOARD(BBNO);