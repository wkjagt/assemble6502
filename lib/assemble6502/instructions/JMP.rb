class Assembler::Instructions::JMP < Assembler::Instructions::Instruction
  def initialize
    @description = "JuMP"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      absolute: { hex: 0x4c, len: 3, cycles: 3, boundry_add: false, },
      indirect: { hex: 0x6c, len: 3, cycles: 5, boundry_add: false, },
    }
  end
end
