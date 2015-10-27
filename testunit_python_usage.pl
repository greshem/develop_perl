#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
#coding:gbk
#!/usr/bin/python
import unittest
class CaseCheck(unittest.TestCase):
	#整数相等.
	def testEqual(self):
		"""toRoman should always return uppercase"""
		for integer in range(1, 5000):
			numeral = integer
			self.assertEqual(numeral, integer)
	#整数减1 加1 相等.
	def testInterMinus(self):
		"""fromRoman should only accept uppercase input"""
		for integer in range(1, 5000):
			numeral = integer -1 
			#self.assertRaises(numeral+1 , integer)
			self.assertEqual(numeral+1 , integer)

if __name__ == "__main__":
	unittest.main()


