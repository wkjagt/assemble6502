class Assembler::Instructions::SBC < Assembler::Instructions::Instruction
  def initialize
    @description = "SuBtract with Carry"
    @flags = [:s, :v, :z, :c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      immediate: { hex: 0xe9, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0xe5, len: 2, cycles: 3, boundry_add: false, },
      zero_page_x: { hex: 0xf5, len: 2, cycles: 4, boundry_add: false, },
      absolute: { hex: 0xed, len: 3, cycles: 4, boundry_add: false, },
      absolute_x: { hex: 0xfd, len: 3, cycles: 4, boundry_add: true, },
      absolute_y: { hex: 0xf9, len: 3, cycles: 4, boundry_add: true, },
      indirect_x: { hex: 0xe1, len: 2, cycles: 6, boundry_add: false, },
      indirect_y: { hex: 0xf1, len: 2, cycles: 5, boundry_add: true, },
    }
  end
end
