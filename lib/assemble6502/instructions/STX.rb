class Assembler::Instructions::STX < Assembler::Instructions::Instruction
  def initialize
    @description = "STore X register"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      zero_page: { hex: 0x86, len: 2, cycles: 3, boundry_add: false, },
      zero_page_y: { hex: 0x96, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0x8e, len: 3, cycles: 4, boundry_add: false, },
    }
  end
end
