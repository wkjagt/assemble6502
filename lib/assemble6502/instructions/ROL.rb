class Assembler::Instructions::ROL < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "ROtate Left"
    @flags = [:s, :z, :c]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x2a, len: 1, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x26, len: 2, cycles: 5, boundry_add: false, },
      zero_page_x: { hex: 0x36, len: 2, cycles: 6, boundry_add: false, },
      absolute: { hex: 0x2e, len: 3, cycles: 6, boundry_add: false, },
      absolute_x: { hex: 0x3e, len: 3, cycles: 7, boundry_add: false, },
    }

    super
  end
end
