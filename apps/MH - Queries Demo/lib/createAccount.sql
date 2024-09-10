INSERT INTO
  accounts_table (name, role, email, signup_date, enabled)
VALUES
  (
    {{ form1.data.full_name}},
    {{ form1.data.role}},
    {{ form1.data.email}},
    {{form1.data.signup_date}},
    {{ form1.data.enabled}}
  ) RETURNING *;