class Assembler::Instructions::CPX < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "ComPare X register"
    @flags = [:s, :c, :z]
    @branch = nil
    @addressing_modes = {
      immediate: { hex: 0xe0, len: 2, cycles: 2, boundry_add: false, },
      zero_page: { hex: 0xe4, len: 2, cycles: 3, boundry_add: false, },
      absolute: { hex: 0xec, len: 3, cycles: 4, boundry_add: false, },
    }

    super
  end
end
