CREATE TABLE medical_records (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    member_id BIGINT NOT NULL,
    record_type ENUM('diagnosis','allergy','condition','vital','note') NOT NULL,
    description TEXT,
    recorded_at DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES family_members(id) ON DELETE CASCADE
);
