USE patientinfoservice;

CREATE TABLE patient (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         firstName VARCHAR(255) NOT NULL,
                         lastName VARCHAR(255) NOT NULL,
                         dateOfBirth DATE NOT NULL,
                         gender VARCHAR(10) NOT NULL,
                         address VARCHAR(255),
                         phoneNumber VARCHAR(20)
);

INSERT INTO patient (firstName, lastName, dateOfBirth, gender, address, phoneNumber)
VALUES
    ('Test', 'TestNone', '1966-12-31', 'F', '1 Brookside St', '100-222-3333'),
    ('Test', 'TestBorderline', '1945-06-24', 'M', '2 High St', '200-333-4444'),
    ('Test', 'TestInDanger', '2004-06-18', 'M', '3 Club Road', '300-444-5555'),
    ('Test', 'TestEarlyOnset', '2002-06-28', 'F', '4 Valley Dr', '400-555-6666');
