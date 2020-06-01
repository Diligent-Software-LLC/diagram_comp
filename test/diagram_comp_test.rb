require_relative 'test_helper'

# DiagramCompositionTest.
# @class_description
#   Tests the DiagramComposition class.
class DiagramCompositionTest < Minitest::Test

  # Constants.
  CLASS = Diagram

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   .yardopts, .gitignore, Changelog.md, CODE_OF_CONDUCT.md,
  #   diagram_comp.gemspec, Gemfile.lock, and Rakefile files exist.
  def test_conf_doc_f_ex()
    
    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')
    assert_path_exists('.gitignore')
    assert_path_exists('Changelog.md')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('diagram_comp.gemspec')
    assert_path_exists('Gemfile.lock')
    assert_path_exists('Rakefile')
  
  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(DiagramComposition::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
  end

  # Diagram.diagrammable().

  # test_diagrammable_x().
  # @description
  #   DIAGRAMMABLE.
  def test_diagrammable_x()
    expected = Set[Node, LinkedList]
    assert_equal(expected, CLASS.diagrammable())
  end

  # initialize().

  # test_no_init().
  # @description
  #   Diagram's 'iniitialize' is unresponsive.
  def test_no_init()
    refute_respond_to(CLASS, :initialize)
  end

  # Diagram.backward_arrow().

  # test_cba_x().
  # @description
  #   BACKWARD_ARROW.
  def test_cba_x()
    expected = '<--'.freeze()
    assert_equal(expected, CLASS.backward_arrow())
  end

  # Diagram.forward_arrow().

  # test_cfa_x().
  # @description
  #   FORWARD_ARROW.
  def test_cfa_x()
    expected = '-->'.freeze()
    assert_equal(expected, Diagram.forward_arrow())
  end

  # Diagram.pipe().

  # test_cp_x().
  # @description
  #   PIPE.
  def test_cp_x()
    expected = '|'.freeze()
    assert_equal(expected, CLASS.pipe())
  end

  # Diagram.space().

  # test_cs_x().
  # @description
  #   SPACE.
  def test_cs_x()
    expected = ' '.freeze()
    assert_equal(expected, CLASS.space())
  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end
  
end
