class Assembler::Instructions::DEC < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "DECrement memory"
    @flags = [:s, :z]
    @branch = nil
    @addressing_modes = {
      zero_page: { hex: 0xc6, len: 2, cycles: 5, boundry_add: false, },
      zero_page_x: { hex: 0xd6, len: 2, cycles: 6, boundry_add: false, },
      absolute: { hex: 0xce, len: 3, cycles: 6, boundry_add: false, },
      absolute_x: { hex: 0xde, len: 3, cycles: 7, boundry_add: false, },
    }

    super
  end
end
