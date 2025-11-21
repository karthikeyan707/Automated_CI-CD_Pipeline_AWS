const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send(`<h1>Automated CI/CD Demo</h1><p>Deployed at ${new Date().toISOString()}</p>`);
});

app.listen(port, () => {
  console.log(`App listening on ${port}`);
});

