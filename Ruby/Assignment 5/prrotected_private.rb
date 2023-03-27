# Protected Vs Private

# Protected
# In ruby a protected method can be invoked by the objects of the defining class or its subclasses. It may be called by any instance of the defining class or its subclasses. The access remains through out the family.

class ProtectedClass
  def public_func
    p "Public"
    protected_func
  end

  protected

  def protected_func
    p "Protected"
  end
end

class ProtectedChildClass < ProtectedClass
  def child_public_func
    protected_func
  end

  def another_func(a_object)
    a_object.protected_func
  end
end

class ProtectedGrandChildClass < ProtectedChildClass
  # overriding
  def child_public_func
    p "Grand child class"
    protected_func
  end
end

my_object = ProtectedClass.new
my_object.public_func
# my_object.protected_func # Error - Can't call a protected method outside the context of the class it is defined in.

another_object = ProtectedChildClass.new
another_object.child_public_func
# another_object.protected_func # Error

new_child_object = ProtectedChildClass.new
new_parent_object = ProtectedClass.new

another_object.another_func(new_child_object)
another_object.another_func(new_parent_object)

# Access is kept through out the family
grand_child_object = ProtectedGrandChildClass.new

grand_child_object.child_public_func
another_object.another_func(grand_child_object)

# Private
# In ruby private function can only be called within the context of the defining class and by direct descendent within that same object. It is never possible to access another object's private methods directly, even if the object is of the same class as the caller.

class PrivateClass
  def public_func
    p "Public"
    private_func
  end

  private

  def private_func
    p "Private"
  end
end

class PrivateChildClass < PrivateClass
  def child_public_func
    private_func
  end

  def another_func(a_object)
    a_object.private_func # Error - not possible to access by any instance of the class
  end
end

class PrivateGrandChildClass < PrivateChildClass
  # overriding
  def child_public_func
    p "Grand child class"
    private_func
  end
end

my_object = PrivateClass.new
my_object.public_func
my_object.private_func # Error - same as protected

another_object = PrivateChildClass.new
another_object.child_public_func

new_child_object = PrivateChildClass.new
new_parent_object = PrivateClass.new

another_object.another_func(new_child_object) # Error
another_object.another_func(new_parent_object) # Error

# No error as its a direct descended to the parent class.
grand_child_object = PrivateGrandChildClass.new

grand_child_object.child_public_func
another_object.another_func(grand_child_object) # Error
