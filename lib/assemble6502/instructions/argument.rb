class Assembler::Instructions::Argument
  InvalidArgumentFormat = Class.new(ArgumentError)

  ADDRESSING_MODE_PATTERNS = {
    # (ind,X)
    indexed_indirect:           /\A\(\$(\h{2}),X\)\z/,
    #  (ind),Y
    indirect_indexed:           /\A\(\$(\h{2})\),Y\z/,
    # zpg
    zero_page_absolute:         /\A\$(\h{2})\z/,
    # zpg,X
    zero_page_absolute_indexed: /\A\$(\h{2}),X\z/,
    # #
    immediate:                  /\A#\$(\h{2})\z/,
    # abs,X
    absolute_indexed_on_x:      /\A\$(\h{4}),X\z/,
    # abs
    absolute:                   /\A\$(\h{4})\z/,
    # abs,Y
    absolute_indexed_on_y:      /\A\$(\h{4}),Y\z/,
  }.freeze

  attr_reader :addressing_mode, :value

  def initialize(arguments)
   @addressing_mode, @value = parse(arguments)
  end

  private

  def parse(arguments)
    ADDRESSING_MODE_PATTERNS.each do |addressing_mode, pattern|
      next unless match = pattern.match(arguments)
      return [addressing_mode, match[1].hex]
    end

    raise(InvalidArgumentFormat, arguments)
  end
end
