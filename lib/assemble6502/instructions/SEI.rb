class Assembler::Instructions::SEI < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "SEt Interrupt"
    @flags = [:i]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x78, len: 1, cycles: 2, },
    }

    super
  end
end
