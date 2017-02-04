class Assembler::Instructions::ADC < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "ADd with Carry"
    @flags = [:s, :v, :z, :c]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0x69, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x65, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0x75, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0x6d, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0x7d, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0x79, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0x61, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0x71, len: 2, cycles: 5, boundry_add: true, },
    }

    super
  end
end
