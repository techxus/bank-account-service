
CREATE TABLE accounts (
    account_id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    account_holder_name     VARCHAR(50) NOT NULL ,
    account_type            VARCHAR(20) NOT NULL,
    balance                 NUMERIC(15,2) NOT NULL,
    account_status          VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',
    created_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at              TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by              VARCHAR(50) NOT NULL,
    updated_by              VARCHAR(50) NOT NULL
);


