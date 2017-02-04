class Assembler::Instructions::RTI < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "ReTurn from Interrupt, TODO: Flags could be wrong"
    @flags = [:n, :v, :u, :b, :d, :i, :z, :c]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x40, len: 1, cycles: 6, boundry_add: false, },
    }

    super
  end
end
