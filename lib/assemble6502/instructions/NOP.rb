class Assembler::Instructions::NOP < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "No OPeration"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xea, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
