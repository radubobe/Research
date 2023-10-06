

class UtilWebots:

    def __init__(self, numbers):
        self.numbers = numbers

    def find(self, n):
        m = len(self.numbers) - 2
        while m > 0:
            if n <= self.numbers[m]:
                return self.numbers[m - 1]
            else:
                m -= 3
        return self.numbers[1]

    def get(self, n):
        value = self.find(n)
        return value if value < 0.06 else 0.0
