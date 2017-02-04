require "yaml"
require "rb-readline"
require "erb"

parsed = YAML.load_file("opcodes.yaml")
# indirect_x: 0xa1,
# indirect_y: 0xb1,
# zero_page: 0xa5,
# zero_page_x: 0xb5,
# immediate: 0xa9,
# absolute_x: 0xbd,
# absolute: 0xad,
# absolute_y: 0xb9,

parsed.each do |instruction_name, data|
  template = File.read("instruction_template.erb")

  code = ERB.new(template).result(binding)
  # require "pry";binding.pry;:something
  File.open("#{instruction_name.to_s.upcase}.rb", 'w') { |file| file.write(code) }
end
