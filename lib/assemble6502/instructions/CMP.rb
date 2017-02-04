class Assembler::Instructions::CMP < Assembler::Instructions::Instruction
  def initialize
    @description = "CoMPare accumulator"
    @flags = [:s, :c, :z]
    @branch = nil
    @opcodes_by_addressing_mode = {
      immediate: { hex: 0xc9, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0xc5, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0xd5, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0xcd, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0xdd, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0xd9, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0xc1, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0xd1, len: 2, cycles: 5, boundry_add: true, },
    }
  end
end
