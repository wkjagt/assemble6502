class Assembler::Instructions::INX < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "INcrement X"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xe8, len: 1, cycles: 2, boundry_add: false, },
    }

    super
  end
end
