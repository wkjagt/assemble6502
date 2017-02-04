class Assembler::Instructions::STA < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "STore Accumulator"
    @flags = []
    @branch = nil
    @addressing_modes = {
      zero_page: { hex: 0x85, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0x95, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0x8d, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0x9d, len: 3, cycles: 5, boundry_add: false, },
      absolute_y: { hex: 0x99, len: 3, cycles: 5, boundry_add: false, },
      indirect_x: { hex: 0x81, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0x91, len: 2, cycles: 6, boundry_add: false, },
    }

    super
  end
end
