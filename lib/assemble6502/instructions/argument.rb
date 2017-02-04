class Assembler::Instructions::Argument
  InvalidArgumentFormat = Class.new(ArgumentError)

  ADDRESSING_MODE_PATTERNS = {
    # (ind,X)
    indirect_x:  /\A\(\$(\h{2}),X\)\z/,
    #  (ind),Y
    indirect_y:  /\A\(\$(\h{2})\),Y\z/,
    # zpg
    zero_page:   /\A\$(\h{2})\z/,
    # zpg,X
    zero_page_x: /\A\$(\h{2}),X\z/,
    # #
    immediate:   /\A#\$(\h{2})\z/,
    # abs,X
    absolute_x:  /\A\$(\h{4}),X\z/,
    # abs
    absolute:    /\A\$(\h{4})\z/,
    # abs,Y
    absolute_y:  /\A\$(\h{4}),Y\z/,
  }.freeze

  attr_reader :addressing_mode, :operand

  def initialize(arguments)
   @addressing_mode, @operand = parse(arguments)
  end

  private

  def parse(arguments)
    ADDRESSING_MODE_PATTERNS.each do |addressing_mode, pattern|
      next unless match = pattern.match(arguments)
      return [addressing_mode, match[1]]
    end

    raise(InvalidArgumentFormat, arguments)
  end
end
