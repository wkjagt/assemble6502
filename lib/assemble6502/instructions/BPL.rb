class Assembler::Instructions::BPL < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on PLus"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0x10, len: 2, },
    }

    super
  end
end
