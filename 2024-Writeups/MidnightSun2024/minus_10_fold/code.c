void mini_func(uint8_t R15) {
    uint8_t R11 = R15;
    if (R15 != 0x0A) {
        goto loc_FE54;
    }
    R15 = 0x0D;
    mini_func(R15);
loc_FE54:
    R15 = *(&byte_3);
    R15 &= 0x02;
    if (R15 == 0) {
        goto loc_FE54;
    }
    *(&byte_67) = R11;
    return;
}