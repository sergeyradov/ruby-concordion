class ConcordionParseResult
  include ConcordionUtility
  attr_accessor :concordion_command, :system_under_test, :content, :tag
  def initialize(cmd, sut, content, tag)
    @concordion_command = cmd
    @system_under_test = sut
    @content = content
    @tag = tag
  end
  def to_s
    "Concordion command[#{@concordion_command}], System under test method[#{@system_under_test}], Tag Content[#{@content}]"
  end

  def is_set_command?
    "set" == @concordion_command
  end
  def is_verify_command?
    "verifyrows" == @concordion_command
  end
  def is_execute_command?
    "execute" == @concordion_command
  end

  def assignment
    concordion_assignment(@system_under_test)
  end

  def needs_dereference?
    @system_under_test =~ /^#/ && @system_under_test.index("=").nil?
  end
end
