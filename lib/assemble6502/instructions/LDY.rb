class Assembler::Instructions::LDY < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "LoaD Y register"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0xa0, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0xa4, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0xb4, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0xac, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0xbc, len: 3, cycles: 4, boundry_add: true, },
    }

    super
  end
end
