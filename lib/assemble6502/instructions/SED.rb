class Assembler::Instructions::SED < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "SEt Decimal"
    @flags = [:d]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0xf8, len: 1, cycles: 2, },
    }

    super
  end
end
