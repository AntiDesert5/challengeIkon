# Challenge Ikon

Intrucciones: 

- Tener instalado flutter version minima del SDK 2.0.0.
- Correr main dentro del codigo.

- Puedes encontrar la lista de contactos dentro del archivo model, en la carpeta Utils.

La aplicacion permite mostrar una lista de contactos ordenados por la primer letra, filtrar usuarios por medio del textfield, se realiza un validacion de caracteres con expreciones regulares para evitar caracteres no validos.

Si se selecciona un nombre de la agenda se mostrara una nueva pantalla haciendo énfasis a el nombre seleccionado.

- scroll to index: 

Realizar un Scroll to index es un proceso mas complicado dado que se requiere empezar generando un controlador de tipo ScrollController, este controlador será el que nos permita desplazar el scroll a la posición deseada, ahora lo que complica este tema es conocer en que parte del scroll estamos ya que dependiendo del eje x o y se tendrán distintas coordenadas, esto se puede solucionar dándoles una tamaño fijo a los items de la lista, de esta manera sabremos que si queremos ir a el índice 8 tenemos que multiplicar el tamaño dado por el numero de índice, de esta manera podemos notificar al controlador por medio del atributo animateTo.

- Para resolver este reto se analizo las posibles soluciones, y se opto por tener un enfoque orientado a lo practico, crear un widget que de el funcionamiento de una lista desplazable según los contactos , con la posibilidad de filtrarlos por medio de una busqueda. se opto por utilizar el patrón del MVC, ya que es una aplicación muy sencilla y se podría escalar la complejidad sin dar problemas.

