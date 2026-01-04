CREATE TABLE member_genetic_conditions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    member_id BIGINT NOT NULL,
    genetic_condition_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES family_members(id) ON DELETE CASCADE,
    FOREIGN KEY (genetic_condition_id) REFERENCES genetic_conditions(id) ON DELETE CASCADE,
    UNIQUE (member_id, genetic_condition_id)
);
