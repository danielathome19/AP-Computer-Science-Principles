class Salesperson:
  def __init__(self, id, code, sales):
    self.id = id
    self.code = code
    self.sales = sales
    self.comm = 0.0

  def calc(self):
    if self.code == 5 or self.code == 8:
      if self.sales <= 5000:
        self.comm = self.sales * 0.075
      else:
        self.comm = 5000 * 0.075 + (self.sales-5000) * 0.085
    elif self.code == 17:
      if self.sales <= 3500:
        self.comm = self.sales * 0.095
      else:
        self.comm = 3500 * 0.095 + (self.sales-3500) * 0.12

  def __str__(self):  # toString
    return f"{self.id}   {self.code}   ${self.sales:.2f}   ${self.comm:.2f}"