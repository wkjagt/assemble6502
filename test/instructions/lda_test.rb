require "test_helper"

class Assembler::Instructions::LDATest < ActiveSupport::TestCase
  test "correct instruction from indexed_indirect" do
    argument = stub(
      addressing_mode: :indexed_indirect,
      value: 0xfe
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa1, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from indirect_indexed" do
    argument = stub(
      addressing_mode: :indirect_indexed,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xb1, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from zero_page_absolute" do
    argument = stub(
      addressing_mode: :zero_page_absolute,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa5, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from zero_page_absolute_indexed" do
    argument = stub(
      addressing_mode: :zero_page_absolute_indexed,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xb5, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from immediate" do
    argument = stub(
      addressing_mode: :immediate,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa9, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from absolute_indexed_on_x" do
    argument = stub(
      addressing_mode: :absolute_indexed_on_x,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xbd, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from absolute" do
    argument = stub(
      addressing_mode: :absolute,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa9, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from absolute_indexed_on_y" do
    argument = stub(
      addressing_mode: :absolute_indexed_on_y,
      value: 0xfe,
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xb9, 0xfe], instruction.to_bytecode
  end

  test "raises with unsupported addressing_mode" do
    argument = stub(
      addressing_mode: :invalid,
      value: 0xfe,
    )
    assert_raises(Assembler::Instructions::Instruction::NoOpcode, :invalid) do
      Assembler::Instructions::LDA.new(argument)
    end
  end
end
