class Assembler::Instructions::ORA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "bitwise OR with Accumulator"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0x9, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x5, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0x15, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0xd, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0x1d, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0x19, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0x1, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0x11, len: 2, cycles: 5, boundry_add: true, },
    }

    super
  end
end
