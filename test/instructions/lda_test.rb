require "test_helper"

class Assembler::Instructions::LDATest < ActiveSupport::TestCase
  test "correct instruction from indirect_x" do
    # LDA ($fe,X)
    argument = stub(
      addressing_mode: :indirect_x,
      operand: "fe"
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa1, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from indirect_y" do
    # LDA ($fe),Y
    argument = stub(
      addressing_mode: :indirect_y,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xb1, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from zero_page" do
    # LDA $fe
    argument = stub(
      addressing_mode: :zero_page,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa5, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from zero_page_x" do
    # LDA $fe,X
    argument = stub(
      addressing_mode: :zero_page_x,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xb5, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from immediate" do
    # LDA #$fe
    argument = stub(
      addressing_mode: :immediate,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xa9, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from absolute_x" do
    # LDA $fe,X
    argument = stub(
      addressing_mode: :absolute_x,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xbd, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from absolute" do
    # LDA $fe
    argument = stub(
      addressing_mode: :absolute,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xad, 0xfe], instruction.to_bytecode
  end

  test "correct instruction from absolute_y" do
    # LDA $fe,Y
    argument = stub(
      addressing_mode: :absolute_y,
      operand: "fe",
    )
    instruction = Assembler::Instructions::LDA.new(argument)
    assert_equal [0xb9, 0xfe], instruction.to_bytecode
  end

  test "raises with unsupported addressing_mode" do
    argument = stub(
      addressing_mode: :invalid,
      operand: "fe",
    )
    assert_raises(Assembler::Instructions::Instruction::NoOpcode, :invalid) do
      Assembler::Instructions::LDA.new(argument)
    end
  end
end
