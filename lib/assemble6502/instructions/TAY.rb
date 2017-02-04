class Assembler::Instructions::TAY < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Transfer A to Y"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xa8, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
