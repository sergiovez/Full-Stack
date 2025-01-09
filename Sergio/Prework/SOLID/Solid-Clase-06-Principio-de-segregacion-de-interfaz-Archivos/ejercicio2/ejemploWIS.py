# using PROTOCOL
from typing import Protocol


class IOpoeracionFinanciera(Protocol):
    def depositar(self, monto: float) -> None: ...
    def retirar(self, monto: float) -> None: ...
    def transferir(self, monto: float, a_cuenta: str) -> None: ...


class CuentaAhorros:
    def depositar(self, monto: float) -> None:
        print(f"Depositando { monto} en cuenta de ahorros")

    def retirar(self, amount: float) -> None:
        print(f"Retirando {amount} de cuenta de ahorros")

    # Raise una excepcion rompe ISP


class CuentaCorriente:
    def depositar(self, monto: float) -> None:
        print(f"Depositando { monto} en cuenta corriente")

    def retirar(self, amount: float) -> None:
        print(f"Retirando {amount} de cuenta corriente")

    def transferir(self, amount: float, a_cuenta: str) -> None:
        print(f"Transfiriendo {amount} de cuenta corriente a cuenta { a_cuenta}")


cuentaAhorros = CuentaAhorros()
cuentaAhorros.depositar(100)
cuentaAhorros.retirar(50)

cuentaCorriente = CuentaCorriente()
cuentaCorriente.depositar(100)
cuentaCorriente.retirar(50)
cuentaCorriente.transferir(20, "ABCSK189148")
