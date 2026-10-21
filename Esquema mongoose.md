Propiedades del esquema



Ejemplo de esquema
```js

const userSchema = new Schema(

{

username: {

type: String,

required: true,

unique: true,

},

email: {

type: String,

required: true,

unique: true,

},

password: {

type: String,

required: true,

},

adress:{

street:{

type: String,

required: true,

},

city:{

type: String,

required:true

},

}

  

},

{

versionKey: false,

},

);


```