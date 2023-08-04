CREATE TABLE IF NOT EXISTS replies (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  transaction_id INT REFERENCES transactions(id),
  content TEXT NOT NULL,
  created_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_on TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)