CREATE TABLE entity_tags (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    entity_type ENUM(
        'medical_record','medical_document','genetic_condition'
    ) NOT NULL,
    entity_id BIGINT NOT NULL,
    tag_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (tag_id) REFERENCES tags(id) ON DELETE CASCADE
);
