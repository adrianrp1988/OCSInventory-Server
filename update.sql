DROP TABLE IF EXISTS `hardware_change_events`;
CREATE TABLE `hardware_change_events` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `HARDWARE_ID` INT NOT NULL,
  `IP_ADDRESS` varchar(100) NULL,
  `NAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `LAST_SCAN_DATETIME` varchar(100) NULL,  
  `LOGDATE` DATETIME DEFAULT NOW(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `hardware_change_events_data`;
CREATE TABLE `hardware_change_events_data` (
  `EVENT_ID` int(11) NOT NULL,
  `SECTION` varchar(100) NOT NULL,
  `FIELDS` text NOT NULL,
  `HARDWARE_ADDED` text NOT NULL,
  `HARDWARE_REMOVED` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
