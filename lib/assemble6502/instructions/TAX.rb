class Assembler::Instructions::TAX < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Transfer A to X"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xaa, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
