-- ========================================================================
-- Copyright 2012 the original author or authors.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- ========================================================================
DROP TABLE IF EXISTS accounts ;
DROP TABLE IF EXISTS payments ;


CREATE TABLE `accounts` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BALANCE` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `payments` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PAYEE` bigint(20) NOT NULL,
  `RECIPIENT` bigint(20) NOT NULL,
  `AMOUNT` decimal(8,2) DEFAULT NULL,
  `PAY_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



INSERT INTO ACCOUNTS (ID, NAME, BALANCE) VALUES (1, 'Airline1', 0);
INSERT INTO ACCOUNTS (ID, NAME, BALANCE) VALUES (2, 'Airline2', 0);
INSERT INTO ACCOUNTS (ID, NAME, BALANCE) VALUES (3, 'Customer 1', 0);
INSERT INTO ACCOUNTS (ID, NAME, BALANCE) VALUES (4, 'Customer 2', 0);
INSERT INTO ACCOUNTS (ID, NAME, BALANCE) VALUES (5, 'Customer 3', 0);
