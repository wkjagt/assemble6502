class Assembler::Instructions::TXA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Transfer X to A"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x8a, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
