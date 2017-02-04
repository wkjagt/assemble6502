require "test_helper"

class Assembler::Instructions::ArgumentTest < ActiveSupport::TestCase
  test "indirect_x" do
    arguments = '($fe,X)'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :indirect_x, parsed.addressing_mode
    assert_equal "fe", parsed.operand
  end

  test "indirect_y" do
    arguments = '($fe),Y'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :indirect_y, parsed.addressing_mode
    assert_equal "fe", parsed.operand
  end

  test "zero_page" do
    arguments = '$fe'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :zero_page, parsed.addressing_mode
    assert_equal "fe", parsed.operand
  end

  test "zero_page_x" do
    arguments = '$fe,X'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :zero_page_x, parsed.addressing_mode
    assert_equal "fe", parsed.operand
  end

  test "immediate" do
    arguments = '#$fe'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :immediate, parsed.addressing_mode
    assert_equal "fe", parsed.operand
  end

  test "absolute_indexed using X register" do
    arguments = '$fefe,X'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :absolute_x, parsed.addressing_mode
    assert_equal "fefe", parsed.operand
  end

  test "absolute" do
    arguments = '$fefe'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :absolute, parsed.addressing_mode
    assert_equal "fefe", parsed.operand
  end

  test "absolute_indexed using Y register" do
    arguments = '$fefe,Y'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :absolute_y, parsed.addressing_mode
    assert_equal "fefe", parsed.operand
  end

  test "raises for invalid arguments" do
    arguments = '$invalid'
    assert_raises(Assembler::Instructions::Argument::InvalidArgumentFormat, arguments) do
      Assembler::Instructions::Argument.new(arguments)
    end
  end
end
