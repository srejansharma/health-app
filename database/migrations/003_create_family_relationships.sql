CREATE TABLE family_relationships (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    member_id BIGINT NOT NULL,
    related_member_id BIGINT NOT NULL,
    relationship_type ENUM(
        'father','mother','son','daughter',
        'spouse','sibling','grandparent','grandchild'
    ) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (member_id) REFERENCES family_members(id) ON DELETE CASCADE,
    FOREIGN KEY (related_member_id) REFERENCES family_members(id) ON DELETE CASCADE
);
