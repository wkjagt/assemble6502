class Assembler::Instructions::BMI < Assembler::Instructions::Instruction
  def initialize
    @description = "Branch on MInus"
    @flags = []
    @branch = true
    @opcodes_by_addressing_mode = {
      relative: { hex: 0x30, len: 2, },
    }
  end
end
