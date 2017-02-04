class Assembler::Instructions::RTI < Assembler::Instructions::Instruction
  def initialize
    @description = "ReTurn from Interrupt, TODO: Flags could be wrong"
    @flags = [:n, :v, :u, :b, :d, :i, :z, :c]
    @branch = nil
    @opcodes_by_addressing_mode = {
      implied: { hex: 0x40, len: 1, cycles: 6, boundry_add: false, },
    }
  end
end
