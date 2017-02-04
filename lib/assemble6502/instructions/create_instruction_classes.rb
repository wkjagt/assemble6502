require "yaml"
require "rb-readline"
require "erb"

parsed = YAML.load_file("opcodes.yaml")
# indexed_indirect: 0xa1,
# indirect_indexed: 0xb1,
# zero_page_absolute: 0xa5,
# zero_page_absolute_indexed: 0xb5,
# immediate: 0xa9,
# absolute_indexed_on_x: 0xbd,
# absolute: 0xad,
# absolute_indexed_on_y: 0xb9,

parsed.each do |instruction_name, data|
  template = File.read("instruction_template.erb")

  code = ERB.new(template).result(binding)
  # require "pry";binding.pry;:something
  File.open("#{instruction_name.to_s.upcase}.rb", 'w') { |file| file.write(code) }
end
