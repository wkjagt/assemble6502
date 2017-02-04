class Assembler::Instructions::JSR < Assembler::Instructions::Instruction
  def initialize
    @description = "Jump to SubRoutine"
    @flags = []
    @branch = nil
    @opcodes_by_addressing_mode = {
      absolute: { hex: 0x20, len: 3, cycles: 6, boundry_add: false, },
    }
  end
end
