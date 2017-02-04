class Assembler::Instructions::BVS < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on oVerflow Set"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0x70, len: 2, },
    }

    super
  end
end
