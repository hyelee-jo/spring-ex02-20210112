create sequence seq_board;

create table tbl_board (
bno number(10,0),
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate,
updatedate date default sysdate
);

alter table tbl_board add constraint pk_board
primary key (bno);

insert into tbl_board (bno, title, content, writer)
values (seq_board.nextval, '테스트 제목','테스트 내용','user00');

commit;

select * from tbl_board;

select * from tbl_board where bno > 0;

CREATE SEQUENCE seq_comment;

CREATE TABLE tbl_comment (
    cno NUMBER(10, 0), -- 댓글 promary key
    bno NUMBER(10, 0) NOT NULL, -- 게시글 번호
    content VARCHAR2(500) NOT NULL,
    Writer VARCHAR2(50) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    PRIMARY KEY(cno)
);


AlTER TABLE tbl_comment ADD updatedate DATE DEFAULT SYSDATE;

INSERT INTO tbl_comment (cno, bno, content, writer)
VALUES (seq_comment.nextval, 1, 'first comment', 'newbie');
  
COMMIT;

SELECT * FROM tbl_comment;
  
  
  
  
  
  
  
  
  
  
  
  
  
  