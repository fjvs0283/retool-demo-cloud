const data = {{  getDisplayedData.data }};

function formatFirstName(firstName) {
  // add your formatting logic here
  let formattedFirstName = firstName;
  return formattedFirstName;
}

function formatLastName(lastName) {
  // add your formatting logic here
  let formattedLastName = lastName;
  return formattedLastName;
}

function formatEmail(email) {
  // add your formatting logic here
  let formattedEmail = email;
  return formattedEmail;
}

function formatTeam(team) {
  // add your formatting logic here
  let formattedTeam = team;
  return formattedTeam;
}

function formatRole(role) {
  // add your formatting logic here
  let formattedRole = role;
  return formattedRole;
}

function formatDateJoined(dateJoined) {
  const date = new Date(dateJoined);
  const options = { year: "numeric", month: "short", day: "numeric" };
  const formattedDate = new Intl.DateTimeFormat("en-US", options).format(date);
  return formattedDate;
}

const results = data.map((row) => ({
  First_Name: formatFirstName(row.firstName),
  Last_Name: formatLastName(row.lastName),
  Email: formatEmail(row.email),
  Team: formatTeam(row.team),
  Role: formatRole(row.role),
  Date_Joined: formatDateJoined(row.dateJoined),
}));

return results;
