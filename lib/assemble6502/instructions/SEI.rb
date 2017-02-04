class Assembler::Instructions::SEI < Assembler::Instructions::Instruction
  def initialize
    @description = "SEt Interrupt"
    @flags = [:i]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x78, len: 1, cycles: 2, },
    }
  end
end
