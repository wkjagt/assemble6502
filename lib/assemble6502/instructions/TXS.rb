class Assembler::Instructions::TXS < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Transfer X to Stack ptr"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x9a, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
