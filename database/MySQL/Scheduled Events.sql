-- MySQL Events - temporal triggers - triggered by time
-- Primary (READ/WRITE) & Replica (READ) DB

SET GLOBAL event_scheduler = ON;

CREATE TABLE event_scheduler_test (
    id INT PRIMARY KEY AUTO_INCREMENT,
    my_data VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL
);

SHOW PROCESSLIST;

-- events are automatically dropped when it expires.
SHOW EVENTS 
FROM mis_dashboard;

SELECT * 
FROM mis_dashboard.event_scheduler_test;

-- one-time event
CREATE EVENT IF NOT EXISTS event_scheduler_test_event_01
ON SCHEDULE AT CURRENT_TIMESTAMP
ON COMPLETION PRESERVE -- keeps the event even after it has expired
DO
  INSERT INTO mis_dashboard.event_scheduler_test(my_data,created_at)
  VALUES('My Event Scheduler Test Data 1',NOW());

-- one-time event with delayed start
CREATE EVENT event_scheduler_test_event_02
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE
ON COMPLETION PRESERVE
DO
  INSERT INTO mis_dashboard.event_scheduler_test(my_data,created_at)
  VALUES('My Event Scheduler Test Data 2',NOW());

-- recurring-event with end condition
CREATE EVENT event_scheduler_test_event_03	-- event name
ON SCHEDULE EVERY 1 MINUTE					-- frequency
STARTS CURRENT_TIMESTAMP					-- event start condition
ENDS CURRENT_TIMESTAMP + INTERVAL 1 HOUR	-- event expiration period
DO
   INSERT INTO mis_dashboard.event_scheduler_test(my_data,created_at)
   VALUES('My Event Scheduler Test Data 3',NOW());

-- drop event scheduler
DROP EVENT event_scheduler_test_event_03;
