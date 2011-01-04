require 'test/unit'
require File.expand_path("../../lib/references", __FILE__)

class TestStrongReference < Test::Unit::TestCase
  def test_can_get_objects
    obj = Object.new
    ref = References::StrongReference.new(obj)
    assert_equal obj, ref.object
    assert_equal obj.object_id, ref.referenced_object_id
  end

  def test_inspect
    ref = References::WeakReference.new(Object.new)
    assert ref.inspect
  end
end
