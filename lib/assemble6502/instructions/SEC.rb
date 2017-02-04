class Assembler::Instructions::SEC < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "SEt Carry"
    @flags = [:c]
    @branch = nil
    @addressing_modes = {
      implied: { hex: 0x38, len: 1, cycles: 2, },
    }

    super
  end
end
