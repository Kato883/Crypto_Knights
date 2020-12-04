CREATE TABLE "Crypto" (
    "Date_Symbol" VARCHAR(30)   NOT NULL,
    "Date" date   NOT NULL,
    "Symbol" VARCHAR(30)   NOT NULL,
    "Open" FLOAT   NOT NULL,
    "High" FLOAT   NOT NULL,
    "Low" FLOAT   NOT NULL,
    "Close" FLOAT   NOT NULL,
    "Close_Increase" FLOAT   NOT NULL,
    "Volume" INT   NOT NULL,
    "Volume_Increase" FLOAT   NOT NULL,
    "Market_Cap" INT   NOT NULL,
    "Market_Cap_Increase" FLOAT   NOT NULL,
    CONSTRAINT "pk_Crypto" PRIMARY KEY (
        "Date_Symbol"
     )
);

CREATE TABLE "Stock_History" (
    "Date_Symbol" VARCHAR(30)   NOT NULL,
    "Date" date   NOT NULL,
    "Symbol" VARCHAR(30)   NOT NULL,
    "Open" FLOAT   NOT NULL,
    "High" FLOAT   NOT NULL,
    "Low" FLOAT   NOT NULL,
    "Close" FLOAT   NOT NULL,
    "Volume" INT   NOT NULL,
    "Daily_Change" INT   NOT NULL,
    CONSTRAINT "pk_Stock_History" PRIMARY KEY (
        "Date_Symbol"
     )
);

CREATE TABLE "Web_Scraping_Data_Table" (
    "Date_Symbol" VARCHAR(30)   NOT NULL,
    "Date" date   NOT NULL,
    "Symbol" VARCHAR(30)   NOT NULL,
    "Closing_Price" FLOAT   NOT NULL,
    CONSTRAINT "pk_Web_Scraping_Data_Table" PRIMARY KEY (
        "Date_Symbol"
     )
);

ALTER TABLE "Crypto" ADD CONSTRAINT "fk_Crypto_Date_Symbol" FOREIGN KEY("Date_Symbol")
REFERENCES "Web_Scraping_Data_Table" ("Date_Symbol");

ALTER TABLE "Stock_History" ADD CONSTRAINT "fk_Stock_History_Date_Symbol" FOREIGN KEY("Date_Symbol")
REFERENCES "Web_Scraping_Data_Table" ("Date_Symbol");