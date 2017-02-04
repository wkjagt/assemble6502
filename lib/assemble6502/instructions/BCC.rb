class Assembler::Instructions::BCC < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on Carry Clear"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0x90, len: 2, },
    }

    super
  end
end
