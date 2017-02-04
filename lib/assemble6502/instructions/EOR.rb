class Assembler::Instructions::EOR < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "bitwise Exclusive OR"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0x49, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x45, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0x55, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0x4d, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0x5d, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0x59, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0x41, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0x51, len: 2, cycles: 5, boundry_add: true, },
    }

    super
  end
end
