class Assembler::Instructions::PLP < Assembler::Instructions::Instruction
  def initialize
    @description = "PuLl Processor status"
    @flags = [:n, :v, :u, :b, :d, :i, :z, :c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x28, len: 1, cycles: 4, boundry_add: false, },
    }
  end
end
