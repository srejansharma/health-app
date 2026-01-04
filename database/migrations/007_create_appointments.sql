CREATE TABLE appointments (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    family_id BIGINT NOT NULL,
    member_id BIGINT NOT NULL,
    doctor_name VARCHAR(255),
    appointment_date DATETIME NOT NULL,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (family_id) REFERENCES families(id) ON DELETE CASCADE,
    FOREIGN KEY (member_id) REFERENCES family_members(id) ON DELETE CASCADE
);
