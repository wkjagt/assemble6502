class Assembler::Instructions::INC < Assembler::Instructions::Instruction
  def initialize
    @description = "INCrement memory"
    @flags = [:s, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      zero_page: { hex: 0xe6, len: 2, cycles: 5, boundry_add: false, },
      zero_page_x: { hex: 0xf6, len: 2, cycles: 6, boundry_add: false, },
      absolute: { hex: 0xee, len: 3, cycles: 6, boundry_add: false, },
      absolute_x: { hex: 0xfe, len: 3, cycles: 7, boundry_add: false, },
    }
  end
end
