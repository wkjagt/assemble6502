class Assembler::Instructions::DEX < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "DEcrement X"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xca, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
