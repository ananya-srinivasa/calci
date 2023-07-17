import unittest
from calci import add
from calci import substract
from calci import multiply

class AddTestCase(unittest.TestCase):
    def test_add(self):
        result = add(2, 3)
        self.assertEqual(result, 5, "Incorrect sum")
    def test_sub(self):
        r=substract(3,6)
        self.assertEqual(r,-3,"incorrect ")
    def test_multi(self):
        result=multiply(3,6)
        self.assertEqual(result,18,"incorrect ")        

if __name__ == '__main__':
    unittest.main()