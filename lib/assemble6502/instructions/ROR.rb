class Assembler::Instructions::ROR < Assembler::Instructions::Instruction
  def initialize
    @description = "ROtate Right"
    @flags = [:s, :z, :c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x6a, len: 1, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0x66, len: 2, cycles: 5, boundry_add: false, },
      zero_page_x: { hex: 0x76, len: 2, cycles: 6, boundry_add: false, },
      absolute: { hex: 0x6e, len: 3, cycles: 6, boundry_add: false, },
      absolute_x: { hex: 0x7e, len: 3, cycles: 7, boundry_add: false, },
    }
  end
end
