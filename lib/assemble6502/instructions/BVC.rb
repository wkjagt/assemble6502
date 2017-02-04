class Assembler::Instructions::BVC < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on oVerflow Clear"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0x50, len: 2, },
    }

    super
  end
end
