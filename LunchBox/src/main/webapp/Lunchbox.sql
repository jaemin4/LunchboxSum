-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- tbl_member Table Create SQL
CREATE TABLE tbl_member
(
    mb_id           VARCHAR2(20)    NOT NULL, 
    mb_pw           VARCHAR2(20)    NOT NULL, 
    mb_birthdate    VARCHAR2(8)     NOT NULL, 
    mb_gender       CHAR(1)         NOT NULL, 
    mb_joindate     DATE            NOT NULL, 
    mb_type         CHAR(1)         NOT NULL, 
     PRIMARY KEY (mb_id)
)
/

COMMENT ON TABLE tbl_member IS '사용자 정보'
/

COMMENT ON COLUMN tbl_member.mb_id IS '사용자 아이디'
/

COMMENT ON COLUMN tbl_member.mb_pw IS '사용자 비밀번호'
/

COMMENT ON COLUMN tbl_member.mb_birthdate IS '사용자 생년월일'
/

COMMENT ON COLUMN tbl_member.mb_gender IS '사용자 성별'
/

COMMENT ON COLUMN tbl_member.mb_joindate IS '사용자 가입일자'
/

COMMENT ON COLUMN tbl_member.mb_type IS '사용자 유형'
/


-- tbl_ingredient Table Create SQL
CREATE TABLE tbl_ingredient
(
    ingre_seq     NUMBER(15, 0)    NOT NULL, 
    ingre_name    VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (ingre_seq)
)
/

CREATE SEQUENCE tbl_ingredient_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_ingredient_AI_TRG
BEFORE INSERT ON tbl_ingredient 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_ingredient_SEQ.NEXTVAL
    INTO :NEW.ingre_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_ingredient_AI_TRG; /

--DROP SEQUENCE tbl_ingredient_SEQ; /

COMMENT ON TABLE tbl_ingredient IS '식재료'
/

COMMENT ON COLUMN tbl_ingredient.ingre_seq IS '식재료 번호'
/

COMMENT ON COLUMN tbl_ingredient.ingre_name IS '식재료 명'
/


-- tbl_recipe Table Create SQL
CREATE TABLE tbl_recipe
(
    recipe_code          VARCHAR2(20)      NOT NULL, 
    recipe_name          VARCHAR2(20)      NOT NULL, 
    recipe_method        VARCHAR2(20)      NOT NULL, 
    recipe_time          VARCHAR2(30)      NOT NULL, 
    recipe_difficulty    VARCHAR2(20)      NOT NULL, 
    recipe_img           VARCHAR2(400)     NOT NULL,
    cooking_img        VARCHAR2(400)    NOT NULL,  
    recipe_detail        VARCHAR2(4000)    NOT NULL,
    ingredient	   VARCHAR2(4000)    NOT NULL, 
    carbohydrate         NUMBER(15, 0)     NOT NULL, 
    protein              NUMBER(15, 0)     NOT NULL, 
    fat                  NUMBER(15, 0)     NOT NULL, 
    calories             NUMBER(15, 0)     NOT NULL,
     PRIMARY KEY (recipe_code)
)
/

COMMENT ON TABLE tbl_recipe IS '레시피'
/

COMMENT ON COLUMN tbl_recipe.recipe_code IS '레시피 코드'
/

COMMENT ON COLUMN tbl_recipe.recipe_name IS '레시피 명'
/

COMMENT ON COLUMN tbl_recipe.recipe_method IS '조리 방식'
/

COMMENT ON COLUMN tbl_recipe.recipe_time IS '조리 시간'
/

COMMENT ON COLUMN tbl_recipe.recipe_difficulty IS '난이도'
/

COMMENT ON COLUMN tbl_recipe.recipe_img IS '대표 이미지'
/

COMMENT ON COLUMN tbl_recipe.cooking_img IS '조리 이미지'
/

COMMENT ON COLUMN tbl_recipe.ingredient IS '식재료'
/

COMMENT ON COLUMN tbl_recipe.recipe_detail IS '상세 레시피'
/

COMMENT ON COLUMN tbl_recipe.carbohydrate IS '탄수화물'
/

COMMENT ON COLUMN tbl_recipe.protein IS '단백질'
/

COMMENT ON COLUMN tbl_recipe.fat IS '지방'
/

COMMENT ON COLUMN tbl_recipe.calories IS '칼로리'
/


-- tbl_lunchbox Table Create SQL
CREATE TABLE tbl_lunchbox
(
    lb_seq         NUMBER(15, 0)    NOT NULL, 
    lb_name        VARCHAR2(30)     NOT NULL, 
    lb_img         VARCHAR2(400)    NOT NULL, 
    mb_id          VARCHAR2(20)     NOT NULL, 
    ld_date        DATE             NOT NULL, 
    lb_calories    NUMBER(15, 0)    NOT NULL, 
     PRIMARY KEY (lb_seq)
)
/

CREATE SEQUENCE tbl_lunchbox_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_lunchbox_AI_TRG
BEFORE INSERT ON tbl_lunchbox 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_lunchbox_SEQ.NEXTVAL
    INTO :NEW.lb_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_lunchbox_AI_TRG; /

--DROP SEQUENCE tbl_lunchbox_SEQ; /

COMMENT ON TABLE tbl_lunchbox IS '도시락'
/

COMMENT ON COLUMN tbl_lunchbox.lb_seq IS '도시락 순번'
/

COMMENT ON COLUMN tbl_lunchbox.lb_name IS '도시락 이름'
/

COMMENT ON COLUMN tbl_lunchbox.lb_img IS '도시락 이미지'
/

COMMENT ON COLUMN tbl_lunchbox.mb_id IS '사용자 아이디'
/

COMMENT ON COLUMN tbl_lunchbox.ld_date IS '완성 날짜'
/

COMMENT ON COLUMN tbl_lunchbox.lb_calories IS '총 칼로리'
/

ALTER TABLE tbl_lunchbox
    ADD CONSTRAINT FK_tbl_lunchbox_mb_id_tbl_memb FOREIGN KEY (mb_id)
        REFERENCES tbl_member (mb_id)
/


-- tbl_community Table Create SQL
CREATE TABLE tbl_community
(
    article_seq         NUMBER(15, 0)     NOT NULL, 
    article_title       VARCHAR2(400)     NOT NULL, 
    article_contgent    VARCHAR2(4000)    NOT NULL, 
    article_file        VARCHAR2(400)     NULL, 
    article_date        DATE              NOT NULL, 
    mb_id               VARCHAR2(20)      NOT NULL, 
    article_cnt         NUMBER(15, 0)     NOT NULL, 
    article_likes       NUMBER(15, 0)     NOT NULL, 
     PRIMARY KEY (article_seq)
)
/

CREATE SEQUENCE tbl_community_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_community_AI_TRG
BEFORE INSERT ON tbl_community 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_community_SEQ.NEXTVAL
    INTO :NEW.article_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_community_AI_TRG; /

--DROP SEQUENCE tbl_community_SEQ; /

COMMENT ON TABLE tbl_community IS '커뮤니티'
/

COMMENT ON COLUMN tbl_community.article_seq IS '글 순번'
/

COMMENT ON COLUMN tbl_community.article_title IS '글 제목'
/

COMMENT ON COLUMN tbl_community.article_contgent IS '글 내용'
/

COMMENT ON COLUMN tbl_community.article_file IS '글 첨부파일'
/

COMMENT ON COLUMN tbl_community.article_date IS '글 작성일자'
/

COMMENT ON COLUMN tbl_community.mb_id IS '글 작성자'
/

COMMENT ON COLUMN tbl_community.article_cnt IS '글 조회수'
/

COMMENT ON COLUMN tbl_community.article_likes IS '글 추천수'
/

ALTER TABLE tbl_community
    ADD CONSTRAINT FK_tbl_community_mb_id_tbl_mem FOREIGN KEY (mb_id)
        REFERENCES tbl_member (mb_id)
/


-- tbl_comment Table Create SQL
CREATE TABLE tbl_comment
(
    cmt_seq        NUMBER(15, 0)     NOT NULL, 
    article_seq    NUMBER(15, 0)     NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_date       DATE              NOT NULL, 
    mb_id          VARCHAR2(20)      NOT NULL, 
     PRIMARY KEY (cmt_seq)
)
/

CREATE SEQUENCE tbl_comment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_comment_AI_TRG
BEFORE INSERT ON tbl_comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_comment_SEQ.NEXTVAL
    INTO :NEW.cmt_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_comment_AI_TRG; /

--DROP SEQUENCE tbl_comment_SEQ; /

COMMENT ON TABLE tbl_comment IS '댓글'
/

COMMENT ON COLUMN tbl_comment.cmt_seq IS '댓글 순번'
/

COMMENT ON COLUMN tbl_comment.article_seq IS '원글 순번'
/

COMMENT ON COLUMN tbl_comment.cmt_content IS '댓글 내용'
/

COMMENT ON COLUMN tbl_comment.cmt_date IS '댓글 작성일자'
/

COMMENT ON COLUMN tbl_comment.mb_id IS '댓글 작성자'
/

ALTER TABLE tbl_comment
    ADD CONSTRAINT FK_tbl_comment_article_seq_tbl FOREIGN KEY (article_seq)
        REFERENCES tbl_community (article_seq)
/

ALTER TABLE tbl_comment
    ADD CONSTRAINT FK_tbl_comment_mb_id_tbl_membe FOREIGN KEY (mb_id)
        REFERENCES tbl_member (mb_id)
/


-- tbl_lunchbox_detail Table Create SQL
CREATE TABLE tbl_lunchbox_detail
(
    ld_seq         NUMBER(15, 0)    NOT NULL, 
    lb_seq         NUMBER(15, 0)    NOT NULL, 
    recipe_code    VARCHAR2(20)     NOT NULL, 
     PRIMARY KEY (ld_seq)
)
/

CREATE SEQUENCE tbl_lunchbox_detail_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_lunchbox_detail_AI_TRG
BEFORE INSERT ON tbl_lunchbox_detail 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_lunchbox_detail_SEQ.NEXTVAL
    INTO :NEW.ld_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_lunchbox_detail_AI_TRG; /

--DROP SEQUENCE tbl_lunchbox_detail_SEQ; /

COMMENT ON TABLE tbl_lunchbox_detail IS '도시락 상세'
/

COMMENT ON COLUMN tbl_lunchbox_detail.ld_seq IS '상세 순번'
/

COMMENT ON COLUMN tbl_lunchbox_detail.lb_seq IS '도시락 순번'
/

COMMENT ON COLUMN tbl_lunchbox_detail.recipe_code IS '레시피 코드'
/

ALTER TABLE tbl_lunchbox_detail
    ADD CONSTRAINT FK_tbl_lunchbox_detail_lb_seq_ FOREIGN KEY (lb_seq)
        REFERENCES tbl_lunchbox (lb_seq)
/

ALTER TABLE tbl_lunchbox_detail
    ADD CONSTRAINT FK_tbl_lunchbox_detail_recipe_ FOREIGN KEY (recipe_code)
        REFERENCES tbl_recipe (recipe_code)
/


-- tbl_nutritionfact Table Create SQL
CREATE TABLE tbl_nutritionfact
(
    nutri_seq         NUMBER(15, 0)    NOT NULL, 
    mb_id             VARCHAR2(20)     NOT NULL, 
    r_carbohydrate    NUMBER(15, 0)    NOT NULL, 
    r_protein         NUMBER(15, 0)    NOT NULL, 
    r_fat             NUMBER(15, 0)    NOT NULL, 
    r_calories        NUMBER(15, 0)    NOT NULL, 
     PRIMARY KEY (nutri_seq)
)
/

CREATE SEQUENCE tbl_nutritionfact_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_nutritionfact_AI_TRG
BEFORE INSERT ON tbl_nutritionfact 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_nutritionfact_SEQ.NEXTVAL
    INTO :NEW.nutri_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_nutritionfact_AI_TRG; /

--DROP SEQUENCE tbl_nutritionfact_SEQ; /

COMMENT ON TABLE tbl_nutritionfact IS '권장 영양소'
/

COMMENT ON COLUMN tbl_nutritionfact.nutri_seq IS '영양소 번호'
/

COMMENT ON COLUMN tbl_nutritionfact.mb_id IS '사용자 아이디'
/

COMMENT ON COLUMN tbl_nutritionfact.r_carbohydrate IS '권장 탄수화물'
/

COMMENT ON COLUMN tbl_nutritionfact.r_protein IS '권장 단백질'
/

COMMENT ON COLUMN tbl_nutritionfact.r_fat IS '권장 지방'
/

COMMENT ON COLUMN tbl_nutritionfact.r_calories IS '권장 칼로리'
/

ALTER TABLE tbl_nutritionfact
    ADD CONSTRAINT FK_tbl_nutritionfact_mb_id_tbl FOREIGN KEY (mb_id)
        REFERENCES tbl_member (mb_id)
/


-- tbl_cooking Table Create SQL
CREATE TABLE tbl_cooking
(
    cooking_seq    NUMBER(15, 0)    NOT NULL, 
    recipe_code    VARCHAR2(20)     NOT NULL, 
    ingre_seq      NUMBER(15, 0)    NOT NULL, 
     PRIMARY KEY (cooking_seq)
)
/

CREATE SEQUENCE tbl_cooking_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tbl_cooking_AI_TRG
BEFORE INSERT ON tbl_cooking 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tbl_cooking_SEQ.NEXTVAL
    INTO :NEW.cooking_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tbl_cooking_AI_TRG; /

--DROP SEQUENCE tbl_cooking_SEQ; /

COMMENT ON TABLE tbl_cooking IS '조리 테이블'
/

COMMENT ON COLUMN tbl_cooking.cooking_seq IS '조리 순번'
/

COMMENT ON COLUMN tbl_cooking.recipe_code IS '레시피 코드'
/

COMMENT ON COLUMN tbl_cooking.ingre_seq IS '식재료 번호'
/

ALTER TABLE tbl_cooking
    ADD CONSTRAINT FK_tbl_cooking_recipe_code_tbl FOREIGN KEY (recipe_code)
        REFERENCES tbl_recipe (recipe_code)
/

ALTER TABLE tbl_cooking
    ADD CONSTRAINT FK_tbl_cooking_ingre_seq_tbl_i FOREIGN KEY (ingre_seq)
        REFERENCES tbl_ingredient (ingre_seq)
/