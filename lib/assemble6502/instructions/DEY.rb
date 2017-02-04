class Assembler::Instructions::DEY < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "DEcrement Y"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x88, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
