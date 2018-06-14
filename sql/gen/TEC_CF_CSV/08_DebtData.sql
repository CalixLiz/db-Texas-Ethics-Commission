-- Schema generation for the Texas Ethics Commission
-- Copyright (C) 2018  Evan Carroll
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.

\echo LOADING DebtData



CREATE TABLE tec.debtdata (
	recordType                              text,
	formTypeCd                              text,
	schedFormTypeCd                         text,
	reportInfoIdent                         int,
	receivedDt                              date,
	infoOnlyFlag                            bool,
	filerIdent                              int,
	filerTypeCd                             text,
	filerName                               text,
	loanInfoId                              bigint,
	loanGuaranteedFlag                      bool,
	lenderPersentTypeCd                     text,
	lenderNameOrganization                  text,
	lenderNameLast                          text,
	lenderNameSuffixCd                      text,
	lenderNameFirst                         text,
	lenderNamePrefixCd                      text,
	lenderNameShort                         text,
	lenderStreetCity                        text,
	lenderStreetStateCd                     text,
	lenderStreetCountyCd                    text,
	lenderStreetCountryCd                   text,
	lenderStreetPostalCode                  text,
	lenderStreetRegion                      text,
	guarantorPersentTypeCd1                 text,
	guarantorNameOrganization1              text,
	guarantorNameLast1                      text,
	guarantorNameSuffixCd1                  text,
	guarantorNameFirst1                     text,
	guarantorNamePrefixCd1                  text,
	guarantorNameShort1                     text,
	guarantorStreetCity1                    text,
	guarantorStreetStateCd1                 text,
	guarantorStreetCountyCd1                text,
	guarantorStreetCountryCd1               text,
	guarantorStreetPostalCode1              text,
	guarantorStreetRegion1                  text,
	guarantorPersentTypeCd2                 text,
	guarantorNameOrganization2              text,
	guarantorNameLast2                      text,
	guarantorNameSuffixCd2                  text,
	guarantorNameFirst2                     text,
	guarantorNamePrefixCd2                  text,
	guarantorNameShort2                     text,
	guarantorStreetCity2                    text,
	guarantorStreetStateCd2                 text,
	guarantorStreetCountyCd2                text,
	guarantorStreetCountryCd2               text,
	guarantorStreetPostalCode2              text,
	guarantorStreetRegion2                  text,
	guarantorPersentTypeCd3                 text,
	guarantorNameOrganization3              text,
	guarantorNameLast3                      text,
	guarantorNameSuffixCd3                  text,
	guarantorNameFirst3                     text,
	guarantorNamePrefixCd3                  text,
	guarantorNameShort3                     text,
	guarantorStreetCity3                    text,
	guarantorStreetStateCd3                 text,
	guarantorStreetCountyCd3                text,
	guarantorStreetCountryCd3               text,
	guarantorStreetPostalCode3              text,
	guarantorStreetRegion3                  text,
	guarantorPersentTypeCd4                 text,
	guarantorNameOrganization4              text,
	guarantorNameLast4                      text,
	guarantorNameSuffixCd4                  text,
	guarantorNameFirst4                     text,
	guarantorNamePrefixCd4                  text,
	guarantorNameShort4                     text,
	guarantorStreetCity4                    text,
	guarantorStreetStateCd4                 text,
	guarantorStreetCountyCd4                text,
	guarantorStreetCountryCd4               text,
	guarantorStreetPostalCode4              text,
	guarantorStreetRegion4                  text,
	guarantorPersentTypeCd5                 text,
	guarantorNameOrganization5              text,
	guarantorNameLast5                      text,
	guarantorNameSuffixCd5                  text,
	guarantorNameFirst5                     text,
	guarantorNamePrefixCd5                  text,
	guarantorNameShort5                     text,
	guarantorStreetCity5                    text,
	guarantorStreetStateCd5                 text,
	guarantorStreetCountyCd5                text,
	guarantorStreetCountryCd5               text,
	guarantorStreetPostalCode5              text,
	guarantorStreetRegion5                  text
);

COMMENT ON TABLE tec.debtdata IS $$Debts - Schedule L - Outstanding judicial loans. File: debts.csv$$;
COMMENT ON COLUMN tec.debtdata.recordtype IS $$Record type code - always DEBT$$;
COMMENT ON COLUMN tec.debtdata.formtypecd IS $$TEC form used$$;
COMMENT ON COLUMN tec.debtdata.schedformtypecd IS $$TEC Schedule Used$$;
COMMENT ON COLUMN tec.debtdata.reportinfoident IS $$Unique report #$$;
COMMENT ON COLUMN tec.debtdata.receiveddt IS $$Date report received by TEC$$;
COMMENT ON COLUMN tec.debtdata.infoonlyflag IS $$Superseded by other report$$;
COMMENT ON COLUMN tec.debtdata.filerident IS $$Filer account #$$;
COMMENT ON COLUMN tec.debtdata.filertypecd IS $$Type of filer$$;
COMMENT ON COLUMN tec.debtdata.filername IS $$Filer name$$;
COMMENT ON COLUMN tec.debtdata.loaninfoid IS $$Loan unique identifier$$;
COMMENT ON COLUMN tec.debtdata.loanguaranteedflag IS $$Loan guaranteed indicator$$;
COMMENT ON COLUMN tec.debtdata.lenderpersenttypecd IS $$Type of lender name data - INDIVIDUAL or ENTITY$$;
COMMENT ON COLUMN tec.debtdata.lendernameorganization IS $$For ENTITY, the lender organization name$$;
COMMENT ON COLUMN tec.debtdata.lendernamelast IS $$For INDIVIDUAL, the lender last name$$;
COMMENT ON COLUMN tec.debtdata.lendernamesuffixcd IS $$For INDIVIDUAL, the lender name suffix (e.g. JR, MD, II)$$;
COMMENT ON COLUMN tec.debtdata.lendernamefirst IS $$For INDIVIDUAL, the lender first name$$;
COMMENT ON COLUMN tec.debtdata.lendernameprefixcd IS $$For INDIVIDUAL, the lender name prefix (e.g. MR, MRS, MS)$$;
COMMENT ON COLUMN tec.debtdata.lendernameshort IS $$For INDIVIDUAL, the lender short name (nickname)$$;
COMMENT ON COLUMN tec.debtdata.lenderstreetcity IS $$Lender street address - city$$;
COMMENT ON COLUMN tec.debtdata.lenderstreetstatecd IS $$Lender street address - state code (e.g. TX, CA) - for           country=USA/UMI only$$;
COMMENT ON COLUMN tec.debtdata.lenderstreetcountycd IS $$Lender street address - Texas county$$;
COMMENT ON COLUMN tec.debtdata.lenderstreetcountrycd IS $$Lender street address - country (e.g. USA, UMI, MEX, CAN)$$;
COMMENT ON COLUMN tec.debtdata.lenderstreetpostalcode IS $$Lender street address - postal code - for USA addresses only$$;
COMMENT ON COLUMN tec.debtdata.lenderstreetregion IS $$Lender street address - region for country other than USA$$;
COMMENT ON COLUMN tec.debtdata.guarantorpersenttypecd1 IS $$1: Type of guarantor name data - INDIVIDUAL or ENTITY$$;
COMMENT ON COLUMN tec.debtdata.guarantornameorganization1 IS $$1: For ENTITY, the guarantor organization name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamelast1 IS $$1: For INDIVIDUAL, the guarantor last name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamesuffixcd1 IS $$1: For INDIVIDUAL, the guarantor name suffix (e.g. JR, MD, II)$$;
COMMENT ON COLUMN tec.debtdata.guarantornamefirst1 IS $$1: For INDIVIDUAL, the guarantor first name$$;
COMMENT ON COLUMN tec.debtdata.guarantornameprefixcd1 IS $$1: For INDIVIDUAL, the guarantor name prefix (e.g. MR, MRS, MS)$$;
COMMENT ON COLUMN tec.debtdata.guarantornameshort1 IS $$1: For INDIVIDUAL, the guarantor short name (nickname)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcity1 IS $$1: Guarantor street address - city$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetstatecd1 IS $$1: Guarantor street address - state code (e.g. TX, CA) - for        country=USA/UMI only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountycd1 IS $$1: Guarantor street address - Texas county$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountrycd1 IS $$1: Guarantor street address - country (e.g. USA, UMI, MEX, CAN)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetpostalcode1 IS $$1: Guarantor street address - postal code - for USA addresses only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetregion1 IS $$1: Guarantor street address - region for country other than USA$$;
COMMENT ON COLUMN tec.debtdata.guarantorpersenttypecd2 IS $$2: Type of guarantor name data - INDIVIDUAL or ENTITY$$;
COMMENT ON COLUMN tec.debtdata.guarantornameorganization2 IS $$2: For ENTITY, the guarantor organization name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamelast2 IS $$2: For INDIVIDUAL, the guarantor last name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamesuffixcd2 IS $$2: For INDIVIDUAL, the guarantor name suffix (e.g. JR, MD, II)$$;
COMMENT ON COLUMN tec.debtdata.guarantornamefirst2 IS $$2: For INDIVIDUAL, the guarantor first name$$;
COMMENT ON COLUMN tec.debtdata.guarantornameprefixcd2 IS $$2: For INDIVIDUAL, the guarantor name prefix (e.g. MR, MRS, MS)$$;
COMMENT ON COLUMN tec.debtdata.guarantornameshort2 IS $$2: For INDIVIDUAL, the guarantor short name (nickname)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcity2 IS $$2: Guarantor street address - city$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetstatecd2 IS $$2: Guarantor street address - state code (e.g. TX, CA) - for        country=USA/UMI only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountycd2 IS $$2: Guarantor street address - Texas county$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountrycd2 IS $$2: Guarantor street address - country (e.g. USA, UMI, MEX, CAN)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetpostalcode2 IS $$2: Guarantor street address - postal code - for USA addresses only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetregion2 IS $$2: Guarantor street address - region for country other than USA$$;
COMMENT ON COLUMN tec.debtdata.guarantorpersenttypecd3 IS $$3: Type of guarantor name data - INDIVIDUAL or ENTITY$$;
COMMENT ON COLUMN tec.debtdata.guarantornameorganization3 IS $$3: For ENTITY, the guarantor organization name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamelast3 IS $$3: For INDIVIDUAL, the guarantor last name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamesuffixcd3 IS $$3: For INDIVIDUAL, the guarantor name suffix (e.g. JR, MD, II)$$;
COMMENT ON COLUMN tec.debtdata.guarantornamefirst3 IS $$3: For INDIVIDUAL, the guarantor first name$$;
COMMENT ON COLUMN tec.debtdata.guarantornameprefixcd3 IS $$3: For INDIVIDUAL, the guarantor name prefix (e.g. MR, MRS, MS)$$;
COMMENT ON COLUMN tec.debtdata.guarantornameshort3 IS $$3: For INDIVIDUAL, the guarantor short name (nickname)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcity3 IS $$3: Guarantor street address - city$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetstatecd3 IS $$3: Guarantor street address - state code (e.g. TX, CA) - for        country=USA/UMI only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountycd3 IS $$3: Guarantor street address - Texas county$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountrycd3 IS $$3: Guarantor street address - country (e.g. USA, UMI, MEX, CAN)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetpostalcode3 IS $$3: Guarantor street address - postal code - for USA addresses only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetregion3 IS $$3: Guarantor street address - region for country other than USA$$;
COMMENT ON COLUMN tec.debtdata.guarantorpersenttypecd4 IS $$4: Type of guarantor name data - INDIVIDUAL or ENTITY$$;
COMMENT ON COLUMN tec.debtdata.guarantornameorganization4 IS $$4: For ENTITY, the guarantor organization name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamelast4 IS $$4: For INDIVIDUAL, the guarantor last name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamesuffixcd4 IS $$4: For INDIVIDUAL, the guarantor name suffix (e.g. JR, MD, II)$$;
COMMENT ON COLUMN tec.debtdata.guarantornamefirst4 IS $$4: For INDIVIDUAL, the guarantor first name$$;
COMMENT ON COLUMN tec.debtdata.guarantornameprefixcd4 IS $$4: For INDIVIDUAL, the guarantor name prefix (e.g. MR, MRS, MS)$$;
COMMENT ON COLUMN tec.debtdata.guarantornameshort4 IS $$4: For INDIVIDUAL, the guarantor short name (nickname)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcity4 IS $$4: Guarantor street address - city$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetstatecd4 IS $$4: Guarantor street address - state code (e.g. TX, CA) - for        country=USA/UMI only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountycd4 IS $$4: Guarantor street address - Texas county$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountrycd4 IS $$4: Guarantor street address - country (e.g. USA, UMI, MEX, CAN)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetpostalcode4 IS $$4: Guarantor street address - postal code - for USA addresses only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetregion4 IS $$4: Guarantor street address - region for country other than USA$$;
COMMENT ON COLUMN tec.debtdata.guarantorpersenttypecd5 IS $$5: Type of guarantor name data - INDIVIDUAL or ENTITY$$;
COMMENT ON COLUMN tec.debtdata.guarantornameorganization5 IS $$5: For ENTITY, the guarantor organization name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamelast5 IS $$5: For INDIVIDUAL, the guarantor last name$$;
COMMENT ON COLUMN tec.debtdata.guarantornamesuffixcd5 IS $$5: For INDIVIDUAL, the guarantor name suffix (e.g. JR, MD, II)$$;
COMMENT ON COLUMN tec.debtdata.guarantornamefirst5 IS $$5: For INDIVIDUAL, the guarantor first name$$;
COMMENT ON COLUMN tec.debtdata.guarantornameprefixcd5 IS $$5: For INDIVIDUAL, the guarantor name prefix (e.g. MR, MRS, MS)$$;
COMMENT ON COLUMN tec.debtdata.guarantornameshort5 IS $$5: For INDIVIDUAL, the guarantor short name (nickname)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcity5 IS $$5: Guarantor street address - city$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetstatecd5 IS $$5: Guarantor street address - state code (e.g. TX, CA) - for        country=USA/UMI only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountycd5 IS $$5: Guarantor street address - Texas county$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetcountrycd5 IS $$5: Guarantor street address - country (e.g. USA, UMI, MEX, CAN)$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetpostalcode5 IS $$5: Guarantor street address - postal code - for USA addresses only$$;
COMMENT ON COLUMN tec.debtdata.guarantorstreetregion5 IS $$5: Guarantor street address - region for country other than USA$$;
\COPY tec.debtdata FROM 'data/TEC_CF_CSV/debts.csv' WITH ( FORMAT CSV , HEADER true )
ALTER TABLE tec.DebtData
	ADD FOREIGN KEY (filerIdent, filerTypeCd)
	REFERENCES tec.FilerData
	NOT VALID