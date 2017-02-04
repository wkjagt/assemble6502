class Assembler::Instructions::NOP < Assembler::Instructions::Instruction
  def initialize
    @description = "No OPeration"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xea, len: 1, cycles: 2, boundry_add: false, },
    }
  end
end
