class Assembler::Instructions::BCS < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on Carry Set"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0xb0, len: 2, },
    }

    super
  end
end
