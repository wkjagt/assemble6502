class Assembler::Instructions::BMI < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Branch on MInus"
    @flags = []
    @branch = true
    @addressing_modes = {
      relative: { hex: 0x30, len: 2, },
    }

    super
  end
end
