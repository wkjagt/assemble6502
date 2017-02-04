class Assembler::Instructions::PLP < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "PuLl Processor status"
    @flags = [:n, :v, :u, :b, :d, :i, :z, :c]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x28, len: 1, cycles: 4, boundry_add: false, },
    }

    super
  end
end
