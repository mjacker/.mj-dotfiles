# Python `list` Dunder Method Cheat Sheet

This cheat sheet summarizes the behavior of special (dunder) methods for Python's built-in `list` type.

---

## Commonly Used 

| Method         | Example                  | Description                                | Output                         |
|----------------|--------------------------|--------------------------------------------|--------------------------------|
| `__add__`      | `list.__add__(...)`      | Adds two lists (like `+`)                  | `[1, 2, 3, 4]`                 |
| `__class__`    | `list.__class__(...)`    | Returns the class type of the object       | `<class 'list'>`              |
| `__contains__` | `list.__contains__(...)` | Checks membership (like `in`)              | `True`                         |
| `__delitem__`  | `list.__delitem__(...)`  | Deletes item at index                      | `[1, 2, 3]`                    |
| `__dir__`      | `list.__dir__(...)`      | Lists all attributes and methods           | List of method names           |
| `__doc__`      | `list.__doc__(...)`      | Returns the docstring                      | Built-in mutable sequence...   |
| `__eq__`       | `list.__eq__(...)`       | Equality comparison                        | `True`                         |
| `__format__`   | `list.__format__(...)`   | String formatting                          | `[2, 3]`                       |
| `__ge__`       | `list.__ge__(...)`       | Greater than or equal comparison           | `True`                         |
| `__getattribute__` | `list.__getattribute__(...)` | Dynamically get attributes       | `2`                            |
| `__getitem__`  | `list.__getitem__(...)`  | Indexing                                   | `2`                            |
| `__gt__`       | `list.__gt__(...)`       | Greater than comparison                    | `True`                         |
| `__hash__`     | `list.__hash__(...)`     | Lists are unhashable                       | `None`                         |
| `__iadd__`     | `list.__iadd__(...)`     | In-place addition (like `+=`)              | `[2, 3]`                       |
| `__imul__`     | `list.__imul__(...)`     | In-place multiplication (like `*=`)        | `[2, 3, 5]`                    |
| `__init__`     | `list.__init__(...)`     | Constructor for creating a list            | `[1, 2, 3]`                    |
| `__iter__`     | `list.__iter__(...)`     | Creates an iterator                        | `[2, 3, 5, 2, 3, 5]`          |
| `__le__`       | `list.__le__(...)`       | Less than or equal comparison              | `False`                        |
| `__len__`      | `list.__len__(...)`      | Returns the length of the list             | `6`                            |
| `__lt__`       | `list.__lt__(...)`       | Less than comparison                       | `True`                         |
| `__mul__`      | `list.__mul__(...)`      | Multiplies the list (like `*`)             | `[2, 3, 5, 2, 3, 5, ...]`      |
| `__ne__`       | `list.__ne__(...)`       | Not equal comparison                       | `True`                         |
| `__new__`      | `list.__new__(...)`      | Creates a new empty list instance          | `[]`                           |
| `__repr__`     | `list.__repr__(...)`     | Developer-friendly string representation   | `[2, 3, 5, 2, 3, 5]`          |
| `__reversed__` | `list.__reversed__(...)` | Reverses the list                          | `[5, 3, 2, 5, 3, 2]`          |
| `__rmul__`     | `list.__rmul__(...)`     | Right-side multiplication                  | `[2, 3, 5, 2, 3, 5, ...]`      |
| `__setitem__`  | `list.__setitem__(...)`  | Assigns a value by index                   | `[2, 3, 5, 2, 3, 5]`          |
| `__sizeof__`   | `list.__sizeof__(...)`   | Returns the memory size                    | `136`                          |
| `__str__`      | `list.__str__(...)`      | User-friendly string representation        | `[99, 3, 5, 2, 3, 5]`         |

---

## Rarely Used Methods

| Method               | Description                             |
|----------------------|-----------------------------------------|
| `__class_getitem__`  | Rarely used or internal (type hints)    |
| `__delattr__`        | Rarely used or internal                 |
| `__getstate__`       | Used in object serialization (pickle)   |
| `__init_subclass__`  | Metaclass customization                 |
| `__reduce__`         | Serialization support                   |
| `__reduce_ex__`      | Version-aware serialization             |
| `__setattr__`        | Attribute setting, not for lists        |
| `__subclasshook__`   | Used by abstract base classes           |

