class Assembler
  def assemble(program)
    instructions_from_program(program)
  end

  private

  def instructions_from_program(program)
    program.each_line.with_index.map do |line, index|
      begin
        Instructions.resolve(program)
      rescue Instructions::UnknownInstruction => e
        raise(e.class, "Unknown instruction #{e.message} on line #{index + 1}")
      end
    end
  end
end
