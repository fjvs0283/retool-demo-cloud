INSERT INTO
  users_table (name, account_id, email, signup_date)
VALUES
  (
    {{ getLatestAccountRecord.value.full_name }},
    {{ getLatestAccountRecord.value.id }},
    {{ getLatestAccountRecord.value.email }},
    {{ getLatestAccountRecord.value.signup_date }}
  ) RETURNING *;