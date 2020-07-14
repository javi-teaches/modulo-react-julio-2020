const chalk = require('chalk');
const express = require('express');

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

const apiRouter = require('./routes/apiRoutes');

app.use('/api', apiRouter);

const port = process.env.PORT || 3000;

app.listen(port, () => console.log(chalk.cyan(`App run in ${port} port!`)));