class Assembler::Instructions::CLD < Assembler::Instructions::Instruction
  def initialize
    @description = "CLear Decimal"
    @flags = [:d]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xd8, len: 1, cycles: 2, },
    }
  end
end
