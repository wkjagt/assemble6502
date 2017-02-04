class Assembler::Instructions::TSX < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Transfer Stack ptr to X"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xba, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
