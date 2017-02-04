class Assembler::Instructions::TYA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Transfer Y to A"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x98, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
