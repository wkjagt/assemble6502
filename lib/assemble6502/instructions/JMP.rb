class Assembler::Instructions::JMP < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "JuMP"
    @flags = []
    @branch = nil
    @addressing_modes = {
      absolute: { hex: 0x4c, len: 3, cycles: 3, boundry_add: false, },
      indirect: { hex: 0x6c, len: 3, cycles: 5, boundry_add: false, },
    }

    super
  end
end
