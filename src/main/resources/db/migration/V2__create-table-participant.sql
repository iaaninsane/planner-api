CREATE TABLE participants(
    id UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    is_confirmed BOOLEAN NOT NULL,
    trip_id UUID,
    FOEIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE
);