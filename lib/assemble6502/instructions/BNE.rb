class Assembler::Instructions::BNE < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on Not Equal"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0xd0, len: 2, },
    }

    super
  end
end
