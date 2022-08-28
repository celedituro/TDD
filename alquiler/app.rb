require_relative './model/alquiler'

fecha_alquiler = ARGV[0]
fecha_devolucion = ARGV[1]
cuit = ARGV[2]
tipo_alquiler = ARGV[3]
param_alquiler = ARGV[4].to_i

if ARGV.size < 5
  puts 'Error: Faltan ingresar parametros'
  exit 1
end

if tipo_alquiler != 'h' && tipo_alquiler != 'd' && tipo_alquiler != 'k'
  puts 'Error tipo_alquiler: Ingresar h, d o k'
  exit 1
end

alquiler = if tipo_alquiler == 'h'
             AlquilerHora.new(fecha_alquiler, fecha_devolucion, cuit, param_alquiler)
           elsif tipo_alquiler == 'd'
             AlquilerDia.new(fecha_alquiler, fecha_devolucion, cuit, param_alquiler)
           else
             AlquilerKm.new(fecha_alquiler, fecha_devolucion, cuit, param_alquiler)
           end

importe = alquiler.importe_total

puts "importe: #{importe}"
