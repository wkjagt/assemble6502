class Assembler::Instructions::PHP < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "PusH Processor status"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x8, len: 1, cycles: 3, boundry_add: false, },
    }

    super
  end
end
