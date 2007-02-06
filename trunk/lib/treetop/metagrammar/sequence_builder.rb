module Treetop
  class SequenceBuilder < ParsingExpressionBuilder
    def build
      delimited_sequence(:primary, :whitespace) do
        def value(grammar)
          Sequence.new(element_values(grammar))
        end
      end
    end    
  end
end