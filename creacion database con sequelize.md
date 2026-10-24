Con sequelize primero tenemos que crear la config de la base de datos y guardarla en una constante 

```js

import 'dotenv/config';
import { Sequelize } from "sequelize";

const sequelize = new Sequelize(
	process.env.DB_NAME,
	process.env.DB_USER,
	process.env.DB_PASSWORD,
{
	host: process.env.DB_HOST,
	dialect: 'mysql',
	port: Number(process.env.DB_PORT),
	logging: false,
}
);
 
export default sequelize;


```