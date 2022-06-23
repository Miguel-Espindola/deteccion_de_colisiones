# deteccion_de_colisiones - Español


Este es mi primer intento de crear un motor de física escrito en matlab.

El proyecto funciona de la siguiente forma.
 ## 1
 
En la carpeta polygons se define cualquier polígono que quieras, en este momento solo hay triángulos, cuadrados y círculos.
![image 12](https://user-images.githubusercontent.com/70829743/175220846-fb2e6c27-7c20-4107-9b44-fdd0f8ab7971.png)


## 2

En el archivo pruebas.mlx se declaran 2 polígonos, pueden ser de la clase que quieras 

```
t = triangle;
s = square;
```

## 3

Se generan posiciones de inicio y velocidades aleatorias usando la función generateRandomV, la cual toma como único argumento de entrada el n número de polígonos
y devuelve 2n valores de posición y velocidad

```
[v1,b1,v2,b2] = generateRandomV(2);
```
## 4

Se crea un for loop donde se está ejecutando la animación.
Dentro de este bucle se ira actualizando frame por frame la posición de los polígonos y con cada actualización se checará si hubo una colisión.

Para mover los polígonos a lo largo de la escena se utiliza la función translate, la cual mueve todos los puntos de una polyshape de una ubicación a otra.
Para detectar las colisiones, se usa la función detectCollision, la cual toma como argumento de entrad ambos polígonos y devuelve un true o false si es que 
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
