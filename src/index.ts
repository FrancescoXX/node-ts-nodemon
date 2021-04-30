import express from 'express';

const port = 9000;
const app = express();

app.get('/', (req: Request, res: any) => {
  res.json('fdgdsgewg');
});

app.listen(port, () => {
  // tslint:disable-next-line:no-console
  console.log(`server started at http://localhost:${port}`);
});