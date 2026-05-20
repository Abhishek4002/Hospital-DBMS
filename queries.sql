-- View all patients
SELECT * FROM Patients;

-- View all doctors
SELECT * FROM Doctors;

-- Patient appointment details
SELECT Patients.name, Doctors.name AS Doctor, appointment_date
FROM Appointments
JOIN Patients ON Appointments.patient_id = Patients.patient_id
JOIN Doctors ON Appointments.doctor_id = Doctors.doctor_id;

-- Billing details
SELECT Patients.name, Billing.amount, Billing.payment_status
FROM Billing
JOIN Patients ON Billing.patient_id = Patients.patient_id;