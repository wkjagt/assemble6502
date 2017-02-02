require "test_helper"

class AssemblerTest < ActiveSupport::TestCase
#
[0xa1, 0xfe, 0xb1, 0xfe, 0xa5, 0xfe, 0xb5, 0xfe, 0xa9, 0xfe, 0xbd, 0xfe, 0xfe, 0xa5, 0xfe, 0xb9, 0xfe, 0xfe]


  test "it turns a correct program into instructions" do
    program = [
      'LDA ($fe,X)',
      'LDA ($fe),Y',
      'LDA $fe',
      'LDA $fe,X',
      'LDA #$fe',
      'LDA $fafe,X',
      'LDA $fafe',
      'LDA $fafe,Y',
    ].join("\n")


    instructions = Assembler.new.assemble(program)

    expected = [
      0xa1, 0xfe, #LDA ($fe,X)
      0xb1, 0xfe, #LDA ($fe),Y
      0xa5, 0xfe, #LDA $fe
      0xb5, 0xfe, #LDA $fe,X
      0xa9, 0xfe, #LDA #$fe
      0xbd, 0xfe, 0xfa, #LDA $fafe,X
      0xad, 0xfe, 0xfa, #LDA $fafe
      0xb9, 0xfe, 0xfa, #LDA $fafe,Y
    ]
    assert_equal expected, instructions.flat_map(&:to_bytecode)
  end
end
