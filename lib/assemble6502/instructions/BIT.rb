class Assembler::Instructions::BIT < Assembler::Instructions::Instruction
  def initialize(argument)
    @description = "test BITs"
    @flags = [:n, :v, :z]
    @branch = nil
    @addressing_modes = {
      zero_page: { hex: 0x24, len: 2, cycles: 3, boundry_add: false, },
      absolute: { hex: 0x2c, len: 3, cycles: 4, boundry_add: false, },
    }

    super
  end
end
