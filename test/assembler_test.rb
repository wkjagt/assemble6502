require "test_helper"

class AssemblerTest < ActiveSupport::TestCase

  test "it turns a correct program into instructions" do
    program = 'LDA #$fe'
    instructions = Assembler.new.assemble(program)

    assert_equal 1, instructions.size
    assert_instance_of Assembler::Instructions::LDA, instructions.first
    assert_equal [0xa9, 0xfe], instructions.first.to_bytecode
  end
end
