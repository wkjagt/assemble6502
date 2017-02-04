class Assembler::Instructions::CLI < Assembler::Instructions::Instruction
  def initialize
    @description = "CLear Interrupt"
    @flags = [:i]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x58, len: 1, cycles: 2, },
    }
  end
end
