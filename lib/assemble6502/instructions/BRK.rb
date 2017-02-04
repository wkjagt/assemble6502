class Assembler::Instructions::BRK < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "BReaK"
    @flags = [:b]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x0, len: 1, cycles: 7, boundry_add: false, },
    }

    super
  end
end
