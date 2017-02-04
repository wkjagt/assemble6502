class Assembler::Instructions::SED < Assembler::Instructions::Instruction
  def initialize
    @description = "SEt Decimal"
    @flags = [:d]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xf8, len: 1, cycles: 2, },
    }
  end
end
