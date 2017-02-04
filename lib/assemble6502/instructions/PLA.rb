class Assembler::Instructions::PLA < Assembler::Instructions::Instruction
  def initialize
    @description = "PuLl Accumulator"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x68, len: 1, cycles: 4, boundry_add: false, },
    }
  end
end
