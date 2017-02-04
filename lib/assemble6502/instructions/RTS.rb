class Assembler::Instructions::RTS < Assembler::Instructions::Instruction
  def initialize
    @description = "ReTurn from Subroutine"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x60, len: 1, cycles: 6, boundry_add: false, },
    }
  end
end
