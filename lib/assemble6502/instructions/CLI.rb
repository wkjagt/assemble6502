class Assembler::Instructions::CLI < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "CLear Interrupt"
    @flags = [:i]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x58, len: 1, cycles: 2, },
    }

    super
  end
end
