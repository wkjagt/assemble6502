class Assembler::Instructions::INY < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "INcrement Y"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xc8, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
