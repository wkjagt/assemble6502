class Assembler::Instructions::SEC < Assembler::Instructions::Instruction
  def initialize
    @description = "SEt Carry"
    @flags = [:c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x38, len: 1, cycles: 2, },
    }
  end
end
