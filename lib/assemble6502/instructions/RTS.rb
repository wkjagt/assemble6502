class Assembler::Instructions::RTS < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "ReTurn from Subroutine"
    @flags = []
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x60, len: 1, cycles: 6, boundry_add: false, },
    }

    super
  end
end
