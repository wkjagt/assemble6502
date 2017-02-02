require "test_helper"

class Assembler::Instructions::ArgumentTest < ActiveSupport::TestCase
  test "indexed_indirect" do
    arguments = '($fe,X)'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :indexed_indirect, parsed.addressing_mode
    assert_equal "fe", parsed.value
  end

  test "indirect_indexed" do
    arguments = '($fe),Y'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :indirect_indexed, parsed.addressing_mode
    assert_equal "fe", parsed.value
  end

  test "zero_page_absolute" do
    arguments = '$fe'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :zero_page_absolute, parsed.addressing_mode
    assert_equal "fe", parsed.value
  end

  test "zero_page_absolute_indexed" do
    arguments = '$fe,X'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :zero_page_absolute_indexed, parsed.addressing_mode
    assert_equal "fe", parsed.value
  end

  test "immediate" do
    arguments = '#$fe'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :immediate, parsed.addressing_mode
    assert_equal "fe", parsed.value
  end

  test "absolute_indexed using X register" do
    arguments = '$fefe,X'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :absolute_indexed_on_x, parsed.addressing_mode
    assert_equal "fefe", parsed.value
  end

  test "absolute" do
    arguments = '$fefe'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :absolute, parsed.addressing_mode
    assert_equal "fefe", parsed.value
  end

  test "absolute_indexed using Y register" do
    arguments = '$fefe,Y'
    parsed = Assembler::Instructions::Argument.new(arguments)
    assert_equal :absolute_indexed_on_y, parsed.addressing_mode
    assert_equal "fefe", parsed.value
  end

  test "raises for invalid arguments" do
    arguments = '$invalid'
    assert_raises(Assembler::Instructions::Argument::InvalidArgumentFormat, arguments) do
      Assembler::Instructions::Argument.new(arguments)
    end
  end
end
