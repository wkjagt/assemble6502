class Assembler::Instructions::PHP < Assembler::Instructions::Instruction
  def initialize
    @description = "PusH Processor status"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x8, len: 1, cycles: 3, boundry_add: false, },
    }
  end
end
