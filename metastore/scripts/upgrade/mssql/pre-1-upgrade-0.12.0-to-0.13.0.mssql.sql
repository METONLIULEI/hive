CREATE TABLE TAB_COL_STATS
(
    CS_ID bigint NOT NULL,
    AVG_COL_LEN float NULL,
    "COLUMN_NAME" varchar(128) NOT NULL,
    COLUMN_TYPE varchar(128) NOT NULL,
    DB_NAME varchar(128) NOT NULL,
    DOUBLE_HIGH_VALUE float NULL,
    DOUBLE_LOW_VALUE float NULL,
    LAST_ANALYZED bigint NOT NULL,
    LONG_HIGH_VALUE bigint NULL,
    LONG_LOW_VALUE bigint NULL,
    MAX_COL_LEN bigint NULL,
    NUM_DISTINCTS bigint NULL,
    NUM_FALSES bigint NULL,
    NUM_NULLS bigint NOT NULL,
    NUM_TRUES bigint NULL,
    TBL_ID bigint NULL,
    "TABLE_NAME" varchar(128) NOT NULL
);

ALTER TABLE TAB_COL_STATS ADD CONSTRAINT TAB_COL_STATS_PK PRIMARY KEY (CS_ID);

ALTER TABLE TAB_COL_STATS ADD CONSTRAINT TAB_COL_STATS_FK1 FOREIGN KEY (TBL_ID) REFERENCES TBLS (TBL_ID) ;

CREATE INDEX TAB_COL_STATS_N49 ON TAB_COL_STATS (TBL_ID);
