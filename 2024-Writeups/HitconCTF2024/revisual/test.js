function floatToUint8Array(floatNumber) {
    const buffer = new ArrayBuffer(4);
    const view = new DataView(buffer);
    view.setFloat32(0, floatNumber, true); // true for little-endian, false for big-endian
    const uint8Array = new Uint8Array(buffer);
    return uint8Array;
}

function Uint8ArrayToFloat(_0x3da8ae) {
    let res = new Float32Array(_0x3da8ae.buffer);
    return res[0x0].toFixed(0xf);
}

// test

let p = floatToUint8Array(0.3837876686390533);
0.383787661790848
console.log(p)
console.log(Uint8ArrayToFloat(p))

canvas_calc = _0x53c5a8
let count = 0;
for (let a = 0; a < 25; a++) {
    for (let b = 0; b < 25; b++){
        for (let c = 0; c < 25; c++){
            if (Math.abs(0.21054889940828397 - canvas_calc.gtfo(a, b, c, 0x8, 0x2)) < 0.0000000001) {
                console.log(data[i]);
            }
            if (count%10000==0) console.log(count);
            count++;
        }
    }
}


canvas_calc = _0x53c5a8
start = 0
end = 6375600

//0 - 2000000: [2, 22, 7, 21, 19] [6, 15, 9, 1, 23]

for (let i = start; i < end; i++){
    //g5: 0xb, 0x1 ,0x15
    //g14: 0xb 0x3 0x1
    //g6: 0x8, 0xb, 0x1
    let g5 = canvas_calc.wtf(data[i][0], data[i][2], data[i][3]) * 0x19;
    let g14 = canvas_calc.wtf(data[i][0], data[i][1], data[i][2]) * 0x19;
    let g6 = canvas_calc.wtf(data[i][4], data[i][0], data[i][2]) * 0x19;

    if (Math.abs(0.21054889940828397 - canvas_calc.gtfo(g14, g5, g6, 0x8, 0x2)) < 0.0000005) {
        console.log(data[i],canvas_calc.gtfo(g14, g5, g6, 0x8, 0x2));
    }
    if (i%50000==0) console.log(i);

}
canvas_calc = _0x53c5a8
numbers = new Uint8Array(25);
numbers[0x0] = 19;
numbers[0x1] = 9;
numbers[0x2] = 8;
numbers[0x3] = 15;
numbers[0x4] = 3;
numbers[0x5] = 18;
numbers[0x6] = 17;
numbers[0x7] = 10;
numbers[0x8] = 23;
numbers[0x9] = 5;
numbers[0xa] = 0;
numbers[0xb] = 6;
numbers[0xc] = 24;
numbers[0xd] = 14;
numbers[0xe] = 12;
numbers[0x10] = 2;
numbers[0x11] = 13;
numbers[0x12] = 16;
numbers[0x13] = 4;
numbers[0x14] = 7;
numbers[0x15] = 1;
numbers[0x16] = 21;
numbers[0x17] = 22;

let g16 = canvas_calc.wtf(numbers[0xe], numbers[0x1], numbers[0x9]) * 0x19;
let g5 = canvas_calc.wtf(numbers[0xb], numbers[0x1], numbers[0x15]) * 0x19;
let g11 = canvas_calc.wtf(numbers[0x10], numbers[0xe], numbers[0xd]) * 0x19;
let g14 = canvas_calc.wtf(numbers[0xb], numbers[0x3], numbers[0x1]) * 0x19;
let g6 = canvas_calc.wtf(numbers[0x8], numbers[0xb], numbers[0x1]) * 0x19;
let g8 = canvas_calc.wtf(numbers[0x11], numbers[0x9], numbers[0x15]) * 0x19;
let g7 = canvas_calc.wtf(numbers[0x9], numbers[0x5], numbers[0x4]) * 0x19;
let g0 = canvas_calc.wtf(numbers[0x13], numbers[0x3], numbers[0x5]) * 0x19;
let g4 = canvas_calc.wtf(numbers[0x14], numbers[0xd], numbers[0x5]) * 0x19;
let g19 = canvas_calc.wtf(numbers[0x16], numbers[0x0], numbers[0x13]) * 0x19;
let g2 = canvas_calc.wtf(numbers[0xb], numbers[0x16], numbers[0x12]) * 0x19;
let g3 = canvas_calc.wtf(numbers[0x5], numbers[0x11], numbers[0x2]) * 0x19;
let g1 = canvas_calc.wtf(numbers[0x7], numbers[0x14], numbers[0x12]) * 0x19;
let g12 = canvas_calc.wtf(numbers[0x5], numbers[0x6], numbers[0xa]) * 0x19;
let g17 = canvas_calc.wtf(numbers[0x12], numbers[0xb], numbers[0x11]) * 0x19;

for (let a = 0; a < 25; a++) {
    // for (let b = 0; b < 25; b++) {
        // for (let c = 0; c < 25; c++) {
        //     for (let d = 0; d < 25; d++) {
                let g18 = canvas_calc.wtf(numbers[0xc], a, numbers[0x2]) * 0x19;

                if (Math.abs(0.5579334437869822 - canvas_calc.gtfo(g14, g2, g18, 0x13, 0xb)) < 0.0000005) {
                    console.log("'"+a+"'");
            //     }
            // }
        // }
    }
}