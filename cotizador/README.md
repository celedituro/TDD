Ejercicio Cotizador
===========================

## Uso del proyecto

Una vez realizada la instalación:

1. Instalar las dependencias del proyecto ejecutando _bundle install_
2. Ejecutar las pruebas ejecutando _bundle exec rake_

## Consigna del ejercicio

Construir una aplicación de línea de comandos que a partir de las especificaciones de un vehículo calculen
su coeficiente impositivo (ci) que es un número entero y su valor de mercado (vm) que es un número de punto flotante con 1 decimal (truncado).

~~~
# la aplicación debe funcionar siendo invocada de la siguiente forma
ruby app.rb <tipo>/<cilindrada>/<kilometros>

# y debe generar una salida por la terminal como la siguiente
ci:<coeficiente_impositivo> & vm:<valor_de_mercado>
~~~

Donde:
- **tipo**: auto | camioneta | camion
- **cilindrada**: 1000| 1600 | 2000
- **kilometros**: número natural

Considerando:
- **coeficiente_impositivo** = (precio_base * cilindrada) / 1000000
- **valor_mercado auto** = (coeficiente_impositivo * precio_base) / (1 + 0.001 * kilometraje)
- **valor_mercado camioneta** = 3*(coeficiente_impositivo * precio_base) / ((kilometraje + cilindrada)*0.003)
- **valor_mercado camion** = (coeficiente_impositivo * precio_base) / ((kilometraje + cilindrada)*0.002)

Donde precio base:
- **auto**: 1000
- **camioneta**: 1500
- **camion**: 2000

Ejemplo:
~~~
ruby app.rb auto/1000/1000
ci:1 & vm:500.0
~~~


