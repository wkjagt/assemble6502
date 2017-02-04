class Assembler::Instructions::CLC < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "CLear Carry"
    @flags = [:c]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x18, len: 1, cycles: 2, },
    }

    super
  end
end
