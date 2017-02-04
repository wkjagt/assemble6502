class Assembler::Instructions::CLV < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "CLear oVerflow"
    @flags = [:v]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xb8, len: 1, cycles: 2, },
    }

    super
  end
end
