class Assembler::Instructions::ASL < Assembler::Instructions::Instruction
  def initialize
    @description = "Arithmetic Shift Left"
    @flags = [:s, :z, :c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0xa, len: 1, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x6, len: 2, cycles: 5, boundry_add: false, },
      zero_page_x: { hex: 0x16, len: 2, cycles: 6, boundry_add: false, },
      absolute: { hex: 0xe, len: 3, cycles: 6, boundry_add: false, },
      absolute_x: { hex: 0x1e, len: 3, cycles: 7, boundry_add: false, },
    }
  end
end
