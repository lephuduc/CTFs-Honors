import angr
import claripy
from pwn import *

context.log_level='warn'

path_to_binary = 'bins/bin0.elf'
elf_ = ELF(path_to_binary)
start_address = elf_.entry
password_length = 0x28

project = angr.Project(path_to_binary,main_opts={'base_addr':0x00})

password = [claripy.BVS(f"pw_{i}",8) for i in range(password_length)]

# password=claripy.BVS('password',25*8)

def getcwd_hook(state):
    addr_needtofeed = state.regs.rax
    print(addr_needtofeed)
    for i, byte_symbolic in enumerate(password):
        addr_byte = addr_needtofeed + i
        state.memory.store(addr_byte, byte_symbolic)
def hook_func(state):
    addr_needtofeed = state.regs.rdi
    buf = state.memory.load(addr_needtofeed,password_length)
    print(buf)
    addr_needtofeed = state.regs.rax
    buf = state.memory.load(addr_needtofeed,password_length)
    print(buf)
# project.hook_symbol('getcwd',getcwd_hook)
project.hook(0x11FA,getcwd_hook)
project.hook(0x123C,hook_func)
state=project.factory.entry_state(
    add_options = { angr.options.SYMBOL_FILL_UNCONSTRAINED_MEMORY,
                    angr.options.SYMBOL_FILL_UNCONSTRAINED_REGISTERS}
        )
sim_manager=project.factory.simgr(state)

sim_manager.explore(find=0x1245)

if(len(sim_manager.found)>0):     
    print(sim_manager.found[0].solver.eval(password,cast_to=bytes))