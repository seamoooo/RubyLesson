
def convert_length(length, unit_form, unit_to){
  units = { 'm' => 1, 'ft'=> 4, 'in' => 8, }
(lengt / units[unit_form] * units[unit_to]).round(2)
end

puts convert_length(1,'m','in')