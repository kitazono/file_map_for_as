class RpgLine
  def initialize(line)
    @line = line
  end

  def specificationType
    @line[5]
  end

  def isComment
    @line[6] == "*"
  end

  def file_name
    @line[6..13]
  end

  def factor1
    @line[17..26].to_s.delete("\n").strip
  end

  def operation
    @line[27..31].to_s.strip

  end

  def factor2
    @line[32..41].to_s.strip
  end

  def result
    @line[42..47].to_s.strip
  end

  def to_s
    @line
  end
end
