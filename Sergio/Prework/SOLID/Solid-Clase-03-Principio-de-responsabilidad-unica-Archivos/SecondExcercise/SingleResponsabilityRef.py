class Order:
    def __init__(self):
        self.items = []
        self.quatities = []
        self.prices = []
        self.status = "open"

    def add_item(self, name: str, quantity: int, price: float) -> None:
        self.items.append(name)
        self.quatities.append(quantity)
        self.prices.append(price)


class PaymentProcesor:
    def pay(self, order: Order, security_code: str, payment_type: str):
        if payment_type == "debit":
            print("Processing debit payment type")
            print(f"Verifying security code: {security_code}")
            order.status = "paid"
        elif payment_type == "credit":
            print("Processing credit payment type")
            print(f"Verifying security code: {security_code}")
            order.status = "paid"
        else:
            raise Exception(f"Unknown payment type: {payment_type}")


class CalculateProcesor:
    def total_price(self, order=Order):
        total = 0
        for quantity, price in zip(order.quatities, order.prices):
            total += quantity * price
        return total


order = Order()
print(order.status)
order.add_item("Laptop", 3, 150)
# order.add_item("SSD", 2, 20)
# order.add_item("USB cable", 1, 5)

processor = PaymentProcesor()
processor.pay(order, "12345", "debit")
print(order.status)


total = CalculateProcesor()
print(total.total_price(order))
