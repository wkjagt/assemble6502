class Assembler::Instructions::LDA < Assembler::Instructions::Instruction
  def opcodes
    {
      indexed_indirect: 0xa1,
      indirect_indexed: 0xb1,
      zero_page_absolute: 0xa5,
      zero_page_absolute_indexed: 0xb5,
      immediate: 0xa9,
      absolute_indexed_on_x: 0xbd,
      absolute: 0xad,
      absolute_indexed_on_y: 0xb9,
    }
  end
end
