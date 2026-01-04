CREATE TABLE family_members (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    family_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    dob DATE,
    gender ENUM('male','female','other'),
    blood_group VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (family_id) REFERENCES families(id) ON DELETE CASCADE
);
