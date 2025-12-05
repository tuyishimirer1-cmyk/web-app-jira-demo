const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Hello from the Jira Integration Demo!");
});

app.get("/home", (req, res) => {
  res.send("Welcome to the Homepage!");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});


