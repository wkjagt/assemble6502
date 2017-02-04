class Assembler::Instructions::AND < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "bitwise AND with accumulator"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0x29, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x25, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0x35, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0x2d, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0x3d, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0x39, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0x21, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0x31, len: 2, cycles: 5, boundry_add: true, },
    }

    super
  end
end
