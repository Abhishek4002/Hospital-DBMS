INSERT INTO Patients (name, age, gender, phone)
VALUES
('Rahul Sharma', 22, 'Male', '9876543210'),
('Priya Patel', 25, 'Female', '9123456780');

INSERT INTO Doctors (name, specialization, phone)
VALUES
('Dr. Mehta', 'Cardiologist', '9999999999'),
('Dr. Singh', 'Dermatologist', '8888888888');

INSERT INTO Appointments (patient_id, doctor_id, appointment_date)
VALUES
(1, 1, '2026-05-20'),
(2, 2, '2026-05-21');

INSERT INTO Prescriptions (appointment_id, medicine, dosage)
VALUES
(1, 'Paracetamol', '2 times daily'),
(2, 'Skin Cream', '1 time daily');

INSERT INTO Billing (patient_id, amount, payment_status)
VALUES
(1, 1500.00, 'Paid'),
(2, 2000.00, 'Pending');