class Assembler::Instructions::CLV < Assembler::Instructions::Instruction
  def initialize
    @description = "CLear oVerflow"
    @flags = [:v]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xb8, len: 1, cycles: 2, },
    }
  end
end
