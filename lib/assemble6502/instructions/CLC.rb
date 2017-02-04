class Assembler::Instructions::CLC < Assembler::Instructions::Instruction
  def initialize
    @description = "CLear Carry"
    @flags = [:c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x18, len: 1, cycles: 2, },
    }
  end
end
