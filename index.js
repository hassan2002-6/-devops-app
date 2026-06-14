const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const html = `<!DOCTYPE html>
  <html><body><h1>DevOps App Running! 🚀</h1></body></html>`;
  res.send(html);
});

app.listen(3000, () => {
  console.log('App running on port 3000');
});
