require "rake/testtask"
require "yaml"

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.libs << "test"

  t.test_files = FileList["test/**/*_test.rb"]
end

task :generate_instructions do
  YAML.load_file("data/opcodes.yaml").each do |instruction_name, data|
    template = File.read("data/instruction_template.erb")

    ruby_file_path = "lib/assemble6502/instructions/#{instruction_name.to_s.upcase}.rb"
    File.open(ruby_file_path, 'w') do |file|
      file.write(ERB.new(template).result(binding))
    end
  end

end

desc "Run tests"
task :default => :test
