address = 0x414F87
add_bpt(address, 0, BPT_SOFT)
enable_bpt(address, True)

end_addr = 0x416870
add_bpt(end_addr, 0, BPT_SOFT)
enable_bpt(end_addr, True)

ls = []
i = 0
while get_reg_value('rip') != end_addr:
    i+=1
    idaapi.continue_process()
    idaapi.wait_for_next_event(WFNE_SUSP, -1)
    ls.append(get_reg_value('rcx'))
    # print(i)
    print(ls)