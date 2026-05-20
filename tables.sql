CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    phone VARCHAR(15)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15)
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    medicine VARCHAR(100),
    dosage VARCHAR(50),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);

CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);