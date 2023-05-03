# comando de conexion en la Terminal
mongosh "mongodb+srv://cluster0.m4fssab.mongodb.net/myFirstDatabase" --apiVersion 1 --username jdjimeneze

#Crear
db.Ejercicio.insertOne(
      {name:"sue", age:26, status:"pending"}
      )
db.Ejercicio.insertMany( [
      { nombre: "Manuel", apellido: "Mondragon" },
      { nombre: "Jhonatan", edad: 20 },
      { nombre: "Jinneth" , codigo: [2,0,2,1] }
   ] );
#Leer
db.Ejercicio.find()

#Actualizar
db.Ejercicio.updateOne(
      { "name" : "sue" },
      { $set: { "ejemplo" : 3 } }
   );
#
db.Ejercicio.find({"name ejemplo" :"sue"})
#
db.Ejercicio.updateMany(
      { nombre : "Jinneth"},
      { $set: { "Profesion" : "Ingeniero de Telecomunicaciones" },
      $set:{"edad": 26} }
   );
#
db.Ejercicio.updateMany(
      { edad : {$gt:20}},
      { $set: { "Universidad" : "Universidad Distrital Francisco Jose de Caldas" } }
   );
#
db.Ejercicio.replaceOne(
      { nombre : "Jhonatan" },
      { nombre : "Jhonatan Ricón Andrade", edad : 29 }
   );

#Eliminar
db.Ejercicio.deleteOne(
       { _id : ObjectId("64527ce6a334074929f8d3d9") },
       { name : "sue", ejemplo : 3 }
   );

db.Ejercicio.deleteMany(
       { edad : {$gt: 20} }
   );

# script de conexión Visual code
'mongodb+srv://jdjimeneze:123456789UD@cluster0.m4fssab.mongodb.net/test'
