class Assembler::Instructions::LDX < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "LoaD X register"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0xa2, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0xa6, len: 2, cycles: 3, boundry_add: false, },
      zero_page_y: { hex: 0xb6, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0xae, len: 3, cycles: 4, boundry_add: false, },
      absolute_y: { hex: 0xbe, len: 3, cycles: 4, boundry_add: true, },
    }

    super
  end
end
