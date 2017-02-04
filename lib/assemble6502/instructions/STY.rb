class Assembler::Instructions::STY < Assembler::Instructions::Instruction
  def initialize
    @description = "STore Y register"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      zero_page: { hex: 0x84, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0x94, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0x8c, len: 3, cycles: 4, boundry_add: false, },
    }
  end
end
