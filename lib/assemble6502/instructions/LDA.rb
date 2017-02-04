class Assembler::Instructions::LDA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "LoaD Accumulator"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0xa9, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0xa5, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0xb5, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0xad, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0xbd, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0xb9, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0xa1, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0xb1, len: 2, cycles: 5, boundry_add: true, },
    }

    super
  end
end
