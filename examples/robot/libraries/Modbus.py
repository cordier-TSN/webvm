
from robot.api.deco import keyword, library
from pyModbusTCP.client import ModbusClient

@library
class Modbus:
    def __init__(self):
        self.c = ModbusClient(auto_open=True)

    @keyword
    def read(self, registre):
        regs_l = self.c.read_holding_registers(registre, 1)
        return regs_l

    @keyword
    def write(self, registre, value):
        self.c.write_single_register(registre, value)

