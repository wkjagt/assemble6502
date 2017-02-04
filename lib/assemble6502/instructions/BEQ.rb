class Assembler::Instructions::BEQ < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on Equal"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0xf0, len: 2, },
    }

    super
  end
end
