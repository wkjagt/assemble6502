class Assembler::Instructions::JSR < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "Jump to SubRoutine"
    @flags = []
    @branch = nil
    @addressing_modes = {
      absolute: { hex: 0x20, len: 3, cycles: 6, boundry_add: false, },
    }

    super
  end
end
