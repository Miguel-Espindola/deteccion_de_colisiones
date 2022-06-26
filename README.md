# deteccion_de_colisiones - Español


Este es mi primer intento de crear un motor de física escrito en matlab.

El proyecto funciona de la siguiente forma.
 ## 1
 
En la carpeta *polygons* se define cualquier polígono que quieras, en este momento solo hay triángulos, cuadrados y círculos.


![image 12](https://user-images.githubusercontent.com/70829743/175220846-fb2e6c27-7c20-4107-9b44-fdd0f8ab7971.png)


## 2

En el archivo *pruebas.mlx* se declaran 2 polígonos, pueden ser de la clase que quieras 

```
t = triangle;
s = square;
```
two
## 3

Se generan posiciones de inicio y velocidades aleatorias usando la función *generateRandomV*, la cual toma como único argumento de entrada el n número de polígonos y devuelve 2n valores de posición y velocidad

```
[v1,b1,v2,b2] = generateRandomV(2);
```
## 4

Se crea un for loop donde se está ejecutando la animación.
Dentro de este ciclo se ira actualizando frame por frame la posición de los polígonos y con cada actualización se checará si hubo una colisión.

Para mover los polígonos a lo largo de la escena se utiliza la función *translate*, la cual mueve todos los puntos de una polyshape de una ubicación a otra.
Para detectar las colisiones, se usa la función *detectCollision*, la cual toma como argumento de entrada ambos polígonos y devuelve un true o false si es que 
se ha detectado una colisión.
```
for i = linspace(0,2,60)
    s.polygon = translate(polyshape(s.xdata,s.ydata),v1*i-b1);
    t.polygon = translate(polyshape(t.xdata,t.ydata),v2*i+b2);
    collision = detectCollision(s,t);
    if collision == true
        title('Collision!')
        break
    elseif collision == false
        title('No collision')
    end
    renderer([s.polygon,t.polygon])
end
```

# Collision detection - English

This is my first attempt at creating a physics engine written in MatLab.

The project works in the following way.

## 1
In the *polygons* folder, you can define any polygon that you want. At this moment there's just only triangles, squares and circles defined.

![image 12](https://user-images.githubusercontent.com/70829743/175220846-fb2e6c27-7c20-4107-9b44-fdd0f8ab7971.png)


## 2

In the file pruebas.mlx two polygons are declared.

```
t = triangle;
s = square;
```

## 3

Generate random start positions and velocities using the function *generateRandomV*. The function takes as input argument n number of polygons and returns 2xn vectors of positions and velocity.

```
[v1,b1,v2,b2] = generateRandomV(2);
```

## 4

A for loop it's created where the animation will be executed.

Inside the loop of the animation, the position of the polygons will be updated frame by frame with each update it will be checked if a collision has been made

To move the polygons along the scene use the function *translate*, which moves all the points of a polyshape from one point to another.

To detect collisions use the function *detectCollision* which takes as input arguments both polygons and returns a logical value if a collision has been detected.


```
for i = linspace(0,2,60)
    s.polygon = translate(polyshape(s.xdata,s.ydata),v1*i-b1);
    t.polygon = translate(polyshape(t.xdata,t.ydata),v2*i+b2);
    collision = detectCollision(s,t);
    if collision == true
        title('Collision!')
        break
    elseif collision == false
        title('No collision')
    end
    renderer([s.polygon,t.polygon])
end
```


## Logros

En el archivo de *test1* pueden ver mi primer intento por lograr esta tarea, son 55 líneas de codigo medio estructuradas y difíciles de entender, ademas cada que quería cambiar de polígono o agregar uno más se convierte en un dolor de cabeza refactorizar el codigo, en conclusión, era un codigo spaghetti.


Me siento muy orgulloso de haber reducido todo ese archivo a algo que se puede implementar en 15 líneas y es escalable.


## Achievements

In the *test1* file, you can see my first attempt at doing this task. I write 55 lines of code that are half-structured and difficult to understand, besides every time I wanted to change the polygon or add one more, it becomes a headache to refactor the code.

 In conclusion, it was a spaghetti code.
 
 I am very proud that I have reduced all that file to something that can be implemented in 15 lines and is scalable.
 
