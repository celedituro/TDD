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

alquiler = Alquiler.new(fecha_alquiler, fecha_devolucion, cuit, tipo_alquiler, param_alquiler)

importe = alquiler.importe_total

puts "importe: #{importe}"
