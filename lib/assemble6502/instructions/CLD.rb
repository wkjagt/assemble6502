class Assembler::Instructions::CLD < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "CLear Decimal"
    @flags = [:d]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xd8, len: 1, cycles: 2, },
    }

    super
  end
end
