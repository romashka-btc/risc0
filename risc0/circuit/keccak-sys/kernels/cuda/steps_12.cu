// Copyright 2024 RISC Zero, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "steps.cuh"
#include "witgen.h"

namespace risc0::circuit::keccak::cuda {

__device__ UnpackReg_32__16_Struct exec_UnpackReg_32__16_(
    ExecContext& ctx, Val2Array arg0, BoundLayout<UnpackReg_32__16_Layout> layout1) {
  // Div(<preamble>:15)
  // UnpackNondet(zirgen/circuit/keccak2/pack.zir:42)
  // UnpackReg(zirgen/circuit/keccak2/pack.zir:47)
  DivStruct x2 = DivStruct{._super = bitAnd(arg0[0], Val(1))};
  // Div(<preamble>:19)
  Val x3 = (bitAnd(arg0[0], Val(2)) * Val(1006632961));
  Val x4 = (bitAnd(arg0[0], Val(4)) * Val(1509949441));
  Val x5 = (bitAnd(arg0[0], Val(8)) * Val(1761607681));
  Val x6 = (bitAnd(arg0[0], Val(16)) * Val(1887436801));
  Val x7 = (bitAnd(arg0[0], Val(32)) * Val(1950351361));
  Val x8 = (bitAnd(arg0[0], Val(64)) * Val(1981808641));
  Val x9 = (bitAnd(arg0[0], Val(128)) * Val(1997537281));
  Val x10 = (bitAnd(arg0[0], Val(256)) * Val(2005401601));
  Val x11 = (bitAnd(arg0[0], Val(512)) * Val(2009333761));
  Val x12 = (bitAnd(arg0[0], Val(1024)) * Val(2011299841));
  Val x13 = (bitAnd(arg0[0], Val(2048)) * Val(2012282881));
  Val x14 = (bitAnd(arg0[0], Val(4096)) * Val(2012774401));
  Val x15 = (bitAnd(arg0[0], Val(8192)) * Val(2013020161));
  Val x16 = (bitAnd(arg0[0], Val(16384)) * Val(2013143041));
  Val x17 = (bitAnd(arg0[0], Val(32768)) * Val(2013204481));
  // Div(<preamble>:15)
  DivStruct x18 = DivStruct{._super = bitAnd(arg0[1], Val(1))};
  // Div(<preamble>:19)
  Val x19 = (bitAnd(arg0[1], Val(2)) * Val(1006632961));
  Val x20 = (bitAnd(arg0[1], Val(4)) * Val(1509949441));
  Val x21 = (bitAnd(arg0[1], Val(8)) * Val(1761607681));
  Val x22 = (bitAnd(arg0[1], Val(16)) * Val(1887436801));
  Val x23 = (bitAnd(arg0[1], Val(32)) * Val(1950351361));
  Val x24 = (bitAnd(arg0[1], Val(64)) * Val(1981808641));
  Val x25 = (bitAnd(arg0[1], Val(128)) * Val(1997537281));
  Val x26 = (bitAnd(arg0[1], Val(256)) * Val(2005401601));
  Val x27 = (bitAnd(arg0[1], Val(512)) * Val(2009333761));
  Val x28 = (bitAnd(arg0[1], Val(1024)) * Val(2011299841));
  Val x29 = (bitAnd(arg0[1], Val(2048)) * Val(2012282881));
  Val x30 = (bitAnd(arg0[1], Val(4096)) * Val(2012774401));
  Val x31 = (bitAnd(arg0[1], Val(8192)) * Val(2013020161));
  Val x32 = (bitAnd(arg0[1], Val(16384)) * Val(2013143041));
  Val x33 = (bitAnd(arg0[1], Val(32768)) * Val(2013204481));
  // UnpackReg(zirgen/circuit/keccak2/pack.zir:48)
  UnpackReg_32__16__SuperStruct32Array x34 = map(
      Val32Array{Val(0),  Val(1),  Val(2),  Val(3),  Val(4),  Val(5),  Val(6),  Val(7),
                 Val(8),  Val(9),  Val(10), Val(11), Val(12), Val(13), Val(14), Val(15),
                 Val(16), Val(17), Val(18), Val(19), Val(20), Val(21), Val(22), Val(23),
                 Val(24), Val(25), Val(26), Val(27), Val(28), Val(29), Val(30), Val(31)},
      LAYOUT_LOOKUP(layout1, _super),
      ([&](Val32Array::value_type x35, BoundLayout<NondetRegLayout32LayoutArray::value_type> x36) {
        NondetRegStruct x37 =
            exec_NondetBitReg(ctx,
                              DivStruct32Array{x2,
                                               DivStruct{._super = x3},
                                               DivStruct{._super = x4},
                                               DivStruct{._super = x5},
                                               DivStruct{._super = x6},
                                               DivStruct{._super = x7},
                                               DivStruct{._super = x8},
                                               DivStruct{._super = x9},
                                               DivStruct{._super = x10},
                                               DivStruct{._super = x11},
                                               DivStruct{._super = x12},
                                               DivStruct{._super = x13},
                                               DivStruct{._super = x14},
                                               DivStruct{._super = x15},
                                               DivStruct{._super = x16},
                                               DivStruct{._super = x17},
                                               x18,
                                               DivStruct{._super = x19},
                                               DivStruct{._super = x20},
                                               DivStruct{._super = x21},
                                               DivStruct{._super = x22},
                                               DivStruct{._super = x23},
                                               DivStruct{._super = x24},
                                               DivStruct{._super = x25},
                                               DivStruct{._super = x26},
                                               DivStruct{._super = x27},
                                               DivStruct{._super = x28},
                                               DivStruct{._super = x29},
                                               DivStruct{._super = x30},
                                               DivStruct{._super = x31},
                                               DivStruct{._super = x32},
                                               DivStruct{._super = x33}}[to_size_t(x35)]
                                  ._super,
                              x36);
        return UnpackReg_32__16__SuperStruct{._super = x37};
      }));
  // Pack(zirgen/circuit/keccak2/pack.zir:32)
  // UnpackReg(zirgen/circuit/keccak2/pack.zir:49)
  Val x38 = (x34[1]._super._super * Val(2));
  Val x39 = (x34[2]._super._super * Val(4));
  Val x40 = (x34[3]._super._super * Val(8));
  Val x41 = (x34[4]._super._super * Val(16));
  Val x42 = (x34[5]._super._super * Val(32));
  Val x43 = (x34[6]._super._super * Val(64));
  Val x44 = (x34[7]._super._super * Val(128));
  Val x45 = (x34[8]._super._super * Val(256));
  Val x46 = (x34[9]._super._super * Val(512));
  Val x47 = (x34[10]._super._super * Val(1024));
  Val x48 = (x34[11]._super._super * Val(2048));
  Val x49 = (x34[12]._super._super * Val(4096));
  Val x50 = (x34[13]._super._super * Val(8192));
  Val x51 = (x34[14]._super._super * Val(16384));
  Val x52 = (x34[15]._super._super * Val(32768));
  Val x53 = (x34[0]._super._super + x38);
  Val x54 = (((x53 + x39) + x40) + x41);
  Val x55 = (((x54 + x42) + x43) + x44);
  Val x56 = (((x55 + x45) + x46) + x47);
  Val x57 = (((x56 + x48) + x49) + x50);
  Val x58 = (x34[17]._super._super * Val(2));
  Val x59 = (x34[18]._super._super * Val(4));
  Val x60 = (x34[19]._super._super * Val(8));
  Val x61 = (x34[20]._super._super * Val(16));
  Val x62 = (x34[21]._super._super * Val(32));
  Val x63 = (x34[22]._super._super * Val(64));
  Val x64 = (x34[23]._super._super * Val(128));
  Val x65 = (x34[24]._super._super * Val(256));
  Val x66 = (x34[25]._super._super * Val(512));
  Val x67 = (x34[26]._super._super * Val(1024));
  Val x68 = (x34[27]._super._super * Val(2048));
  Val x69 = (x34[28]._super._super * Val(4096));
  Val x70 = (x34[29]._super._super * Val(8192));
  Val x71 = (x34[30]._super._super * Val(16384));
  Val x72 = (x34[31]._super._super * Val(32768));
  Val x73 = (x34[16]._super._super + x58);
  Val x74 = (((x73 + x59) + x60) + x61);
  Val x75 = (((x74 + x62) + x63) + x64);
  Val x76 = (((x75 + x65) + x66) + x67);
  Val x77 = (((x76 + x68) + x69) + x70);
  // EqArr(zirgen/circuit/keccak2/arr.zir:33)
  Val x78 = (((x57 + x51) + x52) - arg0[0]);
  EQZ(x78,
      "loc(callsite( EqArr ( zirgen/circuit/keccak2/arr.zir :33:11) at  UnpackReg ( "
      "zirgen/circuit/keccak2/pack.zir :49:14)))");
  Val x79 = (((x77 + x71) + x72) - arg0[1]);
  EQZ(x79,
      "loc(callsite( EqArr ( zirgen/circuit/keccak2/arr.zir :33:11) at  UnpackReg ( "
      "zirgen/circuit/keccak2/pack.zir :49:14)))");
  return UnpackReg_32__16_Struct{._super = x34};
}
__device__ TopStateStruct exec_WriteCycle(ExecContext& ctx,
                                          TopStateStruct arg0,
                                          TopStateStruct arg1,
                                          BoundLayout<WriteCycleLayout> layout2) {
  // Log(<preamble>:22)
  // WriteCycle(zirgen/circuit/keccak2/top.zir:371)
  INVOKE_EXTERN(ctx, log, "WriteCycle", std::initializer_list<Val>{});
  // Pack(zirgen/circuit/keccak2/pack.zir:32)
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x3 = (arg1.bits[1]._super._super * Val(2));
  Val x4 = (arg1.bits[2]._super._super * Val(4));
  Val x5 = (arg1.bits[3]._super._super * Val(8));
  Val x6 = (arg1.bits[4]._super._super * Val(16));
  Val x7 = (arg1.bits[5]._super._super * Val(32));
  Val x8 = (arg1.bits[6]._super._super * Val(64));
  Val x9 = (arg1.bits[7]._super._super * Val(128));
  Val x10 = (arg1.bits[8]._super._super * Val(256));
  Val x11 = (arg1.bits[9]._super._super * Val(512));
  Val x12 = (arg1.bits[10]._super._super * Val(1024));
  Val x13 = (arg1.bits[11]._super._super * Val(2048));
  Val x14 = (arg1.bits[12]._super._super * Val(4096));
  Val x15 = (arg1.bits[13]._super._super * Val(8192));
  Val x16 = (arg1.bits[14]._super._super * Val(16384));
  Val x17 = (arg1.bits[15]._super._super * Val(32768));
  Val x18 = (arg1.bits[0]._super._super + x3);
  Val x19 = (((x18 + x4) + x5) + x6);
  Val x20 = (((x19 + x7) + x8) + x9);
  Val x21 = (((x20 + x10) + x11) + x12);
  Val x22 = (((x21 + x13) + x14) + x15);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x23 = (arg1.bits[17]._super._super * Val(2));
  Val x24 = (arg1.bits[18]._super._super * Val(4));
  Val x25 = (arg1.bits[19]._super._super * Val(8));
  Val x26 = (arg1.bits[20]._super._super * Val(16));
  Val x27 = (arg1.bits[21]._super._super * Val(32));
  Val x28 = (arg1.bits[22]._super._super * Val(64));
  Val x29 = (arg1.bits[23]._super._super * Val(128));
  Val x30 = (arg1.bits[24]._super._super * Val(256));
  Val x31 = (arg1.bits[25]._super._super * Val(512));
  Val x32 = (arg1.bits[26]._super._super * Val(1024));
  Val x33 = (arg1.bits[27]._super._super * Val(2048));
  Val x34 = (arg1.bits[28]._super._super * Val(4096));
  Val x35 = (arg1.bits[29]._super._super * Val(8192));
  Val x36 = (arg1.bits[30]._super._super * Val(16384));
  Val x37 = (arg1.bits[31]._super._super * Val(32768));
  Val x38 = (arg1.bits[16]._super._super + x23);
  Val x39 = (((x38 + x24) + x25) + x26);
  Val x40 = (((x39 + x27) + x28) + x29);
  Val x41 = (((x40 + x30) + x31) + x32);
  Val x42 = (((x41 + x33) + x34) + x35);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x43 = (arg0.bits[1]._super._super * Val(2));
  Val x44 = (arg0.bits[2]._super._super * Val(4));
  Val x45 = (arg0.bits[3]._super._super * Val(8));
  Val x46 = (arg0.bits[4]._super._super * Val(16));
  Val x47 = (arg0.bits[5]._super._super * Val(32));
  Val x48 = (arg0.bits[6]._super._super * Val(64));
  Val x49 = (arg0.bits[7]._super._super * Val(128));
  Val x50 = (arg0.bits[8]._super._super * Val(256));
  Val x51 = (arg0.bits[9]._super._super * Val(512));
  Val x52 = (arg0.bits[10]._super._super * Val(1024));
  Val x53 = (arg0.bits[11]._super._super * Val(2048));
  Val x54 = (arg0.bits[12]._super._super * Val(4096));
  Val x55 = (arg0.bits[13]._super._super * Val(8192));
  Val x56 = (arg0.bits[14]._super._super * Val(16384));
  Val x57 = (arg0.bits[15]._super._super * Val(32768));
  Val x58 = (arg0.bits[0]._super._super + x43);
  Val x59 = (((x58 + x44) + x45) + x46);
  Val x60 = (((x59 + x47) + x48) + x49);
  Val x61 = (((x60 + x50) + x51) + x52);
  Val x62 = (((x61 + x53) + x54) + x55);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x63 = (arg0.bits[17]._super._super * Val(2));
  Val x64 = (arg0.bits[18]._super._super * Val(4));
  Val x65 = (arg0.bits[19]._super._super * Val(8));
  Val x66 = (arg0.bits[20]._super._super * Val(16));
  Val x67 = (arg0.bits[21]._super._super * Val(32));
  Val x68 = (arg0.bits[22]._super._super * Val(64));
  Val x69 = (arg0.bits[23]._super._super * Val(128));
  Val x70 = (arg0.bits[24]._super._super * Val(256));
  Val x71 = (arg0.bits[25]._super._super * Val(512));
  Val x72 = (arg0.bits[26]._super._super * Val(1024));
  Val x73 = (arg0.bits[27]._super._super * Val(2048));
  Val x74 = (arg0.bits[28]._super._super * Val(4096));
  Val x75 = (arg0.bits[29]._super._super * Val(8192));
  Val x76 = (arg0.bits[30]._super._super * Val(16384));
  Val x77 = (arg0.bits[31]._super._super * Val(32768));
  Val x78 = (arg0.bits[16]._super._super + x63);
  Val x79 = (((x78 + x64) + x65) + x66);
  Val x80 = (((x79 + x67) + x68) + x69);
  Val x81 = (((x80 + x70) + x71) + x72);
  Val x82 = (((x81 + x73) + x74) + x75);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x83 = (arg1.bits[33]._super._super * Val(2));
  Val x84 = (arg1.bits[34]._super._super * Val(4));
  Val x85 = (arg1.bits[35]._super._super * Val(8));
  Val x86 = (arg1.bits[36]._super._super * Val(16));
  Val x87 = (arg1.bits[37]._super._super * Val(32));
  Val x88 = (arg1.bits[38]._super._super * Val(64));
  Val x89 = (arg1.bits[39]._super._super * Val(128));
  Val x90 = (arg1.bits[40]._super._super * Val(256));
  Val x91 = (arg1.bits[41]._super._super * Val(512));
  Val x92 = (arg1.bits[42]._super._super * Val(1024));
  Val x93 = (arg1.bits[43]._super._super * Val(2048));
  Val x94 = (arg1.bits[44]._super._super * Val(4096));
  Val x95 = (arg1.bits[45]._super._super * Val(8192));
  Val x96 = (arg1.bits[46]._super._super * Val(16384));
  Val x97 = (arg1.bits[47]._super._super * Val(32768));
  Val x98 = (arg1.bits[32]._super._super + x83);
  Val x99 = (((x98 + x84) + x85) + x86);
  Val x100 = (((x99 + x87) + x88) + x89);
  Val x101 = (((x100 + x90) + x91) + x92);
  Val x102 = (((x101 + x93) + x94) + x95);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x103 = (arg1.bits[49]._super._super * Val(2));
  Val x104 = (arg1.bits[50]._super._super * Val(4));
  Val x105 = (arg1.bits[51]._super._super * Val(8));
  Val x106 = (arg1.bits[52]._super._super * Val(16));
  Val x107 = (arg1.bits[53]._super._super * Val(32));
  Val x108 = (arg1.bits[54]._super._super * Val(64));
  Val x109 = (arg1.bits[55]._super._super * Val(128));
  Val x110 = (arg1.bits[56]._super._super * Val(256));
  Val x111 = (arg1.bits[57]._super._super * Val(512));
  Val x112 = (arg1.bits[58]._super._super * Val(1024));
  Val x113 = (arg1.bits[59]._super._super * Val(2048));
  Val x114 = (arg1.bits[60]._super._super * Val(4096));
  Val x115 = (arg1.bits[61]._super._super * Val(8192));
  Val x116 = (arg1.bits[62]._super._super * Val(16384));
  Val x117 = (arg1.bits[63]._super._super * Val(32768));
  Val x118 = (arg1.bits[48]._super._super + x103);
  Val x119 = (((x118 + x104) + x105) + x106);
  Val x120 = (((x119 + x107) + x108) + x109);
  Val x121 = (((x120 + x110) + x111) + x112);
  Val x122 = (((x121 + x113) + x114) + x115);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x123 = (arg0.bits[33]._super._super * Val(2));
  Val x124 = (arg0.bits[34]._super._super * Val(4));
  Val x125 = (arg0.bits[35]._super._super * Val(8));
  Val x126 = (arg0.bits[36]._super._super * Val(16));
  Val x127 = (arg0.bits[37]._super._super * Val(32));
  Val x128 = (arg0.bits[38]._super._super * Val(64));
  Val x129 = (arg0.bits[39]._super._super * Val(128));
  Val x130 = (arg0.bits[40]._super._super * Val(256));
  Val x131 = (arg0.bits[41]._super._super * Val(512));
  Val x132 = (arg0.bits[42]._super._super * Val(1024));
  Val x133 = (arg0.bits[43]._super._super * Val(2048));
  Val x134 = (arg0.bits[44]._super._super * Val(4096));
  Val x135 = (arg0.bits[45]._super._super * Val(8192));
  Val x136 = (arg0.bits[46]._super._super * Val(16384));
  Val x137 = (arg0.bits[47]._super._super * Val(32768));
  Val x138 = (arg0.bits[32]._super._super + x123);
  Val x139 = (((x138 + x124) + x125) + x126);
  Val x140 = (((x139 + x127) + x128) + x129);
  Val x141 = (((x140 + x130) + x131) + x132);
  Val x142 = (((x141 + x133) + x134) + x135);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x143 = (arg0.bits[49]._super._super * Val(2));
  Val x144 = (arg0.bits[50]._super._super * Val(4));
  Val x145 = (arg0.bits[51]._super._super * Val(8));
  Val x146 = (arg0.bits[52]._super._super * Val(16));
  Val x147 = (arg0.bits[53]._super._super * Val(32));
  Val x148 = (arg0.bits[54]._super._super * Val(64));
  Val x149 = (arg0.bits[55]._super._super * Val(128));
  Val x150 = (arg0.bits[56]._super._super * Val(256));
  Val x151 = (arg0.bits[57]._super._super * Val(512));
  Val x152 = (arg0.bits[58]._super._super * Val(1024));
  Val x153 = (arg0.bits[59]._super._super * Val(2048));
  Val x154 = (arg0.bits[60]._super._super * Val(4096));
  Val x155 = (arg0.bits[61]._super._super * Val(8192));
  Val x156 = (arg0.bits[62]._super._super * Val(16384));
  Val x157 = (arg0.bits[63]._super._super * Val(32768));
  Val x158 = (arg0.bits[48]._super._super + x143);
  Val x159 = (((x158 + x144) + x145) + x146);
  Val x160 = (((x159 + x147) + x148) + x149);
  Val x161 = (((x160 + x150) + x151) + x152);
  Val x162 = (((x161 + x153) + x154) + x155);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x163 = (arg1.bits[65]._super._super * Val(2));
  Val x164 = (arg1.bits[66]._super._super * Val(4));
  Val x165 = (arg1.bits[67]._super._super * Val(8));
  Val x166 = (arg1.bits[68]._super._super * Val(16));
  Val x167 = (arg1.bits[69]._super._super * Val(32));
  Val x168 = (arg1.bits[70]._super._super * Val(64));
  Val x169 = (arg1.bits[71]._super._super * Val(128));
  Val x170 = (arg1.bits[72]._super._super * Val(256));
  Val x171 = (arg1.bits[73]._super._super * Val(512));
  Val x172 = (arg1.bits[74]._super._super * Val(1024));
  Val x173 = (arg1.bits[75]._super._super * Val(2048));
  Val x174 = (arg1.bits[76]._super._super * Val(4096));
  Val x175 = (arg1.bits[77]._super._super * Val(8192));
  Val x176 = (arg1.bits[78]._super._super * Val(16384));
  Val x177 = (arg1.bits[79]._super._super * Val(32768));
  Val x178 = (arg1.bits[64]._super._super + x163);
  Val x179 = (((x178 + x164) + x165) + x166);
  Val x180 = (((x179 + x167) + x168) + x169);
  Val x181 = (((x180 + x170) + x171) + x172);
  Val x182 = (((x181 + x173) + x174) + x175);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x183 = (arg1.bits[81]._super._super * Val(2));
  Val x184 = (arg1.bits[82]._super._super * Val(4));
  Val x185 = (arg1.bits[83]._super._super * Val(8));
  Val x186 = (arg1.bits[84]._super._super * Val(16));
  Val x187 = (arg1.bits[85]._super._super * Val(32));
  Val x188 = (arg1.bits[86]._super._super * Val(64));
  Val x189 = (arg1.bits[87]._super._super * Val(128));
  Val x190 = (arg1.bits[88]._super._super * Val(256));
  Val x191 = (arg1.bits[89]._super._super * Val(512));
  Val x192 = (arg1.bits[90]._super._super * Val(1024));
  Val x193 = (arg1.bits[91]._super._super * Val(2048));
  Val x194 = (arg1.bits[92]._super._super * Val(4096));
  Val x195 = (arg1.bits[93]._super._super * Val(8192));
  Val x196 = (arg1.bits[94]._super._super * Val(16384));
  Val x197 = (arg1.bits[95]._super._super * Val(32768));
  Val x198 = (arg1.bits[80]._super._super + x183);
  Val x199 = (((x198 + x184) + x185) + x186);
  Val x200 = (((x199 + x187) + x188) + x189);
  Val x201 = (((x200 + x190) + x191) + x192);
  Val x202 = (((x201 + x193) + x194) + x195);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x203 = (arg0.bits[65]._super._super * Val(2));
  Val x204 = (arg0.bits[66]._super._super * Val(4));
  Val x205 = (arg0.bits[67]._super._super * Val(8));
  Val x206 = (arg0.bits[68]._super._super * Val(16));
  Val x207 = (arg0.bits[69]._super._super * Val(32));
  Val x208 = (arg0.bits[70]._super._super * Val(64));
  Val x209 = (arg0.bits[71]._super._super * Val(128));
  Val x210 = (arg0.bits[72]._super._super * Val(256));
  Val x211 = (arg0.bits[73]._super._super * Val(512));
  Val x212 = (arg0.bits[74]._super._super * Val(1024));
  Val x213 = (arg0.bits[75]._super._super * Val(2048));
  Val x214 = (arg0.bits[76]._super._super * Val(4096));
  Val x215 = (arg0.bits[77]._super._super * Val(8192));
  Val x216 = (arg0.bits[78]._super._super * Val(16384));
  Val x217 = (arg0.bits[79]._super._super * Val(32768));
  Val x218 = (arg0.bits[64]._super._super + x203);
  Val x219 = (((x218 + x204) + x205) + x206);
  Val x220 = (((x219 + x207) + x208) + x209);
  Val x221 = (((x220 + x210) + x211) + x212);
  Val x222 = (((x221 + x213) + x214) + x215);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x223 = (arg0.bits[81]._super._super * Val(2));
  Val x224 = (arg0.bits[82]._super._super * Val(4));
  Val x225 = (arg0.bits[83]._super._super * Val(8));
  Val x226 = (arg0.bits[84]._super._super * Val(16));
  Val x227 = (arg0.bits[85]._super._super * Val(32));
  Val x228 = (arg0.bits[86]._super._super * Val(64));
  Val x229 = (arg0.bits[87]._super._super * Val(128));
  Val x230 = (arg0.bits[88]._super._super * Val(256));
  Val x231 = (arg0.bits[89]._super._super * Val(512));
  Val x232 = (arg0.bits[90]._super._super * Val(1024));
  Val x233 = (arg0.bits[91]._super._super * Val(2048));
  Val x234 = (arg0.bits[92]._super._super * Val(4096));
  Val x235 = (arg0.bits[93]._super._super * Val(8192));
  Val x236 = (arg0.bits[94]._super._super * Val(16384));
  Val x237 = (arg0.bits[95]._super._super * Val(32768));
  Val x238 = (arg0.bits[80]._super._super + x223);
  Val x239 = (((x238 + x224) + x225) + x226);
  Val x240 = (((x239 + x227) + x228) + x229);
  Val x241 = (((x240 + x230) + x231) + x232);
  Val x242 = (((x241 + x233) + x234) + x235);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x243 = (arg1.bits[97]._super._super * Val(2));
  Val x244 = (arg1.bits[98]._super._super * Val(4));
  Val x245 = (arg1.bits[99]._super._super * Val(8));
  Val x246 = (arg1.bits[100]._super._super * Val(16));
  Val x247 = (arg1.bits[101]._super._super * Val(32));
  Val x248 = (arg1.bits[102]._super._super * Val(64));
  Val x249 = (arg1.bits[103]._super._super * Val(128));
  Val x250 = (arg1.bits[104]._super._super * Val(256));
  Val x251 = (arg1.bits[105]._super._super * Val(512));
  Val x252 = (arg1.bits[106]._super._super * Val(1024));
  Val x253 = (arg1.bits[107]._super._super * Val(2048));
  Val x254 = (arg1.bits[108]._super._super * Val(4096));
  Val x255 = (arg1.bits[109]._super._super * Val(8192));
  Val x256 = (arg1.bits[110]._super._super * Val(16384));
  Val x257 = (arg1.bits[111]._super._super * Val(32768));
  Val x258 = (arg1.bits[96]._super._super + x243);
  Val x259 = (((x258 + x244) + x245) + x246);
  Val x260 = (((x259 + x247) + x248) + x249);
  Val x261 = (((x260 + x250) + x251) + x252);
  Val x262 = (((x261 + x253) + x254) + x255);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x263 = (arg1.bits[113]._super._super * Val(2));
  Val x264 = (arg1.bits[114]._super._super * Val(4));
  Val x265 = (arg1.bits[115]._super._super * Val(8));
  Val x266 = (arg1.bits[116]._super._super * Val(16));
  Val x267 = (arg1.bits[117]._super._super * Val(32));
  Val x268 = (arg1.bits[118]._super._super * Val(64));
  Val x269 = (arg1.bits[119]._super._super * Val(128));
  Val x270 = (arg1.bits[120]._super._super * Val(256));
  Val x271 = (arg1.bits[121]._super._super * Val(512));
  Val x272 = (arg1.bits[122]._super._super * Val(1024));
  Val x273 = (arg1.bits[123]._super._super * Val(2048));
  Val x274 = (arg1.bits[124]._super._super * Val(4096));
  Val x275 = (arg1.bits[125]._super._super * Val(8192));
  Val x276 = (arg1.bits[126]._super._super * Val(16384));
  Val x277 = (arg1.bits[127]._super._super * Val(32768));
  Val x278 = (arg1.bits[112]._super._super + x263);
  Val x279 = (((x278 + x264) + x265) + x266);
  Val x280 = (((x279 + x267) + x268) + x269);
  Val x281 = (((x280 + x270) + x271) + x272);
  Val x282 = (((x281 + x273) + x274) + x275);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x283 = (arg0.bits[97]._super._super * Val(2));
  Val x284 = (arg0.bits[98]._super._super * Val(4));
  Val x285 = (arg0.bits[99]._super._super * Val(8));
  Val x286 = (arg0.bits[100]._super._super * Val(16));
  Val x287 = (arg0.bits[101]._super._super * Val(32));
  Val x288 = (arg0.bits[102]._super._super * Val(64));
  Val x289 = (arg0.bits[103]._super._super * Val(128));
  Val x290 = (arg0.bits[104]._super._super * Val(256));
  Val x291 = (arg0.bits[105]._super._super * Val(512));
  Val x292 = (arg0.bits[106]._super._super * Val(1024));
  Val x293 = (arg0.bits[107]._super._super * Val(2048));
  Val x294 = (arg0.bits[108]._super._super * Val(4096));
  Val x295 = (arg0.bits[109]._super._super * Val(8192));
  Val x296 = (arg0.bits[110]._super._super * Val(16384));
  Val x297 = (arg0.bits[111]._super._super * Val(32768));
  Val x298 = (arg0.bits[96]._super._super + x283);
  Val x299 = (((x298 + x284) + x285) + x286);
  Val x300 = (((x299 + x287) + x288) + x289);
  Val x301 = (((x300 + x290) + x291) + x292);
  Val x302 = (((x301 + x293) + x294) + x295);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x303 = (arg0.bits[113]._super._super * Val(2));
  Val x304 = (arg0.bits[114]._super._super * Val(4));
  Val x305 = (arg0.bits[115]._super._super * Val(8));
  Val x306 = (arg0.bits[116]._super._super * Val(16));
  Val x307 = (arg0.bits[117]._super._super * Val(32));
  Val x308 = (arg0.bits[118]._super._super * Val(64));
  Val x309 = (arg0.bits[119]._super._super * Val(128));
  Val x310 = (arg0.bits[120]._super._super * Val(256));
  Val x311 = (arg0.bits[121]._super._super * Val(512));
  Val x312 = (arg0.bits[122]._super._super * Val(1024));
  Val x313 = (arg0.bits[123]._super._super * Val(2048));
  Val x314 = (arg0.bits[124]._super._super * Val(4096));
  Val x315 = (arg0.bits[125]._super._super * Val(8192));
  Val x316 = (arg0.bits[126]._super._super * Val(16384));
  Val x317 = (arg0.bits[127]._super._super * Val(32768));
  Val x318 = (arg0.bits[112]._super._super + x303);
  Val x319 = (((x318 + x304) + x305) + x306);
  Val x320 = (((x319 + x307) + x308) + x309);
  Val x321 = (((x320 + x310) + x311) + x312);
  Val x322 = (((x321 + x313) + x314) + x315);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x323 = (arg1.bits[129]._super._super * Val(2));
  Val x324 = (arg1.bits[130]._super._super * Val(4));
  Val x325 = (arg1.bits[131]._super._super * Val(8));
  Val x326 = (arg1.bits[132]._super._super * Val(16));
  Val x327 = (arg1.bits[133]._super._super * Val(32));
  Val x328 = (arg1.bits[134]._super._super * Val(64));
  Val x329 = (arg1.bits[135]._super._super * Val(128));
  Val x330 = (arg1.bits[136]._super._super * Val(256));
  Val x331 = (arg1.bits[137]._super._super * Val(512));
  Val x332 = (arg1.bits[138]._super._super * Val(1024));
  Val x333 = (arg1.bits[139]._super._super * Val(2048));
  Val x334 = (arg1.bits[140]._super._super * Val(4096));
  Val x335 = (arg1.bits[141]._super._super * Val(8192));
  Val x336 = (arg1.bits[142]._super._super * Val(16384));
  Val x337 = (arg1.bits[143]._super._super * Val(32768));
  Val x338 = (arg1.bits[128]._super._super + x323);
  Val x339 = (((x338 + x324) + x325) + x326);
  Val x340 = (((x339 + x327) + x328) + x329);
  Val x341 = (((x340 + x330) + x331) + x332);
  Val x342 = (((x341 + x333) + x334) + x335);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x343 = (arg1.bits[145]._super._super * Val(2));
  Val x344 = (arg1.bits[146]._super._super * Val(4));
  Val x345 = (arg1.bits[147]._super._super * Val(8));
  Val x346 = (arg1.bits[148]._super._super * Val(16));
  Val x347 = (arg1.bits[149]._super._super * Val(32));
  Val x348 = (arg1.bits[150]._super._super * Val(64));
  Val x349 = (arg1.bits[151]._super._super * Val(128));
  Val x350 = (arg1.bits[152]._super._super * Val(256));
  Val x351 = (arg1.bits[153]._super._super * Val(512));
  Val x352 = (arg1.bits[154]._super._super * Val(1024));
  Val x353 = (arg1.bits[155]._super._super * Val(2048));
  Val x354 = (arg1.bits[156]._super._super * Val(4096));
  Val x355 = (arg1.bits[157]._super._super * Val(8192));
  Val x356 = (arg1.bits[158]._super._super * Val(16384));
  Val x357 = (arg1.bits[159]._super._super * Val(32768));
  Val x358 = (arg1.bits[144]._super._super + x343);
  Val x359 = (((x358 + x344) + x345) + x346);
  Val x360 = (((x359 + x347) + x348) + x349);
  Val x361 = (((x360 + x350) + x351) + x352);
  Val x362 = (((x361 + x353) + x354) + x355);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x363 = (arg0.bits[129]._super._super * Val(2));
  Val x364 = (arg0.bits[130]._super._super * Val(4));
  Val x365 = (arg0.bits[131]._super._super * Val(8));
  Val x366 = (arg0.bits[132]._super._super * Val(16));
  Val x367 = (arg0.bits[133]._super._super * Val(32));
  Val x368 = (arg0.bits[134]._super._super * Val(64));
  Val x369 = (arg0.bits[135]._super._super * Val(128));
  Val x370 = (arg0.bits[136]._super._super * Val(256));
  Val x371 = (arg0.bits[137]._super._super * Val(512));
  Val x372 = (arg0.bits[138]._super._super * Val(1024));
  Val x373 = (arg0.bits[139]._super._super * Val(2048));
  Val x374 = (arg0.bits[140]._super._super * Val(4096));
  Val x375 = (arg0.bits[141]._super._super * Val(8192));
  Val x376 = (arg0.bits[142]._super._super * Val(16384));
  Val x377 = (arg0.bits[143]._super._super * Val(32768));
  Val x378 = (arg0.bits[128]._super._super + x363);
  Val x379 = (((x378 + x364) + x365) + x366);
  Val x380 = (((x379 + x367) + x368) + x369);
  Val x381 = (((x380 + x370) + x371) + x372);
  Val x382 = (((x381 + x373) + x374) + x375);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x383 = (arg0.bits[145]._super._super * Val(2));
  Val x384 = (arg0.bits[146]._super._super * Val(4));
  Val x385 = (arg0.bits[147]._super._super * Val(8));
  Val x386 = (arg0.bits[148]._super._super * Val(16));
  Val x387 = (arg0.bits[149]._super._super * Val(32));
  Val x388 = (arg0.bits[150]._super._super * Val(64));
  Val x389 = (arg0.bits[151]._super._super * Val(128));
  Val x390 = (arg0.bits[152]._super._super * Val(256));
  Val x391 = (arg0.bits[153]._super._super * Val(512));
  Val x392 = (arg0.bits[154]._super._super * Val(1024));
  Val x393 = (arg0.bits[155]._super._super * Val(2048));
  Val x394 = (arg0.bits[156]._super._super * Val(4096));
  Val x395 = (arg0.bits[157]._super._super * Val(8192));
  Val x396 = (arg0.bits[158]._super._super * Val(16384));
  Val x397 = (arg0.bits[159]._super._super * Val(32768));
  Val x398 = (arg0.bits[144]._super._super + x383);
  Val x399 = (((x398 + x384) + x385) + x386);
  Val x400 = (((x399 + x387) + x388) + x389);
  Val x401 = (((x400 + x390) + x391) + x392);
  Val x402 = (((x401 + x393) + x394) + x395);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x403 = (arg1.bits[161]._super._super * Val(2));
  Val x404 = (arg1.bits[162]._super._super * Val(4));
  Val x405 = (arg1.bits[163]._super._super * Val(8));
  Val x406 = (arg1.bits[164]._super._super * Val(16));
  Val x407 = (arg1.bits[165]._super._super * Val(32));
  Val x408 = (arg1.bits[166]._super._super * Val(64));
  Val x409 = (arg1.bits[167]._super._super * Val(128));
  Val x410 = (arg1.bits[168]._super._super * Val(256));
  Val x411 = (arg1.bits[169]._super._super * Val(512));
  Val x412 = (arg1.bits[170]._super._super * Val(1024));
  Val x413 = (arg1.bits[171]._super._super * Val(2048));
  Val x414 = (arg1.bits[172]._super._super * Val(4096));
  Val x415 = (arg1.bits[173]._super._super * Val(8192));
  Val x416 = (arg1.bits[174]._super._super * Val(16384));
  Val x417 = (arg1.bits[175]._super._super * Val(32768));
  Val x418 = (arg1.bits[160]._super._super + x403);
  Val x419 = (((x418 + x404) + x405) + x406);
  Val x420 = (((x419 + x407) + x408) + x409);
  Val x421 = (((x420 + x410) + x411) + x412);
  Val x422 = (((x421 + x413) + x414) + x415);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x423 = (arg1.bits[177]._super._super * Val(2));
  Val x424 = (arg1.bits[178]._super._super * Val(4));
  Val x425 = (arg1.bits[179]._super._super * Val(8));
  Val x426 = (arg1.bits[180]._super._super * Val(16));
  Val x427 = (arg1.bits[181]._super._super * Val(32));
  Val x428 = (arg1.bits[182]._super._super * Val(64));
  Val x429 = (arg1.bits[183]._super._super * Val(128));
  Val x430 = (arg1.bits[184]._super._super * Val(256));
  Val x431 = (arg1.bits[185]._super._super * Val(512));
  Val x432 = (arg1.bits[186]._super._super * Val(1024));
  Val x433 = (arg1.bits[187]._super._super * Val(2048));
  Val x434 = (arg1.bits[188]._super._super * Val(4096));
  Val x435 = (arg1.bits[189]._super._super * Val(8192));
  Val x436 = (arg1.bits[190]._super._super * Val(16384));
  Val x437 = (arg1.bits[191]._super._super * Val(32768));
  Val x438 = (arg1.bits[176]._super._super + x423);
  Val x439 = (((x438 + x424) + x425) + x426);
  Val x440 = (((x439 + x427) + x428) + x429);
  Val x441 = (((x440 + x430) + x431) + x432);
  Val x442 = (((x441 + x433) + x434) + x435);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x443 = (arg0.bits[161]._super._super * Val(2));
  Val x444 = (arg0.bits[162]._super._super * Val(4));
  Val x445 = (arg0.bits[163]._super._super * Val(8));
  Val x446 = (arg0.bits[164]._super._super * Val(16));
  Val x447 = (arg0.bits[165]._super._super * Val(32));
  Val x448 = (arg0.bits[166]._super._super * Val(64));
  Val x449 = (arg0.bits[167]._super._super * Val(128));
  Val x450 = (arg0.bits[168]._super._super * Val(256));
  Val x451 = (arg0.bits[169]._super._super * Val(512));
  Val x452 = (arg0.bits[170]._super._super * Val(1024));
  Val x453 = (arg0.bits[171]._super._super * Val(2048));
  Val x454 = (arg0.bits[172]._super._super * Val(4096));
  Val x455 = (arg0.bits[173]._super._super * Val(8192));
  Val x456 = (arg0.bits[174]._super._super * Val(16384));
  Val x457 = (arg0.bits[175]._super._super * Val(32768));
  Val x458 = (arg0.bits[160]._super._super + x443);
  Val x459 = (((x458 + x444) + x445) + x446);
  Val x460 = (((x459 + x447) + x448) + x449);
  Val x461 = (((x460 + x450) + x451) + x452);
  Val x462 = (((x461 + x453) + x454) + x455);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x463 = (arg0.bits[177]._super._super * Val(2));
  Val x464 = (arg0.bits[178]._super._super * Val(4));
  Val x465 = (arg0.bits[179]._super._super * Val(8));
  Val x466 = (arg0.bits[180]._super._super * Val(16));
  Val x467 = (arg0.bits[181]._super._super * Val(32));
  Val x468 = (arg0.bits[182]._super._super * Val(64));
  Val x469 = (arg0.bits[183]._super._super * Val(128));
  Val x470 = (arg0.bits[184]._super._super * Val(256));
  Val x471 = (arg0.bits[185]._super._super * Val(512));
  Val x472 = (arg0.bits[186]._super._super * Val(1024));
  Val x473 = (arg0.bits[187]._super._super * Val(2048));
  Val x474 = (arg0.bits[188]._super._super * Val(4096));
  Val x475 = (arg0.bits[189]._super._super * Val(8192));
  Val x476 = (arg0.bits[190]._super._super * Val(16384));
  Val x477 = (arg0.bits[191]._super._super * Val(32768));
  Val x478 = (arg0.bits[176]._super._super + x463);
  Val x479 = (((x478 + x464) + x465) + x466);
  Val x480 = (((x479 + x467) + x468) + x469);
  Val x481 = (((x480 + x470) + x471) + x472);
  Val x482 = (((x481 + x473) + x474) + x475);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x483 = (arg1.bits[193]._super._super * Val(2));
  Val x484 = (arg1.bits[194]._super._super * Val(4));
  Val x485 = (arg1.bits[195]._super._super * Val(8));
  Val x486 = (arg1.bits[196]._super._super * Val(16));
  Val x487 = (arg1.bits[197]._super._super * Val(32));
  Val x488 = (arg1.bits[198]._super._super * Val(64));
  Val x489 = (arg1.bits[199]._super._super * Val(128));
  Val x490 = (arg1.bits[200]._super._super * Val(256));
  Val x491 = (arg1.bits[201]._super._super * Val(512));
  Val x492 = (arg1.bits[202]._super._super * Val(1024));
  Val x493 = (arg1.bits[203]._super._super * Val(2048));
  Val x494 = (arg1.bits[204]._super._super * Val(4096));
  Val x495 = (arg1.bits[205]._super._super * Val(8192));
  Val x496 = (arg1.bits[206]._super._super * Val(16384));
  Val x497 = (arg1.bits[207]._super._super * Val(32768));
  Val x498 = (arg1.bits[192]._super._super + x483);
  Val x499 = (((x498 + x484) + x485) + x486);
  Val x500 = (((x499 + x487) + x488) + x489);
  Val x501 = (((x500 + x490) + x491) + x492);
  Val x502 = (((x501 + x493) + x494) + x495);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x503 = (arg1.bits[209]._super._super * Val(2));
  Val x504 = (arg1.bits[210]._super._super * Val(4));
  Val x505 = (arg1.bits[211]._super._super * Val(8));
  Val x506 = (arg1.bits[212]._super._super * Val(16));
  Val x507 = (arg1.bits[213]._super._super * Val(32));
  Val x508 = (arg1.bits[214]._super._super * Val(64));
  Val x509 = (arg1.bits[215]._super._super * Val(128));
  Val x510 = (arg1.bits[216]._super._super * Val(256));
  Val x511 = (arg1.bits[217]._super._super * Val(512));
  Val x512 = (arg1.bits[218]._super._super * Val(1024));
  Val x513 = (arg1.bits[219]._super._super * Val(2048));
  Val x514 = (arg1.bits[220]._super._super * Val(4096));
  Val x515 = (arg1.bits[221]._super._super * Val(8192));
  Val x516 = (arg1.bits[222]._super._super * Val(16384));
  Val x517 = (arg1.bits[223]._super._super * Val(32768));
  Val x518 = (arg1.bits[208]._super._super + x503);
  Val x519 = (((x518 + x504) + x505) + x506);
  Val x520 = (((x519 + x507) + x508) + x509);
  Val x521 = (((x520 + x510) + x511) + x512);
  Val x522 = (((x521 + x513) + x514) + x515);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x523 = (arg0.bits[193]._super._super * Val(2));
  Val x524 = (arg0.bits[194]._super._super * Val(4));
  Val x525 = (arg0.bits[195]._super._super * Val(8));
  Val x526 = (arg0.bits[196]._super._super * Val(16));
  Val x527 = (arg0.bits[197]._super._super * Val(32));
  Val x528 = (arg0.bits[198]._super._super * Val(64));
  Val x529 = (arg0.bits[199]._super._super * Val(128));
  Val x530 = (arg0.bits[200]._super._super * Val(256));
  Val x531 = (arg0.bits[201]._super._super * Val(512));
  Val x532 = (arg0.bits[202]._super._super * Val(1024));
  Val x533 = (arg0.bits[203]._super._super * Val(2048));
  Val x534 = (arg0.bits[204]._super._super * Val(4096));
  Val x535 = (arg0.bits[205]._super._super * Val(8192));
  Val x536 = (arg0.bits[206]._super._super * Val(16384));
  Val x537 = (arg0.bits[207]._super._super * Val(32768));
  Val x538 = (arg0.bits[192]._super._super + x523);
  Val x539 = (((x538 + x524) + x525) + x526);
  Val x540 = (((x539 + x527) + x528) + x529);
  Val x541 = (((x540 + x530) + x531) + x532);
  Val x542 = (((x541 + x533) + x534) + x535);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x543 = (arg0.bits[209]._super._super * Val(2));
  Val x544 = (arg0.bits[210]._super._super * Val(4));
  Val x545 = (arg0.bits[211]._super._super * Val(8));
  Val x546 = (arg0.bits[212]._super._super * Val(16));
  Val x547 = (arg0.bits[213]._super._super * Val(32));
  Val x548 = (arg0.bits[214]._super._super * Val(64));
  Val x549 = (arg0.bits[215]._super._super * Val(128));
  Val x550 = (arg0.bits[216]._super._super * Val(256));
  Val x551 = (arg0.bits[217]._super._super * Val(512));
  Val x552 = (arg0.bits[218]._super._super * Val(1024));
  Val x553 = (arg0.bits[219]._super._super * Val(2048));
  Val x554 = (arg0.bits[220]._super._super * Val(4096));
  Val x555 = (arg0.bits[221]._super._super * Val(8192));
  Val x556 = (arg0.bits[222]._super._super * Val(16384));
  Val x557 = (arg0.bits[223]._super._super * Val(32768));
  Val x558 = (arg0.bits[208]._super._super + x543);
  Val x559 = (((x558 + x544) + x545) + x546);
  Val x560 = (((x559 + x547) + x548) + x549);
  Val x561 = (((x560 + x550) + x551) + x552);
  Val x562 = (((x561 + x553) + x554) + x555);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x563 = (arg1.bits[225]._super._super * Val(2));
  Val x564 = (arg1.bits[226]._super._super * Val(4));
  Val x565 = (arg1.bits[227]._super._super * Val(8));
  Val x566 = (arg1.bits[228]._super._super * Val(16));
  Val x567 = (arg1.bits[229]._super._super * Val(32));
  Val x568 = (arg1.bits[230]._super._super * Val(64));
  Val x569 = (arg1.bits[231]._super._super * Val(128));
  Val x570 = (arg1.bits[232]._super._super * Val(256));
  Val x571 = (arg1.bits[233]._super._super * Val(512));
  Val x572 = (arg1.bits[234]._super._super * Val(1024));
  Val x573 = (arg1.bits[235]._super._super * Val(2048));
  Val x574 = (arg1.bits[236]._super._super * Val(4096));
  Val x575 = (arg1.bits[237]._super._super * Val(8192));
  Val x576 = (arg1.bits[238]._super._super * Val(16384));
  Val x577 = (arg1.bits[239]._super._super * Val(32768));
  Val x578 = (arg1.bits[224]._super._super + x563);
  Val x579 = (((x578 + x564) + x565) + x566);
  Val x580 = (((x579 + x567) + x568) + x569);
  Val x581 = (((x580 + x570) + x571) + x572);
  Val x582 = (((x581 + x573) + x574) + x575);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x583 = (arg1.bits[241]._super._super * Val(2));
  Val x584 = (arg1.bits[242]._super._super * Val(4));
  Val x585 = (arg1.bits[243]._super._super * Val(8));
  Val x586 = (arg1.bits[244]._super._super * Val(16));
  Val x587 = (arg1.bits[245]._super._super * Val(32));
  Val x588 = (arg1.bits[246]._super._super * Val(64));
  Val x589 = (arg1.bits[247]._super._super * Val(128));
  Val x590 = (arg1.bits[248]._super._super * Val(256));
  Val x591 = (arg1.bits[249]._super._super * Val(512));
  Val x592 = (arg1.bits[250]._super._super * Val(1024));
  Val x593 = (arg1.bits[251]._super._super * Val(2048));
  Val x594 = (arg1.bits[252]._super._super * Val(4096));
  Val x595 = (arg1.bits[253]._super._super * Val(8192));
  Val x596 = (arg1.bits[254]._super._super * Val(16384));
  Val x597 = (arg1.bits[255]._super._super * Val(32768));
  Val x598 = (arg1.bits[240]._super._super + x583);
  Val x599 = (((x598 + x584) + x585) + x586);
  Val x600 = (((x599 + x587) + x588) + x589);
  Val x601 = (((x600 + x590) + x591) + x592);
  Val x602 = (((x601 + x593) + x594) + x595);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x603 = (arg0.bits[225]._super._super * Val(2));
  Val x604 = (arg0.bits[226]._super._super * Val(4));
  Val x605 = (arg0.bits[227]._super._super * Val(8));
  Val x606 = (arg0.bits[228]._super._super * Val(16));
  Val x607 = (arg0.bits[229]._super._super * Val(32));
  Val x608 = (arg0.bits[230]._super._super * Val(64));
  Val x609 = (arg0.bits[231]._super._super * Val(128));
  Val x610 = (arg0.bits[232]._super._super * Val(256));
  Val x611 = (arg0.bits[233]._super._super * Val(512));
  Val x612 = (arg0.bits[234]._super._super * Val(1024));
  Val x613 = (arg0.bits[235]._super._super * Val(2048));
  Val x614 = (arg0.bits[236]._super._super * Val(4096));
  Val x615 = (arg0.bits[237]._super._super * Val(8192));
  Val x616 = (arg0.bits[238]._super._super * Val(16384));
  Val x617 = (arg0.bits[239]._super._super * Val(32768));
  Val x618 = (arg0.bits[224]._super._super + x603);
  Val x619 = (((x618 + x604) + x605) + x606);
  Val x620 = (((x619 + x607) + x608) + x609);
  Val x621 = (((x620 + x610) + x611) + x612);
  Val x622 = (((x621 + x613) + x614) + x615);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x623 = (arg0.bits[241]._super._super * Val(2));
  Val x624 = (arg0.bits[242]._super._super * Val(4));
  Val x625 = (arg0.bits[243]._super._super * Val(8));
  Val x626 = (arg0.bits[244]._super._super * Val(16));
  Val x627 = (arg0.bits[245]._super._super * Val(32));
  Val x628 = (arg0.bits[246]._super._super * Val(64));
  Val x629 = (arg0.bits[247]._super._super * Val(128));
  Val x630 = (arg0.bits[248]._super._super * Val(256));
  Val x631 = (arg0.bits[249]._super._super * Val(512));
  Val x632 = (arg0.bits[250]._super._super * Val(1024));
  Val x633 = (arg0.bits[251]._super._super * Val(2048));
  Val x634 = (arg0.bits[252]._super._super * Val(4096));
  Val x635 = (arg0.bits[253]._super._super * Val(8192));
  Val x636 = (arg0.bits[254]._super._super * Val(16384));
  Val x637 = (arg0.bits[255]._super._super * Val(32768));
  Val x638 = (arg0.bits[240]._super._super + x623);
  Val x639 = (((x638 + x624) + x625) + x626);
  Val x640 = (((x639 + x627) + x628) + x629);
  Val x641 = (((x640 + x630) + x631) + x632);
  Val x642 = (((x641 + x633) + x634) + x635);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x643 = (arg1.bits[257]._super._super * Val(2));
  Val x644 = (arg1.bits[258]._super._super * Val(4));
  Val x645 = (arg1.bits[259]._super._super * Val(8));
  Val x646 = (arg1.bits[260]._super._super * Val(16));
  Val x647 = (arg1.bits[261]._super._super * Val(32));
  Val x648 = (arg1.bits[262]._super._super * Val(64));
  Val x649 = (arg1.bits[263]._super._super * Val(128));
  Val x650 = (arg1.bits[264]._super._super * Val(256));
  Val x651 = (arg1.bits[265]._super._super * Val(512));
  Val x652 = (arg1.bits[266]._super._super * Val(1024));
  Val x653 = (arg1.bits[267]._super._super * Val(2048));
  Val x654 = (arg1.bits[268]._super._super * Val(4096));
  Val x655 = (arg1.bits[269]._super._super * Val(8192));
  Val x656 = (arg1.bits[270]._super._super * Val(16384));
  Val x657 = (arg1.bits[271]._super._super * Val(32768));
  Val x658 = (arg1.bits[256]._super._super + x643);
  Val x659 = (((x658 + x644) + x645) + x646);
  Val x660 = (((x659 + x647) + x648) + x649);
  Val x661 = (((x660 + x650) + x651) + x652);
  Val x662 = (((x661 + x653) + x654) + x655);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x663 = (arg1.bits[273]._super._super * Val(2));
  Val x664 = (arg1.bits[274]._super._super * Val(4));
  Val x665 = (arg1.bits[275]._super._super * Val(8));
  Val x666 = (arg1.bits[276]._super._super * Val(16));
  Val x667 = (arg1.bits[277]._super._super * Val(32));
  Val x668 = (arg1.bits[278]._super._super * Val(64));
  Val x669 = (arg1.bits[279]._super._super * Val(128));
  Val x670 = (arg1.bits[280]._super._super * Val(256));
  Val x671 = (arg1.bits[281]._super._super * Val(512));
  Val x672 = (arg1.bits[282]._super._super * Val(1024));
  Val x673 = (arg1.bits[283]._super._super * Val(2048));
  Val x674 = (arg1.bits[284]._super._super * Val(4096));
  Val x675 = (arg1.bits[285]._super._super * Val(8192));
  Val x676 = (arg1.bits[286]._super._super * Val(16384));
  Val x677 = (arg1.bits[287]._super._super * Val(32768));
  Val x678 = (arg1.bits[272]._super._super + x663);
  Val x679 = (((x678 + x664) + x665) + x666);
  Val x680 = (((x679 + x667) + x668) + x669);
  Val x681 = (((x680 + x670) + x671) + x672);
  Val x682 = (((x681 + x673) + x674) + x675);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x683 = (arg0.bits[257]._super._super * Val(2));
  Val x684 = (arg0.bits[258]._super._super * Val(4));
  Val x685 = (arg0.bits[259]._super._super * Val(8));
  Val x686 = (arg0.bits[260]._super._super * Val(16));
  Val x687 = (arg0.bits[261]._super._super * Val(32));
  Val x688 = (arg0.bits[262]._super._super * Val(64));
  Val x689 = (arg0.bits[263]._super._super * Val(128));
  Val x690 = (arg0.bits[264]._super._super * Val(256));
  Val x691 = (arg0.bits[265]._super._super * Val(512));
  Val x692 = (arg0.bits[266]._super._super * Val(1024));
  Val x693 = (arg0.bits[267]._super._super * Val(2048));
  Val x694 = (arg0.bits[268]._super._super * Val(4096));
  Val x695 = (arg0.bits[269]._super._super * Val(8192));
  Val x696 = (arg0.bits[270]._super._super * Val(16384));
  Val x697 = (arg0.bits[271]._super._super * Val(32768));
  Val x698 = (arg0.bits[256]._super._super + x683);
  Val x699 = (((x698 + x684) + x685) + x686);
  Val x700 = (((x699 + x687) + x688) + x689);
  Val x701 = (((x700 + x690) + x691) + x692);
  Val x702 = (((x701 + x693) + x694) + x695);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x703 = (arg0.bits[273]._super._super * Val(2));
  Val x704 = (arg0.bits[274]._super._super * Val(4));
  Val x705 = (arg0.bits[275]._super._super * Val(8));
  Val x706 = (arg0.bits[276]._super._super * Val(16));
  Val x707 = (arg0.bits[277]._super._super * Val(32));
  Val x708 = (arg0.bits[278]._super._super * Val(64));
  Val x709 = (arg0.bits[279]._super._super * Val(128));
  Val x710 = (arg0.bits[280]._super._super * Val(256));
  Val x711 = (arg0.bits[281]._super._super * Val(512));
  Val x712 = (arg0.bits[282]._super._super * Val(1024));
  Val x713 = (arg0.bits[283]._super._super * Val(2048));
  Val x714 = (arg0.bits[284]._super._super * Val(4096));
  Val x715 = (arg0.bits[285]._super._super * Val(8192));
  Val x716 = (arg0.bits[286]._super._super * Val(16384));
  Val x717 = (arg0.bits[287]._super._super * Val(32768));
  Val x718 = (arg0.bits[272]._super._super + x703);
  Val x719 = (((x718 + x704) + x705) + x706);
  Val x720 = (((x719 + x707) + x708) + x709);
  Val x721 = (((x720 + x710) + x711) + x712);
  Val x722 = (((x721 + x713) + x714) + x715);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x723 = (arg1.bits[289]._super._super * Val(2));
  Val x724 = (arg1.bits[290]._super._super * Val(4));
  Val x725 = (arg1.bits[291]._super._super * Val(8));
  Val x726 = (arg1.bits[292]._super._super * Val(16));
  Val x727 = (arg1.bits[293]._super._super * Val(32));
  Val x728 = (arg1.bits[294]._super._super * Val(64));
  Val x729 = (arg1.bits[295]._super._super * Val(128));
  Val x730 = (arg1.bits[296]._super._super * Val(256));
  Val x731 = (arg1.bits[297]._super._super * Val(512));
  Val x732 = (arg1.bits[298]._super._super * Val(1024));
  Val x733 = (arg1.bits[299]._super._super * Val(2048));
  Val x734 = (arg1.bits[300]._super._super * Val(4096));
  Val x735 = (arg1.bits[301]._super._super * Val(8192));
  Val x736 = (arg1.bits[302]._super._super * Val(16384));
  Val x737 = (arg1.bits[303]._super._super * Val(32768));
  Val x738 = (arg1.bits[288]._super._super + x723);
  Val x739 = (((x738 + x724) + x725) + x726);
  Val x740 = (((x739 + x727) + x728) + x729);
  Val x741 = (((x740 + x730) + x731) + x732);
  Val x742 = (((x741 + x733) + x734) + x735);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x743 = (arg1.bits[305]._super._super * Val(2));
  Val x744 = (arg1.bits[306]._super._super * Val(4));
  Val x745 = (arg1.bits[307]._super._super * Val(8));
  Val x746 = (arg1.bits[308]._super._super * Val(16));
  Val x747 = (arg1.bits[309]._super._super * Val(32));
  Val x748 = (arg1.bits[310]._super._super * Val(64));
  Val x749 = (arg1.bits[311]._super._super * Val(128));
  Val x750 = (arg1.bits[312]._super._super * Val(256));
  Val x751 = (arg1.bits[313]._super._super * Val(512));
  Val x752 = (arg1.bits[314]._super._super * Val(1024));
  Val x753 = (arg1.bits[315]._super._super * Val(2048));
  Val x754 = (arg1.bits[316]._super._super * Val(4096));
  Val x755 = (arg1.bits[317]._super._super * Val(8192));
  Val x756 = (arg1.bits[318]._super._super * Val(16384));
  Val x757 = (arg1.bits[319]._super._super * Val(32768));
  Val x758 = (arg1.bits[304]._super._super + x743);
  Val x759 = (((x758 + x744) + x745) + x746);
  Val x760 = (((x759 + x747) + x748) + x749);
  Val x761 = (((x760 + x750) + x751) + x752);
  Val x762 = (((x761 + x753) + x754) + x755);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x763 = (arg0.bits[289]._super._super * Val(2));
  Val x764 = (arg0.bits[290]._super._super * Val(4));
  Val x765 = (arg0.bits[291]._super._super * Val(8));
  Val x766 = (arg0.bits[292]._super._super * Val(16));
  Val x767 = (arg0.bits[293]._super._super * Val(32));
  Val x768 = (arg0.bits[294]._super._super * Val(64));
  Val x769 = (arg0.bits[295]._super._super * Val(128));
  Val x770 = (arg0.bits[296]._super._super * Val(256));
  Val x771 = (arg0.bits[297]._super._super * Val(512));
  Val x772 = (arg0.bits[298]._super._super * Val(1024));
  Val x773 = (arg0.bits[299]._super._super * Val(2048));
  Val x774 = (arg0.bits[300]._super._super * Val(4096));
  Val x775 = (arg0.bits[301]._super._super * Val(8192));
  Val x776 = (arg0.bits[302]._super._super * Val(16384));
  Val x777 = (arg0.bits[303]._super._super * Val(32768));
  Val x778 = (arg0.bits[288]._super._super + x763);
  Val x779 = (((x778 + x764) + x765) + x766);
  Val x780 = (((x779 + x767) + x768) + x769);
  Val x781 = (((x780 + x770) + x771) + x772);
  Val x782 = (((x781 + x773) + x774) + x775);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x783 = (arg0.bits[305]._super._super * Val(2));
  Val x784 = (arg0.bits[306]._super._super * Val(4));
  Val x785 = (arg0.bits[307]._super._super * Val(8));
  Val x786 = (arg0.bits[308]._super._super * Val(16));
  Val x787 = (arg0.bits[309]._super._super * Val(32));
  Val x788 = (arg0.bits[310]._super._super * Val(64));
  Val x789 = (arg0.bits[311]._super._super * Val(128));
  Val x790 = (arg0.bits[312]._super._super * Val(256));
  Val x791 = (arg0.bits[313]._super._super * Val(512));
  Val x792 = (arg0.bits[314]._super._super * Val(1024));
  Val x793 = (arg0.bits[315]._super._super * Val(2048));
  Val x794 = (arg0.bits[316]._super._super * Val(4096));
  Val x795 = (arg0.bits[317]._super._super * Val(8192));
  Val x796 = (arg0.bits[318]._super._super * Val(16384));
  Val x797 = (arg0.bits[319]._super._super * Val(32768));
  Val x798 = (arg0.bits[304]._super._super + x783);
  Val x799 = (((x798 + x784) + x785) + x786);
  Val x800 = (((x799 + x787) + x788) + x789);
  Val x801 = (((x800 + x790) + x791) + x792);
  Val x802 = (((x801 + x793) + x794) + x795);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x803 = (arg1.bits[321]._super._super * Val(2));
  Val x804 = (arg1.bits[322]._super._super * Val(4));
  Val x805 = (arg1.bits[323]._super._super * Val(8));
  Val x806 = (arg1.bits[324]._super._super * Val(16));
  Val x807 = (arg1.bits[325]._super._super * Val(32));
  Val x808 = (arg1.bits[326]._super._super * Val(64));
  Val x809 = (arg1.bits[327]._super._super * Val(128));
  Val x810 = (arg1.bits[328]._super._super * Val(256));
  Val x811 = (arg1.bits[329]._super._super * Val(512));
  Val x812 = (arg1.bits[330]._super._super * Val(1024));
  Val x813 = (arg1.bits[331]._super._super * Val(2048));
  Val x814 = (arg1.bits[332]._super._super * Val(4096));
  Val x815 = (arg1.bits[333]._super._super * Val(8192));
  Val x816 = (arg1.bits[334]._super._super * Val(16384));
  Val x817 = (arg1.bits[335]._super._super * Val(32768));
  Val x818 = (arg1.bits[320]._super._super + x803);
  Val x819 = (((x818 + x804) + x805) + x806);
  Val x820 = (((x819 + x807) + x808) + x809);
  Val x821 = (((x820 + x810) + x811) + x812);
  Val x822 = (((x821 + x813) + x814) + x815);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x823 = (arg1.bits[337]._super._super * Val(2));
  Val x824 = (arg1.bits[338]._super._super * Val(4));
  Val x825 = (arg1.bits[339]._super._super * Val(8));
  Val x826 = (arg1.bits[340]._super._super * Val(16));
  Val x827 = (arg1.bits[341]._super._super * Val(32));
  Val x828 = (arg1.bits[342]._super._super * Val(64));
  Val x829 = (arg1.bits[343]._super._super * Val(128));
  Val x830 = (arg1.bits[344]._super._super * Val(256));
  Val x831 = (arg1.bits[345]._super._super * Val(512));
  Val x832 = (arg1.bits[346]._super._super * Val(1024));
  Val x833 = (arg1.bits[347]._super._super * Val(2048));
  Val x834 = (arg1.bits[348]._super._super * Val(4096));
  Val x835 = (arg1.bits[349]._super._super * Val(8192));
  Val x836 = (arg1.bits[350]._super._super * Val(16384));
  Val x837 = (arg1.bits[351]._super._super * Val(32768));
  Val x838 = (arg1.bits[336]._super._super + x823);
  Val x839 = (((x838 + x824) + x825) + x826);
  Val x840 = (((x839 + x827) + x828) + x829);
  Val x841 = (((x840 + x830) + x831) + x832);
  Val x842 = (((x841 + x833) + x834) + x835);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x843 = (arg0.bits[321]._super._super * Val(2));
  Val x844 = (arg0.bits[322]._super._super * Val(4));
  Val x845 = (arg0.bits[323]._super._super * Val(8));
  Val x846 = (arg0.bits[324]._super._super * Val(16));
  Val x847 = (arg0.bits[325]._super._super * Val(32));
  Val x848 = (arg0.bits[326]._super._super * Val(64));
  Val x849 = (arg0.bits[327]._super._super * Val(128));
  Val x850 = (arg0.bits[328]._super._super * Val(256));
  Val x851 = (arg0.bits[329]._super._super * Val(512));
  Val x852 = (arg0.bits[330]._super._super * Val(1024));
  Val x853 = (arg0.bits[331]._super._super * Val(2048));
  Val x854 = (arg0.bits[332]._super._super * Val(4096));
  Val x855 = (arg0.bits[333]._super._super * Val(8192));
  Val x856 = (arg0.bits[334]._super._super * Val(16384));
  Val x857 = (arg0.bits[335]._super._super * Val(32768));
  Val x858 = (arg0.bits[320]._super._super + x843);
  Val x859 = (((x858 + x844) + x845) + x846);
  Val x860 = (((x859 + x847) + x848) + x849);
  Val x861 = (((x860 + x850) + x851) + x852);
  Val x862 = (((x861 + x853) + x854) + x855);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x863 = (arg0.bits[337]._super._super * Val(2));
  Val x864 = (arg0.bits[338]._super._super * Val(4));
  Val x865 = (arg0.bits[339]._super._super * Val(8));
  Val x866 = (arg0.bits[340]._super._super * Val(16));
  Val x867 = (arg0.bits[341]._super._super * Val(32));
  Val x868 = (arg0.bits[342]._super._super * Val(64));
  Val x869 = (arg0.bits[343]._super._super * Val(128));
  Val x870 = (arg0.bits[344]._super._super * Val(256));
  Val x871 = (arg0.bits[345]._super._super * Val(512));
  Val x872 = (arg0.bits[346]._super._super * Val(1024));
  Val x873 = (arg0.bits[347]._super._super * Val(2048));
  Val x874 = (arg0.bits[348]._super._super * Val(4096));
  Val x875 = (arg0.bits[349]._super._super * Val(8192));
  Val x876 = (arg0.bits[350]._super._super * Val(16384));
  Val x877 = (arg0.bits[351]._super._super * Val(32768));
  Val x878 = (arg0.bits[336]._super._super + x863);
  Val x879 = (((x878 + x864) + x865) + x866);
  Val x880 = (((x879 + x867) + x868) + x869);
  Val x881 = (((x880 + x870) + x871) + x872);
  Val x882 = (((x881 + x873) + x874) + x875);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x883 = (arg1.bits[353]._super._super * Val(2));
  Val x884 = (arg1.bits[354]._super._super * Val(4));
  Val x885 = (arg1.bits[355]._super._super * Val(8));
  Val x886 = (arg1.bits[356]._super._super * Val(16));
  Val x887 = (arg1.bits[357]._super._super * Val(32));
  Val x888 = (arg1.bits[358]._super._super * Val(64));
  Val x889 = (arg1.bits[359]._super._super * Val(128));
  Val x890 = (arg1.bits[360]._super._super * Val(256));
  Val x891 = (arg1.bits[361]._super._super * Val(512));
  Val x892 = (arg1.bits[362]._super._super * Val(1024));
  Val x893 = (arg1.bits[363]._super._super * Val(2048));
  Val x894 = (arg1.bits[364]._super._super * Val(4096));
  Val x895 = (arg1.bits[365]._super._super * Val(8192));
  Val x896 = (arg1.bits[366]._super._super * Val(16384));
  Val x897 = (arg1.bits[367]._super._super * Val(32768));
  Val x898 = (arg1.bits[352]._super._super + x883);
  Val x899 = (((x898 + x884) + x885) + x886);
  Val x900 = (((x899 + x887) + x888) + x889);
  Val x901 = (((x900 + x890) + x891) + x892);
  Val x902 = (((x901 + x893) + x894) + x895);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x903 = (arg1.bits[369]._super._super * Val(2));
  Val x904 = (arg1.bits[370]._super._super * Val(4));
  Val x905 = (arg1.bits[371]._super._super * Val(8));
  Val x906 = (arg1.bits[372]._super._super * Val(16));
  Val x907 = (arg1.bits[373]._super._super * Val(32));
  Val x908 = (arg1.bits[374]._super._super * Val(64));
  Val x909 = (arg1.bits[375]._super._super * Val(128));
  Val x910 = (arg1.bits[376]._super._super * Val(256));
  Val x911 = (arg1.bits[377]._super._super * Val(512));
  Val x912 = (arg1.bits[378]._super._super * Val(1024));
  Val x913 = (arg1.bits[379]._super._super * Val(2048));
  Val x914 = (arg1.bits[380]._super._super * Val(4096));
  Val x915 = (arg1.bits[381]._super._super * Val(8192));
  Val x916 = (arg1.bits[382]._super._super * Val(16384));
  Val x917 = (arg1.bits[383]._super._super * Val(32768));
  Val x918 = (arg1.bits[368]._super._super + x903);
  Val x919 = (((x918 + x904) + x905) + x906);
  Val x920 = (((x919 + x907) + x908) + x909);
  Val x921 = (((x920 + x910) + x911) + x912);
  Val x922 = (((x921 + x913) + x914) + x915);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x923 = (arg0.bits[353]._super._super * Val(2));
  Val x924 = (arg0.bits[354]._super._super * Val(4));
  Val x925 = (arg0.bits[355]._super._super * Val(8));
  Val x926 = (arg0.bits[356]._super._super * Val(16));
  Val x927 = (arg0.bits[357]._super._super * Val(32));
  Val x928 = (arg0.bits[358]._super._super * Val(64));
  Val x929 = (arg0.bits[359]._super._super * Val(128));
  Val x930 = (arg0.bits[360]._super._super * Val(256));
  Val x931 = (arg0.bits[361]._super._super * Val(512));
  Val x932 = (arg0.bits[362]._super._super * Val(1024));
  Val x933 = (arg0.bits[363]._super._super * Val(2048));
  Val x934 = (arg0.bits[364]._super._super * Val(4096));
  Val x935 = (arg0.bits[365]._super._super * Val(8192));
  Val x936 = (arg0.bits[366]._super._super * Val(16384));
  Val x937 = (arg0.bits[367]._super._super * Val(32768));
  Val x938 = (arg0.bits[352]._super._super + x923);
  Val x939 = (((x938 + x924) + x925) + x926);
  Val x940 = (((x939 + x927) + x928) + x929);
  Val x941 = (((x940 + x930) + x931) + x932);
  Val x942 = (((x941 + x933) + x934) + x935);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x943 = (arg0.bits[369]._super._super * Val(2));
  Val x944 = (arg0.bits[370]._super._super * Val(4));
  Val x945 = (arg0.bits[371]._super._super * Val(8));
  Val x946 = (arg0.bits[372]._super._super * Val(16));
  Val x947 = (arg0.bits[373]._super._super * Val(32));
  Val x948 = (arg0.bits[374]._super._super * Val(64));
  Val x949 = (arg0.bits[375]._super._super * Val(128));
  Val x950 = (arg0.bits[376]._super._super * Val(256));
  Val x951 = (arg0.bits[377]._super._super * Val(512));
  Val x952 = (arg0.bits[378]._super._super * Val(1024));
  Val x953 = (arg0.bits[379]._super._super * Val(2048));
  Val x954 = (arg0.bits[380]._super._super * Val(4096));
  Val x955 = (arg0.bits[381]._super._super * Val(8192));
  Val x956 = (arg0.bits[382]._super._super * Val(16384));
  Val x957 = (arg0.bits[383]._super._super * Val(32768));
  Val x958 = (arg0.bits[368]._super._super + x943);
  Val x959 = (((x958 + x944) + x945) + x946);
  Val x960 = (((x959 + x947) + x948) + x949);
  Val x961 = (((x960 + x950) + x951) + x952);
  Val x962 = (((x961 + x953) + x954) + x955);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x963 = (arg1.bits[385]._super._super * Val(2));
  Val x964 = (arg1.bits[386]._super._super * Val(4));
  Val x965 = (arg1.bits[387]._super._super * Val(8));
  Val x966 = (arg1.bits[388]._super._super * Val(16));
  Val x967 = (arg1.bits[389]._super._super * Val(32));
  Val x968 = (arg1.bits[390]._super._super * Val(64));
  Val x969 = (arg1.bits[391]._super._super * Val(128));
  Val x970 = (arg1.bits[392]._super._super * Val(256));
  Val x971 = (arg1.bits[393]._super._super * Val(512));
  Val x972 = (arg1.bits[394]._super._super * Val(1024));
  Val x973 = (arg1.bits[395]._super._super * Val(2048));
  Val x974 = (arg1.bits[396]._super._super * Val(4096));
  Val x975 = (arg1.bits[397]._super._super * Val(8192));
  Val x976 = (arg1.bits[398]._super._super * Val(16384));
  Val x977 = (arg1.bits[399]._super._super * Val(32768));
  Val x978 = (arg1.bits[384]._super._super + x963);
  Val x979 = (((x978 + x964) + x965) + x966);
  Val x980 = (((x979 + x967) + x968) + x969);
  Val x981 = (((x980 + x970) + x971) + x972);
  Val x982 = (((x981 + x973) + x974) + x975);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x983 = (arg1.bits[401]._super._super * Val(2));
  Val x984 = (arg1.bits[402]._super._super * Val(4));
  Val x985 = (arg1.bits[403]._super._super * Val(8));
  Val x986 = (arg1.bits[404]._super._super * Val(16));
  Val x987 = (arg1.bits[405]._super._super * Val(32));
  Val x988 = (arg1.bits[406]._super._super * Val(64));
  Val x989 = (arg1.bits[407]._super._super * Val(128));
  Val x990 = (arg1.bits[408]._super._super * Val(256));
  Val x991 = (arg1.bits[409]._super._super * Val(512));
  Val x992 = (arg1.bits[410]._super._super * Val(1024));
  Val x993 = (arg1.bits[411]._super._super * Val(2048));
  Val x994 = (arg1.bits[412]._super._super * Val(4096));
  Val x995 = (arg1.bits[413]._super._super * Val(8192));
  Val x996 = (arg1.bits[414]._super._super * Val(16384));
  Val x997 = (arg1.bits[415]._super._super * Val(32768));
  Val x998 = (arg1.bits[400]._super._super + x983);
  Val x999 = (((x998 + x984) + x985) + x986);
  Val x1000 = (((x999 + x987) + x988) + x989);
  Val x1001 = (((x1000 + x990) + x991) + x992);
  Val x1002 = (((x1001 + x993) + x994) + x995);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1003 = (arg0.bits[385]._super._super * Val(2));
  Val x1004 = (arg0.bits[386]._super._super * Val(4));
  Val x1005 = (arg0.bits[387]._super._super * Val(8));
  Val x1006 = (arg0.bits[388]._super._super * Val(16));
  Val x1007 = (arg0.bits[389]._super._super * Val(32));
  Val x1008 = (arg0.bits[390]._super._super * Val(64));
  Val x1009 = (arg0.bits[391]._super._super * Val(128));
  Val x1010 = (arg0.bits[392]._super._super * Val(256));
  Val x1011 = (arg0.bits[393]._super._super * Val(512));
  Val x1012 = (arg0.bits[394]._super._super * Val(1024));
  Val x1013 = (arg0.bits[395]._super._super * Val(2048));
  Val x1014 = (arg0.bits[396]._super._super * Val(4096));
  Val x1015 = (arg0.bits[397]._super._super * Val(8192));
  Val x1016 = (arg0.bits[398]._super._super * Val(16384));
  Val x1017 = (arg0.bits[399]._super._super * Val(32768));
  Val x1018 = (arg0.bits[384]._super._super + x1003);
  Val x1019 = (((x1018 + x1004) + x1005) + x1006);
  Val x1020 = (((x1019 + x1007) + x1008) + x1009);
  Val x1021 = (((x1020 + x1010) + x1011) + x1012);
  Val x1022 = (((x1021 + x1013) + x1014) + x1015);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1023 = (arg0.bits[401]._super._super * Val(2));
  Val x1024 = (arg0.bits[402]._super._super * Val(4));
  Val x1025 = (arg0.bits[403]._super._super * Val(8));
  Val x1026 = (arg0.bits[404]._super._super * Val(16));
  Val x1027 = (arg0.bits[405]._super._super * Val(32));
  Val x1028 = (arg0.bits[406]._super._super * Val(64));
  Val x1029 = (arg0.bits[407]._super._super * Val(128));
  Val x1030 = (arg0.bits[408]._super._super * Val(256));
  Val x1031 = (arg0.bits[409]._super._super * Val(512));
  Val x1032 = (arg0.bits[410]._super._super * Val(1024));
  Val x1033 = (arg0.bits[411]._super._super * Val(2048));
  Val x1034 = (arg0.bits[412]._super._super * Val(4096));
  Val x1035 = (arg0.bits[413]._super._super * Val(8192));
  Val x1036 = (arg0.bits[414]._super._super * Val(16384));
  Val x1037 = (arg0.bits[415]._super._super * Val(32768));
  Val x1038 = (arg0.bits[400]._super._super + x1023);
  Val x1039 = (((x1038 + x1024) + x1025) + x1026);
  Val x1040 = (((x1039 + x1027) + x1028) + x1029);
  Val x1041 = (((x1040 + x1030) + x1031) + x1032);
  Val x1042 = (((x1041 + x1033) + x1034) + x1035);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1043 = (arg1.bits[417]._super._super * Val(2));
  Val x1044 = (arg1.bits[418]._super._super * Val(4));
  Val x1045 = (arg1.bits[419]._super._super * Val(8));
  Val x1046 = (arg1.bits[420]._super._super * Val(16));
  Val x1047 = (arg1.bits[421]._super._super * Val(32));
  Val x1048 = (arg1.bits[422]._super._super * Val(64));
  Val x1049 = (arg1.bits[423]._super._super * Val(128));
  Val x1050 = (arg1.bits[424]._super._super * Val(256));
  Val x1051 = (arg1.bits[425]._super._super * Val(512));
  Val x1052 = (arg1.bits[426]._super._super * Val(1024));
  Val x1053 = (arg1.bits[427]._super._super * Val(2048));
  Val x1054 = (arg1.bits[428]._super._super * Val(4096));
  Val x1055 = (arg1.bits[429]._super._super * Val(8192));
  Val x1056 = (arg1.bits[430]._super._super * Val(16384));
  Val x1057 = (arg1.bits[431]._super._super * Val(32768));
  Val x1058 = (arg1.bits[416]._super._super + x1043);
  Val x1059 = (((x1058 + x1044) + x1045) + x1046);
  Val x1060 = (((x1059 + x1047) + x1048) + x1049);
  Val x1061 = (((x1060 + x1050) + x1051) + x1052);
  Val x1062 = (((x1061 + x1053) + x1054) + x1055);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1063 = (arg1.bits[433]._super._super * Val(2));
  Val x1064 = (arg1.bits[434]._super._super * Val(4));
  Val x1065 = (arg1.bits[435]._super._super * Val(8));
  Val x1066 = (arg1.bits[436]._super._super * Val(16));
  Val x1067 = (arg1.bits[437]._super._super * Val(32));
  Val x1068 = (arg1.bits[438]._super._super * Val(64));
  Val x1069 = (arg1.bits[439]._super._super * Val(128));
  Val x1070 = (arg1.bits[440]._super._super * Val(256));
  Val x1071 = (arg1.bits[441]._super._super * Val(512));
  Val x1072 = (arg1.bits[442]._super._super * Val(1024));
  Val x1073 = (arg1.bits[443]._super._super * Val(2048));
  Val x1074 = (arg1.bits[444]._super._super * Val(4096));
  Val x1075 = (arg1.bits[445]._super._super * Val(8192));
  Val x1076 = (arg1.bits[446]._super._super * Val(16384));
  Val x1077 = (arg1.bits[447]._super._super * Val(32768));
  Val x1078 = (arg1.bits[432]._super._super + x1063);
  Val x1079 = (((x1078 + x1064) + x1065) + x1066);
  Val x1080 = (((x1079 + x1067) + x1068) + x1069);
  Val x1081 = (((x1080 + x1070) + x1071) + x1072);
  Val x1082 = (((x1081 + x1073) + x1074) + x1075);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1083 = (arg0.bits[417]._super._super * Val(2));
  Val x1084 = (arg0.bits[418]._super._super * Val(4));
  Val x1085 = (arg0.bits[419]._super._super * Val(8));
  Val x1086 = (arg0.bits[420]._super._super * Val(16));
  Val x1087 = (arg0.bits[421]._super._super * Val(32));
  Val x1088 = (arg0.bits[422]._super._super * Val(64));
  Val x1089 = (arg0.bits[423]._super._super * Val(128));
  Val x1090 = (arg0.bits[424]._super._super * Val(256));
  Val x1091 = (arg0.bits[425]._super._super * Val(512));
  Val x1092 = (arg0.bits[426]._super._super * Val(1024));
  Val x1093 = (arg0.bits[427]._super._super * Val(2048));
  Val x1094 = (arg0.bits[428]._super._super * Val(4096));
  Val x1095 = (arg0.bits[429]._super._super * Val(8192));
  Val x1096 = (arg0.bits[430]._super._super * Val(16384));
  Val x1097 = (arg0.bits[431]._super._super * Val(32768));
  Val x1098 = (arg0.bits[416]._super._super + x1083);
  Val x1099 = (((x1098 + x1084) + x1085) + x1086);
  Val x1100 = (((x1099 + x1087) + x1088) + x1089);
  Val x1101 = (((x1100 + x1090) + x1091) + x1092);
  Val x1102 = (((x1101 + x1093) + x1094) + x1095);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1103 = (arg0.bits[433]._super._super * Val(2));
  Val x1104 = (arg0.bits[434]._super._super * Val(4));
  Val x1105 = (arg0.bits[435]._super._super * Val(8));
  Val x1106 = (arg0.bits[436]._super._super * Val(16));
  Val x1107 = (arg0.bits[437]._super._super * Val(32));
  Val x1108 = (arg0.bits[438]._super._super * Val(64));
  Val x1109 = (arg0.bits[439]._super._super * Val(128));
  Val x1110 = (arg0.bits[440]._super._super * Val(256));
  Val x1111 = (arg0.bits[441]._super._super * Val(512));
  Val x1112 = (arg0.bits[442]._super._super * Val(1024));
  Val x1113 = (arg0.bits[443]._super._super * Val(2048));
  Val x1114 = (arg0.bits[444]._super._super * Val(4096));
  Val x1115 = (arg0.bits[445]._super._super * Val(8192));
  Val x1116 = (arg0.bits[446]._super._super * Val(16384));
  Val x1117 = (arg0.bits[447]._super._super * Val(32768));
  Val x1118 = (arg0.bits[432]._super._super + x1103);
  Val x1119 = (((x1118 + x1104) + x1105) + x1106);
  Val x1120 = (((x1119 + x1107) + x1108) + x1109);
  Val x1121 = (((x1120 + x1110) + x1111) + x1112);
  Val x1122 = (((x1121 + x1113) + x1114) + x1115);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1123 = (arg1.bits[449]._super._super * Val(2));
  Val x1124 = (arg1.bits[450]._super._super * Val(4));
  Val x1125 = (arg1.bits[451]._super._super * Val(8));
  Val x1126 = (arg1.bits[452]._super._super * Val(16));
  Val x1127 = (arg1.bits[453]._super._super * Val(32));
  Val x1128 = (arg1.bits[454]._super._super * Val(64));
  Val x1129 = (arg1.bits[455]._super._super * Val(128));
  Val x1130 = (arg1.bits[456]._super._super * Val(256));
  Val x1131 = (arg1.bits[457]._super._super * Val(512));
  Val x1132 = (arg1.bits[458]._super._super * Val(1024));
  Val x1133 = (arg1.bits[459]._super._super * Val(2048));
  Val x1134 = (arg1.bits[460]._super._super * Val(4096));
  Val x1135 = (arg1.bits[461]._super._super * Val(8192));
  Val x1136 = (arg1.bits[462]._super._super * Val(16384));
  Val x1137 = (arg1.bits[463]._super._super * Val(32768));
  Val x1138 = (arg1.bits[448]._super._super + x1123);
  Val x1139 = (((x1138 + x1124) + x1125) + x1126);
  Val x1140 = (((x1139 + x1127) + x1128) + x1129);
  Val x1141 = (((x1140 + x1130) + x1131) + x1132);
  Val x1142 = (((x1141 + x1133) + x1134) + x1135);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1143 = (arg1.bits[465]._super._super * Val(2));
  Val x1144 = (arg1.bits[466]._super._super * Val(4));
  Val x1145 = (arg1.bits[467]._super._super * Val(8));
  Val x1146 = (arg1.bits[468]._super._super * Val(16));
  Val x1147 = (arg1.bits[469]._super._super * Val(32));
  Val x1148 = (arg1.bits[470]._super._super * Val(64));
  Val x1149 = (arg1.bits[471]._super._super * Val(128));
  Val x1150 = (arg1.bits[472]._super._super * Val(256));
  Val x1151 = (arg1.bits[473]._super._super * Val(512));
  Val x1152 = (arg1.bits[474]._super._super * Val(1024));
  Val x1153 = (arg1.bits[475]._super._super * Val(2048));
  Val x1154 = (arg1.bits[476]._super._super * Val(4096));
  Val x1155 = (arg1.bits[477]._super._super * Val(8192));
  Val x1156 = (arg1.bits[478]._super._super * Val(16384));
  Val x1157 = (arg1.bits[479]._super._super * Val(32768));
  Val x1158 = (arg1.bits[464]._super._super + x1143);
  Val x1159 = (((x1158 + x1144) + x1145) + x1146);
  Val x1160 = (((x1159 + x1147) + x1148) + x1149);
  Val x1161 = (((x1160 + x1150) + x1151) + x1152);
  Val x1162 = (((x1161 + x1153) + x1154) + x1155);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1163 = (arg0.bits[449]._super._super * Val(2));
  Val x1164 = (arg0.bits[450]._super._super * Val(4));
  Val x1165 = (arg0.bits[451]._super._super * Val(8));
  Val x1166 = (arg0.bits[452]._super._super * Val(16));
  Val x1167 = (arg0.bits[453]._super._super * Val(32));
  Val x1168 = (arg0.bits[454]._super._super * Val(64));
  Val x1169 = (arg0.bits[455]._super._super * Val(128));
  Val x1170 = (arg0.bits[456]._super._super * Val(256));
  Val x1171 = (arg0.bits[457]._super._super * Val(512));
  Val x1172 = (arg0.bits[458]._super._super * Val(1024));
  Val x1173 = (arg0.bits[459]._super._super * Val(2048));
  Val x1174 = (arg0.bits[460]._super._super * Val(4096));
  Val x1175 = (arg0.bits[461]._super._super * Val(8192));
  Val x1176 = (arg0.bits[462]._super._super * Val(16384));
  Val x1177 = (arg0.bits[463]._super._super * Val(32768));
  Val x1178 = (arg0.bits[448]._super._super + x1163);
  Val x1179 = (((x1178 + x1164) + x1165) + x1166);
  Val x1180 = (((x1179 + x1167) + x1168) + x1169);
  Val x1181 = (((x1180 + x1170) + x1171) + x1172);
  Val x1182 = (((x1181 + x1173) + x1174) + x1175);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1183 = (arg0.bits[465]._super._super * Val(2));
  Val x1184 = (arg0.bits[466]._super._super * Val(4));
  Val x1185 = (arg0.bits[467]._super._super * Val(8));
  Val x1186 = (arg0.bits[468]._super._super * Val(16));
  Val x1187 = (arg0.bits[469]._super._super * Val(32));
  Val x1188 = (arg0.bits[470]._super._super * Val(64));
  Val x1189 = (arg0.bits[471]._super._super * Val(128));
  Val x1190 = (arg0.bits[472]._super._super * Val(256));
  Val x1191 = (arg0.bits[473]._super._super * Val(512));
  Val x1192 = (arg0.bits[474]._super._super * Val(1024));
  Val x1193 = (arg0.bits[475]._super._super * Val(2048));
  Val x1194 = (arg0.bits[476]._super._super * Val(4096));
  Val x1195 = (arg0.bits[477]._super._super * Val(8192));
  Val x1196 = (arg0.bits[478]._super._super * Val(16384));
  Val x1197 = (arg0.bits[479]._super._super * Val(32768));
  Val x1198 = (arg0.bits[464]._super._super + x1183);
  Val x1199 = (((x1198 + x1184) + x1185) + x1186);
  Val x1200 = (((x1199 + x1187) + x1188) + x1189);
  Val x1201 = (((x1200 + x1190) + x1191) + x1192);
  Val x1202 = (((x1201 + x1193) + x1194) + x1195);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1203 = (arg1.bits[481]._super._super * Val(2));
  Val x1204 = (arg1.bits[482]._super._super * Val(4));
  Val x1205 = (arg1.bits[483]._super._super * Val(8));
  Val x1206 = (arg1.bits[484]._super._super * Val(16));
  Val x1207 = (arg1.bits[485]._super._super * Val(32));
  Val x1208 = (arg1.bits[486]._super._super * Val(64));
  Val x1209 = (arg1.bits[487]._super._super * Val(128));
  Val x1210 = (arg1.bits[488]._super._super * Val(256));
  Val x1211 = (arg1.bits[489]._super._super * Val(512));
  Val x1212 = (arg1.bits[490]._super._super * Val(1024));
  Val x1213 = (arg1.bits[491]._super._super * Val(2048));
  Val x1214 = (arg1.bits[492]._super._super * Val(4096));
  Val x1215 = (arg1.bits[493]._super._super * Val(8192));
  Val x1216 = (arg1.bits[494]._super._super * Val(16384));
  Val x1217 = (arg1.bits[495]._super._super * Val(32768));
  Val x1218 = (arg1.bits[480]._super._super + x1203);
  Val x1219 = (((x1218 + x1204) + x1205) + x1206);
  Val x1220 = (((x1219 + x1207) + x1208) + x1209);
  Val x1221 = (((x1220 + x1210) + x1211) + x1212);
  Val x1222 = (((x1221 + x1213) + x1214) + x1215);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1223 = (arg1.bits[497]._super._super * Val(2));
  Val x1224 = (arg1.bits[498]._super._super * Val(4));
  Val x1225 = (arg1.bits[499]._super._super * Val(8));
  Val x1226 = (arg1.bits[500]._super._super * Val(16));
  Val x1227 = (arg1.bits[501]._super._super * Val(32));
  Val x1228 = (arg1.bits[502]._super._super * Val(64));
  Val x1229 = (arg1.bits[503]._super._super * Val(128));
  Val x1230 = (arg1.bits[504]._super._super * Val(256));
  Val x1231 = (arg1.bits[505]._super._super * Val(512));
  Val x1232 = (arg1.bits[506]._super._super * Val(1024));
  Val x1233 = (arg1.bits[507]._super._super * Val(2048));
  Val x1234 = (arg1.bits[508]._super._super * Val(4096));
  Val x1235 = (arg1.bits[509]._super._super * Val(8192));
  Val x1236 = (arg1.bits[510]._super._super * Val(16384));
  Val x1237 = (arg1.bits[511]._super._super * Val(32768));
  Val x1238 = (arg1.bits[496]._super._super + x1223);
  Val x1239 = (((x1238 + x1224) + x1225) + x1226);
  Val x1240 = (((x1239 + x1227) + x1228) + x1229);
  Val x1241 = (((x1240 + x1230) + x1231) + x1232);
  Val x1242 = (((x1241 + x1233) + x1234) + x1235);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1243 = (arg0.bits[481]._super._super * Val(2));
  Val x1244 = (arg0.bits[482]._super._super * Val(4));
  Val x1245 = (arg0.bits[483]._super._super * Val(8));
  Val x1246 = (arg0.bits[484]._super._super * Val(16));
  Val x1247 = (arg0.bits[485]._super._super * Val(32));
  Val x1248 = (arg0.bits[486]._super._super * Val(64));
  Val x1249 = (arg0.bits[487]._super._super * Val(128));
  Val x1250 = (arg0.bits[488]._super._super * Val(256));
  Val x1251 = (arg0.bits[489]._super._super * Val(512));
  Val x1252 = (arg0.bits[490]._super._super * Val(1024));
  Val x1253 = (arg0.bits[491]._super._super * Val(2048));
  Val x1254 = (arg0.bits[492]._super._super * Val(4096));
  Val x1255 = (arg0.bits[493]._super._super * Val(8192));
  Val x1256 = (arg0.bits[494]._super._super * Val(16384));
  Val x1257 = (arg0.bits[495]._super._super * Val(32768));
  Val x1258 = (arg0.bits[480]._super._super + x1243);
  Val x1259 = (((x1258 + x1244) + x1245) + x1246);
  Val x1260 = (((x1259 + x1247) + x1248) + x1249);
  Val x1261 = (((x1260 + x1250) + x1251) + x1252);
  Val x1262 = (((x1261 + x1253) + x1254) + x1255);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1263 = (arg0.bits[497]._super._super * Val(2));
  Val x1264 = (arg0.bits[498]._super._super * Val(4));
  Val x1265 = (arg0.bits[499]._super._super * Val(8));
  Val x1266 = (arg0.bits[500]._super._super * Val(16));
  Val x1267 = (arg0.bits[501]._super._super * Val(32));
  Val x1268 = (arg0.bits[502]._super._super * Val(64));
  Val x1269 = (arg0.bits[503]._super._super * Val(128));
  Val x1270 = (arg0.bits[504]._super._super * Val(256));
  Val x1271 = (arg0.bits[505]._super._super * Val(512));
  Val x1272 = (arg0.bits[506]._super._super * Val(1024));
  Val x1273 = (arg0.bits[507]._super._super * Val(2048));
  Val x1274 = (arg0.bits[508]._super._super * Val(4096));
  Val x1275 = (arg0.bits[509]._super._super * Val(8192));
  Val x1276 = (arg0.bits[510]._super._super * Val(16384));
  Val x1277 = (arg0.bits[511]._super._super * Val(32768));
  Val x1278 = (arg0.bits[496]._super._super + x1263);
  Val x1279 = (((x1278 + x1264) + x1265) + x1266);
  Val x1280 = (((x1279 + x1267) + x1268) + x1269);
  Val x1281 = (((x1280 + x1270) + x1271) + x1272);
  Val x1282 = (((x1281 + x1273) + x1274) + x1275);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1283 = (arg1.bits[513]._super._super * Val(2));
  Val x1284 = (arg1.bits[514]._super._super * Val(4));
  Val x1285 = (arg1.bits[515]._super._super * Val(8));
  Val x1286 = (arg1.bits[516]._super._super * Val(16));
  Val x1287 = (arg1.bits[517]._super._super * Val(32));
  Val x1288 = (arg1.bits[518]._super._super * Val(64));
  Val x1289 = (arg1.bits[519]._super._super * Val(128));
  Val x1290 = (arg1.bits[520]._super._super * Val(256));
  Val x1291 = (arg1.bits[521]._super._super * Val(512));
  Val x1292 = (arg1.bits[522]._super._super * Val(1024));
  Val x1293 = (arg1.bits[523]._super._super * Val(2048));
  Val x1294 = (arg1.bits[524]._super._super * Val(4096));
  Val x1295 = (arg1.bits[525]._super._super * Val(8192));
  Val x1296 = (arg1.bits[526]._super._super * Val(16384));
  Val x1297 = (arg1.bits[527]._super._super * Val(32768));
  Val x1298 = (arg1.bits[512]._super._super + x1283);
  Val x1299 = (((x1298 + x1284) + x1285) + x1286);
  Val x1300 = (((x1299 + x1287) + x1288) + x1289);
  Val x1301 = (((x1300 + x1290) + x1291) + x1292);
  Val x1302 = (((x1301 + x1293) + x1294) + x1295);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1303 = (arg1.bits[529]._super._super * Val(2));
  Val x1304 = (arg1.bits[530]._super._super * Val(4));
  Val x1305 = (arg1.bits[531]._super._super * Val(8));
  Val x1306 = (arg1.bits[532]._super._super * Val(16));
  Val x1307 = (arg1.bits[533]._super._super * Val(32));
  Val x1308 = (arg1.bits[534]._super._super * Val(64));
  Val x1309 = (arg1.bits[535]._super._super * Val(128));
  Val x1310 = (arg1.bits[536]._super._super * Val(256));
  Val x1311 = (arg1.bits[537]._super._super * Val(512));
  Val x1312 = (arg1.bits[538]._super._super * Val(1024));
  Val x1313 = (arg1.bits[539]._super._super * Val(2048));
  Val x1314 = (arg1.bits[540]._super._super * Val(4096));
  Val x1315 = (arg1.bits[541]._super._super * Val(8192));
  Val x1316 = (arg1.bits[542]._super._super * Val(16384));
  Val x1317 = (arg1.bits[543]._super._super * Val(32768));
  Val x1318 = (arg1.bits[528]._super._super + x1303);
  Val x1319 = (((x1318 + x1304) + x1305) + x1306);
  Val x1320 = (((x1319 + x1307) + x1308) + x1309);
  Val x1321 = (((x1320 + x1310) + x1311) + x1312);
  Val x1322 = (((x1321 + x1313) + x1314) + x1315);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1323 = (arg0.bits[513]._super._super * Val(2));
  Val x1324 = (arg0.bits[514]._super._super * Val(4));
  Val x1325 = (arg0.bits[515]._super._super * Val(8));
  Val x1326 = (arg0.bits[516]._super._super * Val(16));
  Val x1327 = (arg0.bits[517]._super._super * Val(32));
  Val x1328 = (arg0.bits[518]._super._super * Val(64));
  Val x1329 = (arg0.bits[519]._super._super * Val(128));
  Val x1330 = (arg0.bits[520]._super._super * Val(256));
  Val x1331 = (arg0.bits[521]._super._super * Val(512));
  Val x1332 = (arg0.bits[522]._super._super * Val(1024));
  Val x1333 = (arg0.bits[523]._super._super * Val(2048));
  Val x1334 = (arg0.bits[524]._super._super * Val(4096));
  Val x1335 = (arg0.bits[525]._super._super * Val(8192));
  Val x1336 = (arg0.bits[526]._super._super * Val(16384));
  Val x1337 = (arg0.bits[527]._super._super * Val(32768));
  Val x1338 = (arg0.bits[512]._super._super + x1323);
  Val x1339 = (((x1338 + x1324) + x1325) + x1326);
  Val x1340 = (((x1339 + x1327) + x1328) + x1329);
  Val x1341 = (((x1340 + x1330) + x1331) + x1332);
  Val x1342 = (((x1341 + x1333) + x1334) + x1335);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1343 = (arg0.bits[529]._super._super * Val(2));
  Val x1344 = (arg0.bits[530]._super._super * Val(4));
  Val x1345 = (arg0.bits[531]._super._super * Val(8));
  Val x1346 = (arg0.bits[532]._super._super * Val(16));
  Val x1347 = (arg0.bits[533]._super._super * Val(32));
  Val x1348 = (arg0.bits[534]._super._super * Val(64));
  Val x1349 = (arg0.bits[535]._super._super * Val(128));
  Val x1350 = (arg0.bits[536]._super._super * Val(256));
  Val x1351 = (arg0.bits[537]._super._super * Val(512));
  Val x1352 = (arg0.bits[538]._super._super * Val(1024));
  Val x1353 = (arg0.bits[539]._super._super * Val(2048));
  Val x1354 = (arg0.bits[540]._super._super * Val(4096));
  Val x1355 = (arg0.bits[541]._super._super * Val(8192));
  Val x1356 = (arg0.bits[542]._super._super * Val(16384));
  Val x1357 = (arg0.bits[543]._super._super * Val(32768));
  Val x1358 = (arg0.bits[528]._super._super + x1343);
  Val x1359 = (((x1358 + x1344) + x1345) + x1346);
  Val x1360 = (((x1359 + x1347) + x1348) + x1349);
  Val x1361 = (((x1360 + x1350) + x1351) + x1352);
  Val x1362 = (((x1361 + x1353) + x1354) + x1355);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1363 = (arg1.bits[545]._super._super * Val(2));
  Val x1364 = (arg1.bits[546]._super._super * Val(4));
  Val x1365 = (arg1.bits[547]._super._super * Val(8));
  Val x1366 = (arg1.bits[548]._super._super * Val(16));
  Val x1367 = (arg1.bits[549]._super._super * Val(32));
  Val x1368 = (arg1.bits[550]._super._super * Val(64));
  Val x1369 = (arg1.bits[551]._super._super * Val(128));
  Val x1370 = (arg1.bits[552]._super._super * Val(256));
  Val x1371 = (arg1.bits[553]._super._super * Val(512));
  Val x1372 = (arg1.bits[554]._super._super * Val(1024));
  Val x1373 = (arg1.bits[555]._super._super * Val(2048));
  Val x1374 = (arg1.bits[556]._super._super * Val(4096));
  Val x1375 = (arg1.bits[557]._super._super * Val(8192));
  Val x1376 = (arg1.bits[558]._super._super * Val(16384));
  Val x1377 = (arg1.bits[559]._super._super * Val(32768));
  Val x1378 = (arg1.bits[544]._super._super + x1363);
  Val x1379 = (((x1378 + x1364) + x1365) + x1366);
  Val x1380 = (((x1379 + x1367) + x1368) + x1369);
  Val x1381 = (((x1380 + x1370) + x1371) + x1372);
  Val x1382 = (((x1381 + x1373) + x1374) + x1375);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1383 = (arg1.bits[561]._super._super * Val(2));
  Val x1384 = (arg1.bits[562]._super._super * Val(4));
  Val x1385 = (arg1.bits[563]._super._super * Val(8));
  Val x1386 = (arg1.bits[564]._super._super * Val(16));
  Val x1387 = (arg1.bits[565]._super._super * Val(32));
  Val x1388 = (arg1.bits[566]._super._super * Val(64));
  Val x1389 = (arg1.bits[567]._super._super * Val(128));
  Val x1390 = (arg1.bits[568]._super._super * Val(256));
  Val x1391 = (arg1.bits[569]._super._super * Val(512));
  Val x1392 = (arg1.bits[570]._super._super * Val(1024));
  Val x1393 = (arg1.bits[571]._super._super * Val(2048));
  Val x1394 = (arg1.bits[572]._super._super * Val(4096));
  Val x1395 = (arg1.bits[573]._super._super * Val(8192));
  Val x1396 = (arg1.bits[574]._super._super * Val(16384));
  Val x1397 = (arg1.bits[575]._super._super * Val(32768));
  Val x1398 = (arg1.bits[560]._super._super + x1383);
  Val x1399 = (((x1398 + x1384) + x1385) + x1386);
  Val x1400 = (((x1399 + x1387) + x1388) + x1389);
  Val x1401 = (((x1400 + x1390) + x1391) + x1392);
  Val x1402 = (((x1401 + x1393) + x1394) + x1395);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1403 = (arg0.bits[545]._super._super * Val(2));
  Val x1404 = (arg0.bits[546]._super._super * Val(4));
  Val x1405 = (arg0.bits[547]._super._super * Val(8));
  Val x1406 = (arg0.bits[548]._super._super * Val(16));
  Val x1407 = (arg0.bits[549]._super._super * Val(32));
  Val x1408 = (arg0.bits[550]._super._super * Val(64));
  Val x1409 = (arg0.bits[551]._super._super * Val(128));
  Val x1410 = (arg0.bits[552]._super._super * Val(256));
  Val x1411 = (arg0.bits[553]._super._super * Val(512));
  Val x1412 = (arg0.bits[554]._super._super * Val(1024));
  Val x1413 = (arg0.bits[555]._super._super * Val(2048));
  Val x1414 = (arg0.bits[556]._super._super * Val(4096));
  Val x1415 = (arg0.bits[557]._super._super * Val(8192));
  Val x1416 = (arg0.bits[558]._super._super * Val(16384));
  Val x1417 = (arg0.bits[559]._super._super * Val(32768));
  Val x1418 = (arg0.bits[544]._super._super + x1403);
  Val x1419 = (((x1418 + x1404) + x1405) + x1406);
  Val x1420 = (((x1419 + x1407) + x1408) + x1409);
  Val x1421 = (((x1420 + x1410) + x1411) + x1412);
  Val x1422 = (((x1421 + x1413) + x1414) + x1415);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1423 = (arg0.bits[561]._super._super * Val(2));
  Val x1424 = (arg0.bits[562]._super._super * Val(4));
  Val x1425 = (arg0.bits[563]._super._super * Val(8));
  Val x1426 = (arg0.bits[564]._super._super * Val(16));
  Val x1427 = (arg0.bits[565]._super._super * Val(32));
  Val x1428 = (arg0.bits[566]._super._super * Val(64));
  Val x1429 = (arg0.bits[567]._super._super * Val(128));
  Val x1430 = (arg0.bits[568]._super._super * Val(256));
  Val x1431 = (arg0.bits[569]._super._super * Val(512));
  Val x1432 = (arg0.bits[570]._super._super * Val(1024));
  Val x1433 = (arg0.bits[571]._super._super * Val(2048));
  Val x1434 = (arg0.bits[572]._super._super * Val(4096));
  Val x1435 = (arg0.bits[573]._super._super * Val(8192));
  Val x1436 = (arg0.bits[574]._super._super * Val(16384));
  Val x1437 = (arg0.bits[575]._super._super * Val(32768));
  Val x1438 = (arg0.bits[560]._super._super + x1423);
  Val x1439 = (((x1438 + x1424) + x1425) + x1426);
  Val x1440 = (((x1439 + x1427) + x1428) + x1429);
  Val x1441 = (((x1440 + x1430) + x1431) + x1432);
  Val x1442 = (((x1441 + x1433) + x1434) + x1435);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1443 = (arg1.bits[577]._super._super * Val(2));
  Val x1444 = (arg1.bits[578]._super._super * Val(4));
  Val x1445 = (arg1.bits[579]._super._super * Val(8));
  Val x1446 = (arg1.bits[580]._super._super * Val(16));
  Val x1447 = (arg1.bits[581]._super._super * Val(32));
  Val x1448 = (arg1.bits[582]._super._super * Val(64));
  Val x1449 = (arg1.bits[583]._super._super * Val(128));
  Val x1450 = (arg1.bits[584]._super._super * Val(256));
  Val x1451 = (arg1.bits[585]._super._super * Val(512));
  Val x1452 = (arg1.bits[586]._super._super * Val(1024));
  Val x1453 = (arg1.bits[587]._super._super * Val(2048));
  Val x1454 = (arg1.bits[588]._super._super * Val(4096));
  Val x1455 = (arg1.bits[589]._super._super * Val(8192));
  Val x1456 = (arg1.bits[590]._super._super * Val(16384));
  Val x1457 = (arg1.bits[591]._super._super * Val(32768));
  Val x1458 = (arg1.bits[576]._super._super + x1443);
  Val x1459 = (((x1458 + x1444) + x1445) + x1446);
  Val x1460 = (((x1459 + x1447) + x1448) + x1449);
  Val x1461 = (((x1460 + x1450) + x1451) + x1452);
  Val x1462 = (((x1461 + x1453) + x1454) + x1455);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1463 = (arg1.bits[593]._super._super * Val(2));
  Val x1464 = (arg1.bits[594]._super._super * Val(4));
  Val x1465 = (arg1.bits[595]._super._super * Val(8));
  Val x1466 = (arg1.bits[596]._super._super * Val(16));
  Val x1467 = (arg1.bits[597]._super._super * Val(32));
  Val x1468 = (arg1.bits[598]._super._super * Val(64));
  Val x1469 = (arg1.bits[599]._super._super * Val(128));
  Val x1470 = (arg1.bits[600]._super._super * Val(256));
  Val x1471 = (arg1.bits[601]._super._super * Val(512));
  Val x1472 = (arg1.bits[602]._super._super * Val(1024));
  Val x1473 = (arg1.bits[603]._super._super * Val(2048));
  Val x1474 = (arg1.bits[604]._super._super * Val(4096));
  Val x1475 = (arg1.bits[605]._super._super * Val(8192));
  Val x1476 = (arg1.bits[606]._super._super * Val(16384));
  Val x1477 = (arg1.bits[607]._super._super * Val(32768));
  Val x1478 = (arg1.bits[592]._super._super + x1463);
  Val x1479 = (((x1478 + x1464) + x1465) + x1466);
  Val x1480 = (((x1479 + x1467) + x1468) + x1469);
  Val x1481 = (((x1480 + x1470) + x1471) + x1472);
  Val x1482 = (((x1481 + x1473) + x1474) + x1475);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1483 = (arg0.bits[577]._super._super * Val(2));
  Val x1484 = (arg0.bits[578]._super._super * Val(4));
  Val x1485 = (arg0.bits[579]._super._super * Val(8));
  Val x1486 = (arg0.bits[580]._super._super * Val(16));
  Val x1487 = (arg0.bits[581]._super._super * Val(32));
  Val x1488 = (arg0.bits[582]._super._super * Val(64));
  Val x1489 = (arg0.bits[583]._super._super * Val(128));
  Val x1490 = (arg0.bits[584]._super._super * Val(256));
  Val x1491 = (arg0.bits[585]._super._super * Val(512));
  Val x1492 = (arg0.bits[586]._super._super * Val(1024));
  Val x1493 = (arg0.bits[587]._super._super * Val(2048));
  Val x1494 = (arg0.bits[588]._super._super * Val(4096));
  Val x1495 = (arg0.bits[589]._super._super * Val(8192));
  Val x1496 = (arg0.bits[590]._super._super * Val(16384));
  Val x1497 = (arg0.bits[591]._super._super * Val(32768));
  Val x1498 = (arg0.bits[576]._super._super + x1483);
  Val x1499 = (((x1498 + x1484) + x1485) + x1486);
  Val x1500 = (((x1499 + x1487) + x1488) + x1489);
  Val x1501 = (((x1500 + x1490) + x1491) + x1492);
  Val x1502 = (((x1501 + x1493) + x1494) + x1495);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1503 = (arg0.bits[593]._super._super * Val(2));
  Val x1504 = (arg0.bits[594]._super._super * Val(4));
  Val x1505 = (arg0.bits[595]._super._super * Val(8));
  Val x1506 = (arg0.bits[596]._super._super * Val(16));
  Val x1507 = (arg0.bits[597]._super._super * Val(32));
  Val x1508 = (arg0.bits[598]._super._super * Val(64));
  Val x1509 = (arg0.bits[599]._super._super * Val(128));
  Val x1510 = (arg0.bits[600]._super._super * Val(256));
  Val x1511 = (arg0.bits[601]._super._super * Val(512));
  Val x1512 = (arg0.bits[602]._super._super * Val(1024));
  Val x1513 = (arg0.bits[603]._super._super * Val(2048));
  Val x1514 = (arg0.bits[604]._super._super * Val(4096));
  Val x1515 = (arg0.bits[605]._super._super * Val(8192));
  Val x1516 = (arg0.bits[606]._super._super * Val(16384));
  Val x1517 = (arg0.bits[607]._super._super * Val(32768));
  Val x1518 = (arg0.bits[592]._super._super + x1503);
  Val x1519 = (((x1518 + x1504) + x1505) + x1506);
  Val x1520 = (((x1519 + x1507) + x1508) + x1509);
  Val x1521 = (((x1520 + x1510) + x1511) + x1512);
  Val x1522 = (((x1521 + x1513) + x1514) + x1515);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1523 = (arg1.bits[609]._super._super * Val(2));
  Val x1524 = (arg1.bits[610]._super._super * Val(4));
  Val x1525 = (arg1.bits[611]._super._super * Val(8));
  Val x1526 = (arg1.bits[612]._super._super * Val(16));
  Val x1527 = (arg1.bits[613]._super._super * Val(32));
  Val x1528 = (arg1.bits[614]._super._super * Val(64));
  Val x1529 = (arg1.bits[615]._super._super * Val(128));
  Val x1530 = (arg1.bits[616]._super._super * Val(256));
  Val x1531 = (arg1.bits[617]._super._super * Val(512));
  Val x1532 = (arg1.bits[618]._super._super * Val(1024));
  Val x1533 = (arg1.bits[619]._super._super * Val(2048));
  Val x1534 = (arg1.bits[620]._super._super * Val(4096));
  Val x1535 = (arg1.bits[621]._super._super * Val(8192));
  Val x1536 = (arg1.bits[622]._super._super * Val(16384));
  Val x1537 = (arg1.bits[623]._super._super * Val(32768));
  Val x1538 = (arg1.bits[608]._super._super + x1523);
  Val x1539 = (((x1538 + x1524) + x1525) + x1526);
  Val x1540 = (((x1539 + x1527) + x1528) + x1529);
  Val x1541 = (((x1540 + x1530) + x1531) + x1532);
  Val x1542 = (((x1541 + x1533) + x1534) + x1535);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1543 = (arg1.bits[625]._super._super * Val(2));
  Val x1544 = (arg1.bits[626]._super._super * Val(4));
  Val x1545 = (arg1.bits[627]._super._super * Val(8));
  Val x1546 = (arg1.bits[628]._super._super * Val(16));
  Val x1547 = (arg1.bits[629]._super._super * Val(32));
  Val x1548 = (arg1.bits[630]._super._super * Val(64));
  Val x1549 = (arg1.bits[631]._super._super * Val(128));
  Val x1550 = (arg1.bits[632]._super._super * Val(256));
  Val x1551 = (arg1.bits[633]._super._super * Val(512));
  Val x1552 = (arg1.bits[634]._super._super * Val(1024));
  Val x1553 = (arg1.bits[635]._super._super * Val(2048));
  Val x1554 = (arg1.bits[636]._super._super * Val(4096));
  Val x1555 = (arg1.bits[637]._super._super * Val(8192));
  Val x1556 = (arg1.bits[638]._super._super * Val(16384));
  Val x1557 = (arg1.bits[639]._super._super * Val(32768));
  Val x1558 = (arg1.bits[624]._super._super + x1543);
  Val x1559 = (((x1558 + x1544) + x1545) + x1546);
  Val x1560 = (((x1559 + x1547) + x1548) + x1549);
  Val x1561 = (((x1560 + x1550) + x1551) + x1552);
  Val x1562 = (((x1561 + x1553) + x1554) + x1555);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1563 = (arg0.bits[609]._super._super * Val(2));
  Val x1564 = (arg0.bits[610]._super._super * Val(4));
  Val x1565 = (arg0.bits[611]._super._super * Val(8));
  Val x1566 = (arg0.bits[612]._super._super * Val(16));
  Val x1567 = (arg0.bits[613]._super._super * Val(32));
  Val x1568 = (arg0.bits[614]._super._super * Val(64));
  Val x1569 = (arg0.bits[615]._super._super * Val(128));
  Val x1570 = (arg0.bits[616]._super._super * Val(256));
  Val x1571 = (arg0.bits[617]._super._super * Val(512));
  Val x1572 = (arg0.bits[618]._super._super * Val(1024));
  Val x1573 = (arg0.bits[619]._super._super * Val(2048));
  Val x1574 = (arg0.bits[620]._super._super * Val(4096));
  Val x1575 = (arg0.bits[621]._super._super * Val(8192));
  Val x1576 = (arg0.bits[622]._super._super * Val(16384));
  Val x1577 = (arg0.bits[623]._super._super * Val(32768));
  Val x1578 = (arg0.bits[608]._super._super + x1563);
  Val x1579 = (((x1578 + x1564) + x1565) + x1566);
  Val x1580 = (((x1579 + x1567) + x1568) + x1569);
  Val x1581 = (((x1580 + x1570) + x1571) + x1572);
  Val x1582 = (((x1581 + x1573) + x1574) + x1575);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1583 = (arg0.bits[625]._super._super * Val(2));
  Val x1584 = (arg0.bits[626]._super._super * Val(4));
  Val x1585 = (arg0.bits[627]._super._super * Val(8));
  Val x1586 = (arg0.bits[628]._super._super * Val(16));
  Val x1587 = (arg0.bits[629]._super._super * Val(32));
  Val x1588 = (arg0.bits[630]._super._super * Val(64));
  Val x1589 = (arg0.bits[631]._super._super * Val(128));
  Val x1590 = (arg0.bits[632]._super._super * Val(256));
  Val x1591 = (arg0.bits[633]._super._super * Val(512));
  Val x1592 = (arg0.bits[634]._super._super * Val(1024));
  Val x1593 = (arg0.bits[635]._super._super * Val(2048));
  Val x1594 = (arg0.bits[636]._super._super * Val(4096));
  Val x1595 = (arg0.bits[637]._super._super * Val(8192));
  Val x1596 = (arg0.bits[638]._super._super * Val(16384));
  Val x1597 = (arg0.bits[639]._super._super * Val(32768));
  Val x1598 = (arg0.bits[624]._super._super + x1583);
  Val x1599 = (((x1598 + x1584) + x1585) + x1586);
  Val x1600 = (((x1599 + x1587) + x1588) + x1589);
  Val x1601 = (((x1600 + x1590) + x1591) + x1592);
  Val x1602 = (((x1601 + x1593) + x1594) + x1595);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1603 = (arg1.bits[641]._super._super * Val(2));
  Val x1604 = (arg1.bits[642]._super._super * Val(4));
  Val x1605 = (arg1.bits[643]._super._super * Val(8));
  Val x1606 = (arg1.bits[644]._super._super * Val(16));
  Val x1607 = (arg1.bits[645]._super._super * Val(32));
  Val x1608 = (arg1.bits[646]._super._super * Val(64));
  Val x1609 = (arg1.bits[647]._super._super * Val(128));
  Val x1610 = (arg1.bits[648]._super._super * Val(256));
  Val x1611 = (arg1.bits[649]._super._super * Val(512));
  Val x1612 = (arg1.bits[650]._super._super * Val(1024));
  Val x1613 = (arg1.bits[651]._super._super * Val(2048));
  Val x1614 = (arg1.bits[652]._super._super * Val(4096));
  Val x1615 = (arg1.bits[653]._super._super * Val(8192));
  Val x1616 = (arg1.bits[654]._super._super * Val(16384));
  Val x1617 = (arg1.bits[655]._super._super * Val(32768));
  Val x1618 = (arg1.bits[640]._super._super + x1603);
  Val x1619 = (((x1618 + x1604) + x1605) + x1606);
  Val x1620 = (((x1619 + x1607) + x1608) + x1609);
  Val x1621 = (((x1620 + x1610) + x1611) + x1612);
  Val x1622 = (((x1621 + x1613) + x1614) + x1615);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1623 = (arg1.bits[657]._super._super * Val(2));
  Val x1624 = (arg1.bits[658]._super._super * Val(4));
  Val x1625 = (arg1.bits[659]._super._super * Val(8));
  Val x1626 = (arg1.bits[660]._super._super * Val(16));
  Val x1627 = (arg1.bits[661]._super._super * Val(32));
  Val x1628 = (arg1.bits[662]._super._super * Val(64));
  Val x1629 = (arg1.bits[663]._super._super * Val(128));
  Val x1630 = (arg1.bits[664]._super._super * Val(256));
  Val x1631 = (arg1.bits[665]._super._super * Val(512));
  Val x1632 = (arg1.bits[666]._super._super * Val(1024));
  Val x1633 = (arg1.bits[667]._super._super * Val(2048));
  Val x1634 = (arg1.bits[668]._super._super * Val(4096));
  Val x1635 = (arg1.bits[669]._super._super * Val(8192));
  Val x1636 = (arg1.bits[670]._super._super * Val(16384));
  Val x1637 = (arg1.bits[671]._super._super * Val(32768));
  Val x1638 = (arg1.bits[656]._super._super + x1623);
  Val x1639 = (((x1638 + x1624) + x1625) + x1626);
  Val x1640 = (((x1639 + x1627) + x1628) + x1629);
  Val x1641 = (((x1640 + x1630) + x1631) + x1632);
  Val x1642 = (((x1641 + x1633) + x1634) + x1635);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1643 = (arg0.bits[641]._super._super * Val(2));
  Val x1644 = (arg0.bits[642]._super._super * Val(4));
  Val x1645 = (arg0.bits[643]._super._super * Val(8));
  Val x1646 = (arg0.bits[644]._super._super * Val(16));
  Val x1647 = (arg0.bits[645]._super._super * Val(32));
  Val x1648 = (arg0.bits[646]._super._super * Val(64));
  Val x1649 = (arg0.bits[647]._super._super * Val(128));
  Val x1650 = (arg0.bits[648]._super._super * Val(256));
  Val x1651 = (arg0.bits[649]._super._super * Val(512));
  Val x1652 = (arg0.bits[650]._super._super * Val(1024));
  Val x1653 = (arg0.bits[651]._super._super * Val(2048));
  Val x1654 = (arg0.bits[652]._super._super * Val(4096));
  Val x1655 = (arg0.bits[653]._super._super * Val(8192));
  Val x1656 = (arg0.bits[654]._super._super * Val(16384));
  Val x1657 = (arg0.bits[655]._super._super * Val(32768));
  Val x1658 = (arg0.bits[640]._super._super + x1643);
  Val x1659 = (((x1658 + x1644) + x1645) + x1646);
  Val x1660 = (((x1659 + x1647) + x1648) + x1649);
  Val x1661 = (((x1660 + x1650) + x1651) + x1652);
  Val x1662 = (((x1661 + x1653) + x1654) + x1655);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1663 = (arg0.bits[657]._super._super * Val(2));
  Val x1664 = (arg0.bits[658]._super._super * Val(4));
  Val x1665 = (arg0.bits[659]._super._super * Val(8));
  Val x1666 = (arg0.bits[660]._super._super * Val(16));
  Val x1667 = (arg0.bits[661]._super._super * Val(32));
  Val x1668 = (arg0.bits[662]._super._super * Val(64));
  Val x1669 = (arg0.bits[663]._super._super * Val(128));
  Val x1670 = (arg0.bits[664]._super._super * Val(256));
  Val x1671 = (arg0.bits[665]._super._super * Val(512));
  Val x1672 = (arg0.bits[666]._super._super * Val(1024));
  Val x1673 = (arg0.bits[667]._super._super * Val(2048));
  Val x1674 = (arg0.bits[668]._super._super * Val(4096));
  Val x1675 = (arg0.bits[669]._super._super * Val(8192));
  Val x1676 = (arg0.bits[670]._super._super * Val(16384));
  Val x1677 = (arg0.bits[671]._super._super * Val(32768));
  Val x1678 = (arg0.bits[656]._super._super + x1663);
  Val x1679 = (((x1678 + x1664) + x1665) + x1666);
  Val x1680 = (((x1679 + x1667) + x1668) + x1669);
  Val x1681 = (((x1680 + x1670) + x1671) + x1672);
  Val x1682 = (((x1681 + x1673) + x1674) + x1675);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1683 = (arg1.bits[673]._super._super * Val(2));
  Val x1684 = (arg1.bits[674]._super._super * Val(4));
  Val x1685 = (arg1.bits[675]._super._super * Val(8));
  Val x1686 = (arg1.bits[676]._super._super * Val(16));
  Val x1687 = (arg1.bits[677]._super._super * Val(32));
  Val x1688 = (arg1.bits[678]._super._super * Val(64));
  Val x1689 = (arg1.bits[679]._super._super * Val(128));
  Val x1690 = (arg1.bits[680]._super._super * Val(256));
  Val x1691 = (arg1.bits[681]._super._super * Val(512));
  Val x1692 = (arg1.bits[682]._super._super * Val(1024));
  Val x1693 = (arg1.bits[683]._super._super * Val(2048));
  Val x1694 = (arg1.bits[684]._super._super * Val(4096));
  Val x1695 = (arg1.bits[685]._super._super * Val(8192));
  Val x1696 = (arg1.bits[686]._super._super * Val(16384));
  Val x1697 = (arg1.bits[687]._super._super * Val(32768));
  Val x1698 = (arg1.bits[672]._super._super + x1683);
  Val x1699 = (((x1698 + x1684) + x1685) + x1686);
  Val x1700 = (((x1699 + x1687) + x1688) + x1689);
  Val x1701 = (((x1700 + x1690) + x1691) + x1692);
  Val x1702 = (((x1701 + x1693) + x1694) + x1695);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1703 = (arg1.bits[689]._super._super * Val(2));
  Val x1704 = (arg1.bits[690]._super._super * Val(4));
  Val x1705 = (arg1.bits[691]._super._super * Val(8));
  Val x1706 = (arg1.bits[692]._super._super * Val(16));
  Val x1707 = (arg1.bits[693]._super._super * Val(32));
  Val x1708 = (arg1.bits[694]._super._super * Val(64));
  Val x1709 = (arg1.bits[695]._super._super * Val(128));
  Val x1710 = (arg1.bits[696]._super._super * Val(256));
  Val x1711 = (arg1.bits[697]._super._super * Val(512));
  Val x1712 = (arg1.bits[698]._super._super * Val(1024));
  Val x1713 = (arg1.bits[699]._super._super * Val(2048));
  Val x1714 = (arg1.bits[700]._super._super * Val(4096));
  Val x1715 = (arg1.bits[701]._super._super * Val(8192));
  Val x1716 = (arg1.bits[702]._super._super * Val(16384));
  Val x1717 = (arg1.bits[703]._super._super * Val(32768));
  Val x1718 = (arg1.bits[688]._super._super + x1703);
  Val x1719 = (((x1718 + x1704) + x1705) + x1706);
  Val x1720 = (((x1719 + x1707) + x1708) + x1709);
  Val x1721 = (((x1720 + x1710) + x1711) + x1712);
  Val x1722 = (((x1721 + x1713) + x1714) + x1715);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1723 = (arg0.bits[673]._super._super * Val(2));
  Val x1724 = (arg0.bits[674]._super._super * Val(4));
  Val x1725 = (arg0.bits[675]._super._super * Val(8));
  Val x1726 = (arg0.bits[676]._super._super * Val(16));
  Val x1727 = (arg0.bits[677]._super._super * Val(32));
  Val x1728 = (arg0.bits[678]._super._super * Val(64));
  Val x1729 = (arg0.bits[679]._super._super * Val(128));
  Val x1730 = (arg0.bits[680]._super._super * Val(256));
  Val x1731 = (arg0.bits[681]._super._super * Val(512));
  Val x1732 = (arg0.bits[682]._super._super * Val(1024));
  Val x1733 = (arg0.bits[683]._super._super * Val(2048));
  Val x1734 = (arg0.bits[684]._super._super * Val(4096));
  Val x1735 = (arg0.bits[685]._super._super * Val(8192));
  Val x1736 = (arg0.bits[686]._super._super * Val(16384));
  Val x1737 = (arg0.bits[687]._super._super * Val(32768));
  Val x1738 = (arg0.bits[672]._super._super + x1723);
  Val x1739 = (((x1738 + x1724) + x1725) + x1726);
  Val x1740 = (((x1739 + x1727) + x1728) + x1729);
  Val x1741 = (((x1740 + x1730) + x1731) + x1732);
  Val x1742 = (((x1741 + x1733) + x1734) + x1735);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1743 = (arg0.bits[689]._super._super * Val(2));
  Val x1744 = (arg0.bits[690]._super._super * Val(4));
  Val x1745 = (arg0.bits[691]._super._super * Val(8));
  Val x1746 = (arg0.bits[692]._super._super * Val(16));
  Val x1747 = (arg0.bits[693]._super._super * Val(32));
  Val x1748 = (arg0.bits[694]._super._super * Val(64));
  Val x1749 = (arg0.bits[695]._super._super * Val(128));
  Val x1750 = (arg0.bits[696]._super._super * Val(256));
  Val x1751 = (arg0.bits[697]._super._super * Val(512));
  Val x1752 = (arg0.bits[698]._super._super * Val(1024));
  Val x1753 = (arg0.bits[699]._super._super * Val(2048));
  Val x1754 = (arg0.bits[700]._super._super * Val(4096));
  Val x1755 = (arg0.bits[701]._super._super * Val(8192));
  Val x1756 = (arg0.bits[702]._super._super * Val(16384));
  Val x1757 = (arg0.bits[703]._super._super * Val(32768));
  Val x1758 = (arg0.bits[688]._super._super + x1743);
  Val x1759 = (((x1758 + x1744) + x1745) + x1746);
  Val x1760 = (((x1759 + x1747) + x1748) + x1749);
  Val x1761 = (((x1760 + x1750) + x1751) + x1752);
  Val x1762 = (((x1761 + x1753) + x1754) + x1755);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1763 = (arg1.bits[705]._super._super * Val(2));
  Val x1764 = (arg1.bits[706]._super._super * Val(4));
  Val x1765 = (arg1.bits[707]._super._super * Val(8));
  Val x1766 = (arg1.bits[708]._super._super * Val(16));
  Val x1767 = (arg1.bits[709]._super._super * Val(32));
  Val x1768 = (arg1.bits[710]._super._super * Val(64));
  Val x1769 = (arg1.bits[711]._super._super * Val(128));
  Val x1770 = (arg1.bits[712]._super._super * Val(256));
  Val x1771 = (arg1.bits[713]._super._super * Val(512));
  Val x1772 = (arg1.bits[714]._super._super * Val(1024));
  Val x1773 = (arg1.bits[715]._super._super * Val(2048));
  Val x1774 = (arg1.bits[716]._super._super * Val(4096));
  Val x1775 = (arg1.bits[717]._super._super * Val(8192));
  Val x1776 = (arg1.bits[718]._super._super * Val(16384));
  Val x1777 = (arg1.bits[719]._super._super * Val(32768));
  Val x1778 = (arg1.bits[704]._super._super + x1763);
  Val x1779 = (((x1778 + x1764) + x1765) + x1766);
  Val x1780 = (((x1779 + x1767) + x1768) + x1769);
  Val x1781 = (((x1780 + x1770) + x1771) + x1772);
  Val x1782 = (((x1781 + x1773) + x1774) + x1775);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1783 = (arg1.bits[721]._super._super * Val(2));
  Val x1784 = (arg1.bits[722]._super._super * Val(4));
  Val x1785 = (arg1.bits[723]._super._super * Val(8));
  Val x1786 = (arg1.bits[724]._super._super * Val(16));
  Val x1787 = (arg1.bits[725]._super._super * Val(32));
  Val x1788 = (arg1.bits[726]._super._super * Val(64));
  Val x1789 = (arg1.bits[727]._super._super * Val(128));
  Val x1790 = (arg1.bits[728]._super._super * Val(256));
  Val x1791 = (arg1.bits[729]._super._super * Val(512));
  Val x1792 = (arg1.bits[730]._super._super * Val(1024));
  Val x1793 = (arg1.bits[731]._super._super * Val(2048));
  Val x1794 = (arg1.bits[732]._super._super * Val(4096));
  Val x1795 = (arg1.bits[733]._super._super * Val(8192));
  Val x1796 = (arg1.bits[734]._super._super * Val(16384));
  Val x1797 = (arg1.bits[735]._super._super * Val(32768));
  Val x1798 = (arg1.bits[720]._super._super + x1783);
  Val x1799 = (((x1798 + x1784) + x1785) + x1786);
  Val x1800 = (((x1799 + x1787) + x1788) + x1789);
  Val x1801 = (((x1800 + x1790) + x1791) + x1792);
  Val x1802 = (((x1801 + x1793) + x1794) + x1795);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1803 = (arg0.bits[705]._super._super * Val(2));
  Val x1804 = (arg0.bits[706]._super._super * Val(4));
  Val x1805 = (arg0.bits[707]._super._super * Val(8));
  Val x1806 = (arg0.bits[708]._super._super * Val(16));
  Val x1807 = (arg0.bits[709]._super._super * Val(32));
  Val x1808 = (arg0.bits[710]._super._super * Val(64));
  Val x1809 = (arg0.bits[711]._super._super * Val(128));
  Val x1810 = (arg0.bits[712]._super._super * Val(256));
  Val x1811 = (arg0.bits[713]._super._super * Val(512));
  Val x1812 = (arg0.bits[714]._super._super * Val(1024));
  Val x1813 = (arg0.bits[715]._super._super * Val(2048));
  Val x1814 = (arg0.bits[716]._super._super * Val(4096));
  Val x1815 = (arg0.bits[717]._super._super * Val(8192));
  Val x1816 = (arg0.bits[718]._super._super * Val(16384));
  Val x1817 = (arg0.bits[719]._super._super * Val(32768));
  Val x1818 = (arg0.bits[704]._super._super + x1803);
  Val x1819 = (((x1818 + x1804) + x1805) + x1806);
  Val x1820 = (((x1819 + x1807) + x1808) + x1809);
  Val x1821 = (((x1820 + x1810) + x1811) + x1812);
  Val x1822 = (((x1821 + x1813) + x1814) + x1815);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1823 = (arg0.bits[721]._super._super * Val(2));
  Val x1824 = (arg0.bits[722]._super._super * Val(4));
  Val x1825 = (arg0.bits[723]._super._super * Val(8));
  Val x1826 = (arg0.bits[724]._super._super * Val(16));
  Val x1827 = (arg0.bits[725]._super._super * Val(32));
  Val x1828 = (arg0.bits[726]._super._super * Val(64));
  Val x1829 = (arg0.bits[727]._super._super * Val(128));
  Val x1830 = (arg0.bits[728]._super._super * Val(256));
  Val x1831 = (arg0.bits[729]._super._super * Val(512));
  Val x1832 = (arg0.bits[730]._super._super * Val(1024));
  Val x1833 = (arg0.bits[731]._super._super * Val(2048));
  Val x1834 = (arg0.bits[732]._super._super * Val(4096));
  Val x1835 = (arg0.bits[733]._super._super * Val(8192));
  Val x1836 = (arg0.bits[734]._super._super * Val(16384));
  Val x1837 = (arg0.bits[735]._super._super * Val(32768));
  Val x1838 = (arg0.bits[720]._super._super + x1823);
  Val x1839 = (((x1838 + x1824) + x1825) + x1826);
  Val x1840 = (((x1839 + x1827) + x1828) + x1829);
  Val x1841 = (((x1840 + x1830) + x1831) + x1832);
  Val x1842 = (((x1841 + x1833) + x1834) + x1835);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1843 = (arg1.bits[737]._super._super * Val(2));
  Val x1844 = (arg1.bits[738]._super._super * Val(4));
  Val x1845 = (arg1.bits[739]._super._super * Val(8));
  Val x1846 = (arg1.bits[740]._super._super * Val(16));
  Val x1847 = (arg1.bits[741]._super._super * Val(32));
  Val x1848 = (arg1.bits[742]._super._super * Val(64));
  Val x1849 = (arg1.bits[743]._super._super * Val(128));
  Val x1850 = (arg1.bits[744]._super._super * Val(256));
  Val x1851 = (arg1.bits[745]._super._super * Val(512));
  Val x1852 = (arg1.bits[746]._super._super * Val(1024));
  Val x1853 = (arg1.bits[747]._super._super * Val(2048));
  Val x1854 = (arg1.bits[748]._super._super * Val(4096));
  Val x1855 = (arg1.bits[749]._super._super * Val(8192));
  Val x1856 = (arg1.bits[750]._super._super * Val(16384));
  Val x1857 = (arg1.bits[751]._super._super * Val(32768));
  Val x1858 = (arg1.bits[736]._super._super + x1843);
  Val x1859 = (((x1858 + x1844) + x1845) + x1846);
  Val x1860 = (((x1859 + x1847) + x1848) + x1849);
  Val x1861 = (((x1860 + x1850) + x1851) + x1852);
  Val x1862 = (((x1861 + x1853) + x1854) + x1855);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1863 = (arg1.bits[753]._super._super * Val(2));
  Val x1864 = (arg1.bits[754]._super._super * Val(4));
  Val x1865 = (arg1.bits[755]._super._super * Val(8));
  Val x1866 = (arg1.bits[756]._super._super * Val(16));
  Val x1867 = (arg1.bits[757]._super._super * Val(32));
  Val x1868 = (arg1.bits[758]._super._super * Val(64));
  Val x1869 = (arg1.bits[759]._super._super * Val(128));
  Val x1870 = (arg1.bits[760]._super._super * Val(256));
  Val x1871 = (arg1.bits[761]._super._super * Val(512));
  Val x1872 = (arg1.bits[762]._super._super * Val(1024));
  Val x1873 = (arg1.bits[763]._super._super * Val(2048));
  Val x1874 = (arg1.bits[764]._super._super * Val(4096));
  Val x1875 = (arg1.bits[765]._super._super * Val(8192));
  Val x1876 = (arg1.bits[766]._super._super * Val(16384));
  Val x1877 = (arg1.bits[767]._super._super * Val(32768));
  Val x1878 = (arg1.bits[752]._super._super + x1863);
  Val x1879 = (((x1878 + x1864) + x1865) + x1866);
  Val x1880 = (((x1879 + x1867) + x1868) + x1869);
  Val x1881 = (((x1880 + x1870) + x1871) + x1872);
  Val x1882 = (((x1881 + x1873) + x1874) + x1875);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1883 = (arg0.bits[737]._super._super * Val(2));
  Val x1884 = (arg0.bits[738]._super._super * Val(4));
  Val x1885 = (arg0.bits[739]._super._super * Val(8));
  Val x1886 = (arg0.bits[740]._super._super * Val(16));
  Val x1887 = (arg0.bits[741]._super._super * Val(32));
  Val x1888 = (arg0.bits[742]._super._super * Val(64));
  Val x1889 = (arg0.bits[743]._super._super * Val(128));
  Val x1890 = (arg0.bits[744]._super._super * Val(256));
  Val x1891 = (arg0.bits[745]._super._super * Val(512));
  Val x1892 = (arg0.bits[746]._super._super * Val(1024));
  Val x1893 = (arg0.bits[747]._super._super * Val(2048));
  Val x1894 = (arg0.bits[748]._super._super * Val(4096));
  Val x1895 = (arg0.bits[749]._super._super * Val(8192));
  Val x1896 = (arg0.bits[750]._super._super * Val(16384));
  Val x1897 = (arg0.bits[751]._super._super * Val(32768));
  Val x1898 = (arg0.bits[736]._super._super + x1883);
  Val x1899 = (((x1898 + x1884) + x1885) + x1886);
  Val x1900 = (((x1899 + x1887) + x1888) + x1889);
  Val x1901 = (((x1900 + x1890) + x1891) + x1892);
  Val x1902 = (((x1901 + x1893) + x1894) + x1895);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1903 = (arg0.bits[753]._super._super * Val(2));
  Val x1904 = (arg0.bits[754]._super._super * Val(4));
  Val x1905 = (arg0.bits[755]._super._super * Val(8));
  Val x1906 = (arg0.bits[756]._super._super * Val(16));
  Val x1907 = (arg0.bits[757]._super._super * Val(32));
  Val x1908 = (arg0.bits[758]._super._super * Val(64));
  Val x1909 = (arg0.bits[759]._super._super * Val(128));
  Val x1910 = (arg0.bits[760]._super._super * Val(256));
  Val x1911 = (arg0.bits[761]._super._super * Val(512));
  Val x1912 = (arg0.bits[762]._super._super * Val(1024));
  Val x1913 = (arg0.bits[763]._super._super * Val(2048));
  Val x1914 = (arg0.bits[764]._super._super * Val(4096));
  Val x1915 = (arg0.bits[765]._super._super * Val(8192));
  Val x1916 = (arg0.bits[766]._super._super * Val(16384));
  Val x1917 = (arg0.bits[767]._super._super * Val(32768));
  Val x1918 = (arg0.bits[752]._super._super + x1903);
  Val x1919 = (((x1918 + x1904) + x1905) + x1906);
  Val x1920 = (((x1919 + x1907) + x1908) + x1909);
  Val x1921 = (((x1920 + x1910) + x1911) + x1912);
  Val x1922 = (((x1921 + x1913) + x1914) + x1915);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:376)
  Val x1923 = (arg1.bits[769]._super._super * Val(2));
  Val x1924 = (arg1.bits[770]._super._super * Val(4));
  Val x1925 = (arg1.bits[771]._super._super * Val(8));
  Val x1926 = (arg1.bits[772]._super._super * Val(16));
  Val x1927 = (arg1.bits[773]._super._super * Val(32));
  Val x1928 = (arg1.bits[774]._super._super * Val(64));
  Val x1929 = (arg1.bits[775]._super._super * Val(128));
  Val x1930 = (arg1.bits[776]._super._super * Val(256));
  Val x1931 = (arg1.bits[777]._super._super * Val(512));
  Val x1932 = (arg1.bits[778]._super._super * Val(1024));
  Val x1933 = (arg1.bits[779]._super._super * Val(2048));
  Val x1934 = (arg1.bits[780]._super._super * Val(4096));
  Val x1935 = (arg1.bits[781]._super._super * Val(8192));
  Val x1936 = (arg1.bits[782]._super._super * Val(16384));
  Val x1937 = (arg1.bits[783]._super._super * Val(32768));
  Val x1938 = (arg1.bits[768]._super._super + x1923);
  Val x1939 = (((x1938 + x1924) + x1925) + x1926);
  Val x1940 = (((x1939 + x1927) + x1928) + x1929);
  Val x1941 = (((x1940 + x1930) + x1931) + x1932);
  Val x1942 = (((x1941 + x1933) + x1934) + x1935);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:377)
  Val x1943 = (arg1.bits[785]._super._super * Val(2));
  Val x1944 = (arg1.bits[786]._super._super * Val(4));
  Val x1945 = (arg1.bits[787]._super._super * Val(8));
  Val x1946 = (arg1.bits[788]._super._super * Val(16));
  Val x1947 = (arg1.bits[789]._super._super * Val(32));
  Val x1948 = (arg1.bits[790]._super._super * Val(64));
  Val x1949 = (arg1.bits[791]._super._super * Val(128));
  Val x1950 = (arg1.bits[792]._super._super * Val(256));
  Val x1951 = (arg1.bits[793]._super._super * Val(512));
  Val x1952 = (arg1.bits[794]._super._super * Val(1024));
  Val x1953 = (arg1.bits[795]._super._super * Val(2048));
  Val x1954 = (arg1.bits[796]._super._super * Val(4096));
  Val x1955 = (arg1.bits[797]._super._super * Val(8192));
  Val x1956 = (arg1.bits[798]._super._super * Val(16384));
  Val x1957 = (arg1.bits[799]._super._super * Val(32768));
  Val x1958 = (arg1.bits[784]._super._super + x1943);
  Val x1959 = (((x1958 + x1944) + x1945) + x1946);
  Val x1960 = (((x1959 + x1947) + x1948) + x1949);
  Val x1961 = (((x1960 + x1950) + x1951) + x1952);
  Val x1962 = (((x1961 + x1953) + x1954) + x1955);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:378)
  Val x1963 = (arg0.bits[769]._super._super * Val(2));
  Val x1964 = (arg0.bits[770]._super._super * Val(4));
  Val x1965 = (arg0.bits[771]._super._super * Val(8));
  Val x1966 = (arg0.bits[772]._super._super * Val(16));
  Val x1967 = (arg0.bits[773]._super._super * Val(32));
  Val x1968 = (arg0.bits[774]._super._super * Val(64));
  Val x1969 = (arg0.bits[775]._super._super * Val(128));
  Val x1970 = (arg0.bits[776]._super._super * Val(256));
  Val x1971 = (arg0.bits[777]._super._super * Val(512));
  Val x1972 = (arg0.bits[778]._super._super * Val(1024));
  Val x1973 = (arg0.bits[779]._super._super * Val(2048));
  Val x1974 = (arg0.bits[780]._super._super * Val(4096));
  Val x1975 = (arg0.bits[781]._super._super * Val(8192));
  Val x1976 = (arg0.bits[782]._super._super * Val(16384));
  Val x1977 = (arg0.bits[783]._super._super * Val(32768));
  Val x1978 = (arg0.bits[768]._super._super + x1963);
  Val x1979 = (((x1978 + x1964) + x1965) + x1966);
  Val x1980 = (((x1979 + x1967) + x1968) + x1969);
  Val x1981 = (((x1980 + x1970) + x1971) + x1972);
  Val x1982 = (((x1981 + x1973) + x1974) + x1975);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:379)
  Val x1983 = (arg0.bits[785]._super._super * Val(2));
  Val x1984 = (arg0.bits[786]._super._super * Val(4));
  Val x1985 = (arg0.bits[787]._super._super * Val(8));
  Val x1986 = (arg0.bits[788]._super._super * Val(16));
  Val x1987 = (arg0.bits[789]._super._super * Val(32));
  Val x1988 = (arg0.bits[790]._super._super * Val(64));
  Val x1989 = (arg0.bits[791]._super._super * Val(128));
  Val x1990 = (arg0.bits[792]._super._super * Val(256));
  Val x1991 = (arg0.bits[793]._super._super * Val(512));
  Val x1992 = (arg0.bits[794]._super._super * Val(1024));
  Val x1993 = (arg0.bits[795]._super._super * Val(2048));
  Val x1994 = (arg0.bits[796]._super._super * Val(4096));
  Val x1995 = (arg0.bits[797]._super._super * Val(8192));
  Val x1996 = (arg0.bits[798]._super._super * Val(16384));
  Val x1997 = (arg0.bits[799]._super._super * Val(32768));
  Val x1998 = (arg0.bits[784]._super._super + x1983);
  Val x1999 = (((x1998 + x1984) + x1985) + x1986);
  Val x2000 = (((x1999 + x1987) + x1988) + x1989);
  Val x2001 = (((x2000 + x1990) + x1991) + x1992);
  Val x2002 = (((x2001 + x1993) + x1994) + x1995);
  // WriteCycle(zirgen/circuit/keccak2/top.zir:370)
  Val16Array x2003 = Val16Array{arg0.sflat[0]._super,
                                arg0.sflat[1]._super,
                                arg0.sflat[2]._super,
                                arg0.sflat[3]._super,
                                arg0.sflat[4]._super,
                                arg0.sflat[5]._super,
                                arg0.sflat[6]._super,
                                arg0.sflat[7]._super,
                                arg0.sflat[8]._super,
                                arg0.sflat[9]._super,
                                arg0.sflat[10]._super,
                                arg0.sflat[11]._super,
                                arg0.sflat[12]._super,
                                arg0.sflat[13]._super,
                                arg0.sflat[14]._super,
                                arg0.sflat[15]._super};
  // WriteCycle(zirgen/circuit/keccak2/top.zir:382)
  UnpackReg_800__16_Struct x2004 = exec_SFlatToBits(ctx, x2003, LAYOUT_LOOKUP(layout2, bits));
  Val800Array x2005 = Val800Array{x2004._super[0]._super._super,   x2004._super[1]._super._super,
                                  x2004._super[2]._super._super,   x2004._super[3]._super._super,
                                  x2004._super[4]._super._super,   x2004._super[5]._super._super,
                                  x2004._super[6]._super._super,   x2004._super[7]._super._super,
                                  x2004._super[8]._super._super,   x2004._super[9]._super._super,
                                  x2004._super[10]._super._super,  x2004._super[11]._super._super,
                                  x2004._super[12]._super._super,  x2004._super[13]._super._super,
                                  x2004._super[14]._super._super,  x2004._super[15]._super._super,
                                  x2004._super[16]._super._super,  x2004._super[17]._super._super,
                                  x2004._super[18]._super._super,  x2004._super[19]._super._super,
                                  x2004._super[20]._super._super,  x2004._super[21]._super._super,
                                  x2004._super[22]._super._super,  x2004._super[23]._super._super,
                                  x2004._super[24]._super._super,  x2004._super[25]._super._super,
                                  x2004._super[26]._super._super,  x2004._super[27]._super._super,
                                  x2004._super[28]._super._super,  x2004._super[29]._super._super,
                                  x2004._super[30]._super._super,  x2004._super[31]._super._super,
                                  x2004._super[32]._super._super,  x2004._super[33]._super._super,
                                  x2004._super[34]._super._super,  x2004._super[35]._super._super,
                                  x2004._super[36]._super._super,  x2004._super[37]._super._super,
                                  x2004._super[38]._super._super,  x2004._super[39]._super._super,
                                  x2004._super[40]._super._super,  x2004._super[41]._super._super,
                                  x2004._super[42]._super._super,  x2004._super[43]._super._super,
                                  x2004._super[44]._super._super,  x2004._super[45]._super._super,
                                  x2004._super[46]._super._super,  x2004._super[47]._super._super,
                                  x2004._super[48]._super._super,  x2004._super[49]._super._super,
                                  x2004._super[50]._super._super,  x2004._super[51]._super._super,
                                  x2004._super[52]._super._super,  x2004._super[53]._super._super,
                                  x2004._super[54]._super._super,  x2004._super[55]._super._super,
                                  x2004._super[56]._super._super,  x2004._super[57]._super._super,
                                  x2004._super[58]._super._super,  x2004._super[59]._super._super,
                                  x2004._super[60]._super._super,  x2004._super[61]._super._super,
                                  x2004._super[62]._super._super,  x2004._super[63]._super._super,
                                  x2004._super[64]._super._super,  x2004._super[65]._super._super,
                                  x2004._super[66]._super._super,  x2004._super[67]._super._super,
                                  x2004._super[68]._super._super,  x2004._super[69]._super._super,
                                  x2004._super[70]._super._super,  x2004._super[71]._super._super,
                                  x2004._super[72]._super._super,  x2004._super[73]._super._super,
                                  x2004._super[74]._super._super,  x2004._super[75]._super._super,
                                  x2004._super[76]._super._super,  x2004._super[77]._super._super,
                                  x2004._super[78]._super._super,  x2004._super[79]._super._super,
                                  x2004._super[80]._super._super,  x2004._super[81]._super._super,
                                  x2004._super[82]._super._super,  x2004._super[83]._super._super,
                                  x2004._super[84]._super._super,  x2004._super[85]._super._super,
                                  x2004._super[86]._super._super,  x2004._super[87]._super._super,
                                  x2004._super[88]._super._super,  x2004._super[89]._super._super,
                                  x2004._super[90]._super._super,  x2004._super[91]._super._super,
                                  x2004._super[92]._super._super,  x2004._super[93]._super._super,
                                  x2004._super[94]._super._super,  x2004._super[95]._super._super,
                                  x2004._super[96]._super._super,  x2004._super[97]._super._super,
                                  x2004._super[98]._super._super,  x2004._super[99]._super._super,
                                  x2004._super[100]._super._super, x2004._super[101]._super._super,
                                  x2004._super[102]._super._super, x2004._super[103]._super._super,
                                  x2004._super[104]._super._super, x2004._super[105]._super._super,
                                  x2004._super[106]._super._super, x2004._super[107]._super._super,
                                  x2004._super[108]._super._super, x2004._super[109]._super._super,
                                  x2004._super[110]._super._super, x2004._super[111]._super._super,
                                  x2004._super[112]._super._super, x2004._super[113]._super._super,
                                  x2004._super[114]._super._super, x2004._super[115]._super._super,
                                  x2004._super[116]._super._super, x2004._super[117]._super._super,
                                  x2004._super[118]._super._super, x2004._super[119]._super._super,
                                  x2004._super[120]._super._super, x2004._super[121]._super._super,
                                  x2004._super[122]._super._super, x2004._super[123]._super._super,
                                  x2004._super[124]._super._super, x2004._super[125]._super._super,
                                  x2004._super[126]._super._super, x2004._super[127]._super._super,
                                  x2004._super[128]._super._super, x2004._super[129]._super._super,
                                  x2004._super[130]._super._super, x2004._super[131]._super._super,
                                  x2004._super[132]._super._super, x2004._super[133]._super._super,
                                  x2004._super[134]._super._super, x2004._super[135]._super._super,
                                  x2004._super[136]._super._super, x2004._super[137]._super._super,
                                  x2004._super[138]._super._super, x2004._super[139]._super._super,
                                  x2004._super[140]._super._super, x2004._super[141]._super._super,
                                  x2004._super[142]._super._super, x2004._super[143]._super._super,
                                  x2004._super[144]._super._super, x2004._super[145]._super._super,
                                  x2004._super[146]._super._super, x2004._super[147]._super._super,
                                  x2004._super[148]._super._super, x2004._super[149]._super._super,
                                  x2004._super[150]._super._super, x2004._super[151]._super._super,
                                  x2004._super[152]._super._super, x2004._super[153]._super._super,
                                  x2004._super[154]._super._super, x2004._super[155]._super._super,
                                  x2004._super[156]._super._super, x2004._super[157]._super._super,
                                  x2004._super[158]._super._super, x2004._super[159]._super._super,
                                  x2004._super[160]._super._super, x2004._super[161]._super._super,
                                  x2004._super[162]._super._super, x2004._super[163]._super._super,
                                  x2004._super[164]._super._super, x2004._super[165]._super._super,
                                  x2004._super[166]._super._super, x2004._super[167]._super._super,
                                  x2004._super[168]._super._super, x2004._super[169]._super._super,
                                  x2004._super[170]._super._super, x2004._super[171]._super._super,
                                  x2004._super[172]._super._super, x2004._super[173]._super._super,
                                  x2004._super[174]._super._super, x2004._super[175]._super._super,
                                  x2004._super[176]._super._super, x2004._super[177]._super._super,
                                  x2004._super[178]._super._super, x2004._super[179]._super._super,
                                  x2004._super[180]._super._super, x2004._super[181]._super._super,
                                  x2004._super[182]._super._super, x2004._super[183]._super._super,
                                  x2004._super[184]._super._super, x2004._super[185]._super._super,
                                  x2004._super[186]._super._super, x2004._super[187]._super._super,
                                  x2004._super[188]._super._super, x2004._super[189]._super._super,
                                  x2004._super[190]._super._super, x2004._super[191]._super._super,
                                  x2004._super[192]._super._super, x2004._super[193]._super._super,
                                  x2004._super[194]._super._super, x2004._super[195]._super._super,
                                  x2004._super[196]._super._super, x2004._super[197]._super._super,
                                  x2004._super[198]._super._super, x2004._super[199]._super._super,
                                  x2004._super[200]._super._super, x2004._super[201]._super._super,
                                  x2004._super[202]._super._super, x2004._super[203]._super._super,
                                  x2004._super[204]._super._super, x2004._super[205]._super._super,
                                  x2004._super[206]._super._super, x2004._super[207]._super._super,
                                  x2004._super[208]._super._super, x2004._super[209]._super._super,
                                  x2004._super[210]._super._super, x2004._super[211]._super._super,
                                  x2004._super[212]._super._super, x2004._super[213]._super._super,
                                  x2004._super[214]._super._super, x2004._super[215]._super._super,
                                  x2004._super[216]._super._super, x2004._super[217]._super._super,
                                  x2004._super[218]._super._super, x2004._super[219]._super._super,
                                  x2004._super[220]._super._super, x2004._super[221]._super._super,
                                  x2004._super[222]._super._super, x2004._super[223]._super._super,
                                  x2004._super[224]._super._super, x2004._super[225]._super._super,
                                  x2004._super[226]._super._super, x2004._super[227]._super._super,
                                  x2004._super[228]._super._super, x2004._super[229]._super._super,
                                  x2004._super[230]._super._super, x2004._super[231]._super._super,
                                  x2004._super[232]._super._super, x2004._super[233]._super._super,
                                  x2004._super[234]._super._super, x2004._super[235]._super._super,
                                  x2004._super[236]._super._super, x2004._super[237]._super._super,
                                  x2004._super[238]._super._super, x2004._super[239]._super._super,
                                  x2004._super[240]._super._super, x2004._super[241]._super._super,
                                  x2004._super[242]._super._super, x2004._super[243]._super._super,
                                  x2004._super[244]._super._super, x2004._super[245]._super._super,
                                  x2004._super[246]._super._super, x2004._super[247]._super._super,
                                  x2004._super[248]._super._super, x2004._super[249]._super._super,
                                  x2004._super[250]._super._super, x2004._super[251]._super._super,
                                  x2004._super[252]._super._super, x2004._super[253]._super._super,
                                  x2004._super[254]._super._super, x2004._super[255]._super._super,
                                  x2004._super[256]._super._super, x2004._super[257]._super._super,
                                  x2004._super[258]._super._super, x2004._super[259]._super._super,
                                  x2004._super[260]._super._super, x2004._super[261]._super._super,
                                  x2004._super[262]._super._super, x2004._super[263]._super._super,
                                  x2004._super[264]._super._super, x2004._super[265]._super._super,
                                  x2004._super[266]._super._super, x2004._super[267]._super._super,
                                  x2004._super[268]._super._super, x2004._super[269]._super._super,
                                  x2004._super[270]._super._super, x2004._super[271]._super._super,
                                  x2004._super[272]._super._super, x2004._super[273]._super._super,
                                  x2004._super[274]._super._super, x2004._super[275]._super._super,
                                  x2004._super[276]._super._super, x2004._super[277]._super._super,
                                  x2004._super[278]._super._super, x2004._super[279]._super._super,
                                  x2004._super[280]._super._super, x2004._super[281]._super._super,
                                  x2004._super[282]._super._super, x2004._super[283]._super._super,
                                  x2004._super[284]._super._super, x2004._super[285]._super._super,
                                  x2004._super[286]._super._super, x2004._super[287]._super._super,
                                  x2004._super[288]._super._super, x2004._super[289]._super._super,
                                  x2004._super[290]._super._super, x2004._super[291]._super._super,
                                  x2004._super[292]._super._super, x2004._super[293]._super._super,
                                  x2004._super[294]._super._super, x2004._super[295]._super._super,
                                  x2004._super[296]._super._super, x2004._super[297]._super._super,
                                  x2004._super[298]._super._super, x2004._super[299]._super._super,
                                  x2004._super[300]._super._super, x2004._super[301]._super._super,
                                  x2004._super[302]._super._super, x2004._super[303]._super._super,
                                  x2004._super[304]._super._super, x2004._super[305]._super._super,
                                  x2004._super[306]._super._super, x2004._super[307]._super._super,
                                  x2004._super[308]._super._super, x2004._super[309]._super._super,
                                  x2004._super[310]._super._super, x2004._super[311]._super._super,
                                  x2004._super[312]._super._super, x2004._super[313]._super._super,
                                  x2004._super[314]._super._super, x2004._super[315]._super._super,
                                  x2004._super[316]._super._super, x2004._super[317]._super._super,
                                  x2004._super[318]._super._super, x2004._super[319]._super._super,
                                  x2004._super[320]._super._super, x2004._super[321]._super._super,
                                  x2004._super[322]._super._super, x2004._super[323]._super._super,
                                  x2004._super[324]._super._super, x2004._super[325]._super._super,
                                  x2004._super[326]._super._super, x2004._super[327]._super._super,
                                  x2004._super[328]._super._super, x2004._super[329]._super._super,
                                  x2004._super[330]._super._super, x2004._super[331]._super._super,
                                  x2004._super[332]._super._super, x2004._super[333]._super._super,
                                  x2004._super[334]._super._super, x2004._super[335]._super._super,
                                  x2004._super[336]._super._super, x2004._super[337]._super._super,
                                  x2004._super[338]._super._super, x2004._super[339]._super._super,
                                  x2004._super[340]._super._super, x2004._super[341]._super._super,
                                  x2004._super[342]._super._super, x2004._super[343]._super._super,
                                  x2004._super[344]._super._super, x2004._super[345]._super._super,
                                  x2004._super[346]._super._super, x2004._super[347]._super._super,
                                  x2004._super[348]._super._super, x2004._super[349]._super._super,
                                  x2004._super[350]._super._super, x2004._super[351]._super._super,
                                  x2004._super[352]._super._super, x2004._super[353]._super._super,
                                  x2004._super[354]._super._super, x2004._super[355]._super._super,
                                  x2004._super[356]._super._super, x2004._super[357]._super._super,
                                  x2004._super[358]._super._super, x2004._super[359]._super._super,
                                  x2004._super[360]._super._super, x2004._super[361]._super._super,
                                  x2004._super[362]._super._super, x2004._super[363]._super._super,
                                  x2004._super[364]._super._super, x2004._super[365]._super._super,
                                  x2004._super[366]._super._super, x2004._super[367]._super._super,
                                  x2004._super[368]._super._super, x2004._super[369]._super._super,
                                  x2004._super[370]._super._super, x2004._super[371]._super._super,
                                  x2004._super[372]._super._super, x2004._super[373]._super._super,
                                  x2004._super[374]._super._super, x2004._super[375]._super._super,
                                  x2004._super[376]._super._super, x2004._super[377]._super._super,
                                  x2004._super[378]._super._super, x2004._super[379]._super._super,
                                  x2004._super[380]._super._super, x2004._super[381]._super._super,
                                  x2004._super[382]._super._super, x2004._super[383]._super._super,
                                  x2004._super[384]._super._super, x2004._super[385]._super._super,
                                  x2004._super[386]._super._super, x2004._super[387]._super._super,
                                  x2004._super[388]._super._super, x2004._super[389]._super._super,
                                  x2004._super[390]._super._super, x2004._super[391]._super._super,
                                  x2004._super[392]._super._super, x2004._super[393]._super._super,
                                  x2004._super[394]._super._super, x2004._super[395]._super._super,
                                  x2004._super[396]._super._super, x2004._super[397]._super._super,
                                  x2004._super[398]._super._super, x2004._super[399]._super._super,
                                  x2004._super[400]._super._super, x2004._super[401]._super._super,
                                  x2004._super[402]._super._super, x2004._super[403]._super._super,
                                  x2004._super[404]._super._super, x2004._super[405]._super._super,
                                  x2004._super[406]._super._super, x2004._super[407]._super._super,
                                  x2004._super[408]._super._super, x2004._super[409]._super._super,
                                  x2004._super[410]._super._super, x2004._super[411]._super._super,
                                  x2004._super[412]._super._super, x2004._super[413]._super._super,
                                  x2004._super[414]._super._super, x2004._super[415]._super._super,
                                  x2004._super[416]._super._super, x2004._super[417]._super._super,
                                  x2004._super[418]._super._super, x2004._super[419]._super._super,
                                  x2004._super[420]._super._super, x2004._super[421]._super._super,
                                  x2004._super[422]._super._super, x2004._super[423]._super._super,
                                  x2004._super[424]._super._super, x2004._super[425]._super._super,
                                  x2004._super[426]._super._super, x2004._super[427]._super._super,
                                  x2004._super[428]._super._super, x2004._super[429]._super._super,
                                  x2004._super[430]._super._super, x2004._super[431]._super._super,
                                  x2004._super[432]._super._super, x2004._super[433]._super._super,
                                  x2004._super[434]._super._super, x2004._super[435]._super._super,
                                  x2004._super[436]._super._super, x2004._super[437]._super._super,
                                  x2004._super[438]._super._super, x2004._super[439]._super._super,
                                  x2004._super[440]._super._super, x2004._super[441]._super._super,
                                  x2004._super[442]._super._super, x2004._super[443]._super._super,
                                  x2004._super[444]._super._super, x2004._super[445]._super._super,
                                  x2004._super[446]._super._super, x2004._super[447]._super._super,
                                  x2004._super[448]._super._super, x2004._super[449]._super._super,
                                  x2004._super[450]._super._super, x2004._super[451]._super._super,
                                  x2004._super[452]._super._super, x2004._super[453]._super._super,
                                  x2004._super[454]._super._super, x2004._super[455]._super._super,
                                  x2004._super[456]._super._super, x2004._super[457]._super._super,
                                  x2004._super[458]._super._super, x2004._super[459]._super._super,
                                  x2004._super[460]._super._super, x2004._super[461]._super._super,
                                  x2004._super[462]._super._super, x2004._super[463]._super._super,
                                  x2004._super[464]._super._super, x2004._super[465]._super._super,
                                  x2004._super[466]._super._super, x2004._super[467]._super._super,
                                  x2004._super[468]._super._super, x2004._super[469]._super._super,
                                  x2004._super[470]._super._super, x2004._super[471]._super._super,
                                  x2004._super[472]._super._super, x2004._super[473]._super._super,
                                  x2004._super[474]._super._super, x2004._super[475]._super._super,
                                  x2004._super[476]._super._super, x2004._super[477]._super._super,
                                  x2004._super[478]._super._super, x2004._super[479]._super._super,
                                  x2004._super[480]._super._super, x2004._super[481]._super._super,
                                  x2004._super[482]._super._super, x2004._super[483]._super._super,
                                  x2004._super[484]._super._super, x2004._super[485]._super._super,
                                  x2004._super[486]._super._super, x2004._super[487]._super._super,
                                  x2004._super[488]._super._super, x2004._super[489]._super._super,
                                  x2004._super[490]._super._super, x2004._super[491]._super._super,
                                  x2004._super[492]._super._super, x2004._super[493]._super._super,
                                  x2004._super[494]._super._super, x2004._super[495]._super._super,
                                  x2004._super[496]._super._super, x2004._super[497]._super._super,
                                  x2004._super[498]._super._super, x2004._super[499]._super._super,
                                  x2004._super[500]._super._super, x2004._super[501]._super._super,
                                  x2004._super[502]._super._super, x2004._super[503]._super._super,
                                  x2004._super[504]._super._super, x2004._super[505]._super._super,
                                  x2004._super[506]._super._super, x2004._super[507]._super._super,
                                  x2004._super[508]._super._super, x2004._super[509]._super._super,
                                  x2004._super[510]._super._super, x2004._super[511]._super._super,
                                  x2004._super[512]._super._super, x2004._super[513]._super._super,
                                  x2004._super[514]._super._super, x2004._super[515]._super._super,
                                  x2004._super[516]._super._super, x2004._super[517]._super._super,
                                  x2004._super[518]._super._super, x2004._super[519]._super._super,
                                  x2004._super[520]._super._super, x2004._super[521]._super._super,
                                  x2004._super[522]._super._super, x2004._super[523]._super._super,
                                  x2004._super[524]._super._super, x2004._super[525]._super._super,
                                  x2004._super[526]._super._super, x2004._super[527]._super._super,
                                  x2004._super[528]._super._super, x2004._super[529]._super._super,
                                  x2004._super[530]._super._super, x2004._super[531]._super._super,
                                  x2004._super[532]._super._super, x2004._super[533]._super._super,
                                  x2004._super[534]._super._super, x2004._super[535]._super._super,
                                  x2004._super[536]._super._super, x2004._super[537]._super._super,
                                  x2004._super[538]._super._super, x2004._super[539]._super._super,
                                  x2004._super[540]._super._super, x2004._super[541]._super._super,
                                  x2004._super[542]._super._super, x2004._super[543]._super._super,
                                  x2004._super[544]._super._super, x2004._super[545]._super._super,
                                  x2004._super[546]._super._super, x2004._super[547]._super._super,
                                  x2004._super[548]._super._super, x2004._super[549]._super._super,
                                  x2004._super[550]._super._super, x2004._super[551]._super._super,
                                  x2004._super[552]._super._super, x2004._super[553]._super._super,
                                  x2004._super[554]._super._super, x2004._super[555]._super._super,
                                  x2004._super[556]._super._super, x2004._super[557]._super._super,
                                  x2004._super[558]._super._super, x2004._super[559]._super._super,
                                  x2004._super[560]._super._super, x2004._super[561]._super._super,
                                  x2004._super[562]._super._super, x2004._super[563]._super._super,
                                  x2004._super[564]._super._super, x2004._super[565]._super._super,
                                  x2004._super[566]._super._super, x2004._super[567]._super._super,
                                  x2004._super[568]._super._super, x2004._super[569]._super._super,
                                  x2004._super[570]._super._super, x2004._super[571]._super._super,
                                  x2004._super[572]._super._super, x2004._super[573]._super._super,
                                  x2004._super[574]._super._super, x2004._super[575]._super._super,
                                  x2004._super[576]._super._super, x2004._super[577]._super._super,
                                  x2004._super[578]._super._super, x2004._super[579]._super._super,
                                  x2004._super[580]._super._super, x2004._super[581]._super._super,
                                  x2004._super[582]._super._super, x2004._super[583]._super._super,
                                  x2004._super[584]._super._super, x2004._super[585]._super._super,
                                  x2004._super[586]._super._super, x2004._super[587]._super._super,
                                  x2004._super[588]._super._super, x2004._super[589]._super._super,
                                  x2004._super[590]._super._super, x2004._super[591]._super._super,
                                  x2004._super[592]._super._super, x2004._super[593]._super._super,
                                  x2004._super[594]._super._super, x2004._super[595]._super._super,
                                  x2004._super[596]._super._super, x2004._super[597]._super._super,
                                  x2004._super[598]._super._super, x2004._super[599]._super._super,
                                  x2004._super[600]._super._super, x2004._super[601]._super._super,
                                  x2004._super[602]._super._super, x2004._super[603]._super._super,
                                  x2004._super[604]._super._super, x2004._super[605]._super._super,
                                  x2004._super[606]._super._super, x2004._super[607]._super._super,
                                  x2004._super[608]._super._super, x2004._super[609]._super._super,
                                  x2004._super[610]._super._super, x2004._super[611]._super._super,
                                  x2004._super[612]._super._super, x2004._super[613]._super._super,
                                  x2004._super[614]._super._super, x2004._super[615]._super._super,
                                  x2004._super[616]._super._super, x2004._super[617]._super._super,
                                  x2004._super[618]._super._super, x2004._super[619]._super._super,
                                  x2004._super[620]._super._super, x2004._super[621]._super._super,
                                  x2004._super[622]._super._super, x2004._super[623]._super._super,
                                  x2004._super[624]._super._super, x2004._super[625]._super._super,
                                  x2004._super[626]._super._super, x2004._super[627]._super._super,
                                  x2004._super[628]._super._super, x2004._super[629]._super._super,
                                  x2004._super[630]._super._super, x2004._super[631]._super._super,
                                  x2004._super[632]._super._super, x2004._super[633]._super._super,
                                  x2004._super[634]._super._super, x2004._super[635]._super._super,
                                  x2004._super[636]._super._super, x2004._super[637]._super._super,
                                  x2004._super[638]._super._super, x2004._super[639]._super._super,
                                  x2004._super[640]._super._super, x2004._super[641]._super._super,
                                  x2004._super[642]._super._super, x2004._super[643]._super._super,
                                  x2004._super[644]._super._super, x2004._super[645]._super._super,
                                  x2004._super[646]._super._super, x2004._super[647]._super._super,
                                  x2004._super[648]._super._super, x2004._super[649]._super._super,
                                  x2004._super[650]._super._super, x2004._super[651]._super._super,
                                  x2004._super[652]._super._super, x2004._super[653]._super._super,
                                  x2004._super[654]._super._super, x2004._super[655]._super._super,
                                  x2004._super[656]._super._super, x2004._super[657]._super._super,
                                  x2004._super[658]._super._super, x2004._super[659]._super._super,
                                  x2004._super[660]._super._super, x2004._super[661]._super._super,
                                  x2004._super[662]._super._super, x2004._super[663]._super._super,
                                  x2004._super[664]._super._super, x2004._super[665]._super._super,
                                  x2004._super[666]._super._super, x2004._super[667]._super._super,
                                  x2004._super[668]._super._super, x2004._super[669]._super._super,
                                  x2004._super[670]._super._super, x2004._super[671]._super._super,
                                  x2004._super[672]._super._super, x2004._super[673]._super._super,
                                  x2004._super[674]._super._super, x2004._super[675]._super._super,
                                  x2004._super[676]._super._super, x2004._super[677]._super._super,
                                  x2004._super[678]._super._super, x2004._super[679]._super._super,
                                  x2004._super[680]._super._super, x2004._super[681]._super._super,
                                  x2004._super[682]._super._super, x2004._super[683]._super._super,
                                  x2004._super[684]._super._super, x2004._super[685]._super._super,
                                  x2004._super[686]._super._super, x2004._super[687]._super._super,
                                  x2004._super[688]._super._super, x2004._super[689]._super._super,
                                  x2004._super[690]._super._super, x2004._super[691]._super._super,
                                  x2004._super[692]._super._super, x2004._super[693]._super._super,
                                  x2004._super[694]._super._super, x2004._super[695]._super._super,
                                  x2004._super[696]._super._super, x2004._super[697]._super._super,
                                  x2004._super[698]._super._super, x2004._super[699]._super._super,
                                  x2004._super[700]._super._super, x2004._super[701]._super._super,
                                  x2004._super[702]._super._super, x2004._super[703]._super._super,
                                  x2004._super[704]._super._super, x2004._super[705]._super._super,
                                  x2004._super[706]._super._super, x2004._super[707]._super._super,
                                  x2004._super[708]._super._super, x2004._super[709]._super._super,
                                  x2004._super[710]._super._super, x2004._super[711]._super._super,
                                  x2004._super[712]._super._super, x2004._super[713]._super._super,
                                  x2004._super[714]._super._super, x2004._super[715]._super._super,
                                  x2004._super[716]._super._super, x2004._super[717]._super._super,
                                  x2004._super[718]._super._super, x2004._super[719]._super._super,
                                  x2004._super[720]._super._super, x2004._super[721]._super._super,
                                  x2004._super[722]._super._super, x2004._super[723]._super._super,
                                  x2004._super[724]._super._super, x2004._super[725]._super._super,
                                  x2004._super[726]._super._super, x2004._super[727]._super._super,
                                  x2004._super[728]._super._super, x2004._super[729]._super._super,
                                  x2004._super[730]._super._super, x2004._super[731]._super._super,
                                  x2004._super[732]._super._super, x2004._super[733]._super._super,
                                  x2004._super[734]._super._super, x2004._super[735]._super._super,
                                  x2004._super[736]._super._super, x2004._super[737]._super._super,
                                  x2004._super[738]._super._super, x2004._super[739]._super._super,
                                  x2004._super[740]._super._super, x2004._super[741]._super._super,
                                  x2004._super[742]._super._super, x2004._super[743]._super._super,
                                  x2004._super[744]._super._super, x2004._super[745]._super._super,
                                  x2004._super[746]._super._super, x2004._super[747]._super._super,
                                  x2004._super[748]._super._super, x2004._super[749]._super._super,
                                  x2004._super[750]._super._super, x2004._super[751]._super._super,
                                  x2004._super[752]._super._super, x2004._super[753]._super._super,
                                  x2004._super[754]._super._super, x2004._super[755]._super._super,
                                  x2004._super[756]._super._super, x2004._super[757]._super._super,
                                  x2004._super[758]._super._super, x2004._super[759]._super._super,
                                  x2004._super[760]._super._super, x2004._super[761]._super._super,
                                  x2004._super[762]._super._super, x2004._super[763]._super._super,
                                  x2004._super[764]._super._super, x2004._super[765]._super._super,
                                  x2004._super[766]._super._super, x2004._super[767]._super._super,
                                  x2004._super[768]._super._super, x2004._super[769]._super._super,
                                  x2004._super[770]._super._super, x2004._super[771]._super._super,
                                  x2004._super[772]._super._super, x2004._super[773]._super._super,
                                  x2004._super[774]._super._super, x2004._super[775]._super._super,
                                  x2004._super[776]._super._super, x2004._super[777]._super._super,
                                  x2004._super[778]._super._super, x2004._super[779]._super._super,
                                  x2004._super[780]._super._super, x2004._super[781]._super._super,
                                  x2004._super[782]._super._super, x2004._super[783]._super._super,
                                  x2004._super[784]._super._super, x2004._super[785]._super._super,
                                  x2004._super[786]._super._super, x2004._super[787]._super._super,
                                  x2004._super[788]._super._super, x2004._super[789]._super._super,
                                  x2004._super[790]._super._super, x2004._super[791]._super._super,
                                  x2004._super[792]._super._super, x2004._super[793]._super._super,
                                  x2004._super[794]._super._super, x2004._super[795]._super._super,
                                  x2004._super[796]._super._super, x2004._super[797]._super._super,
                                  x2004._super[798]._super._super, x2004._super[799]._super._super};
  // WriteCycle(zirgen/circuit/keccak2/top.zir:372)
  Val100Array x2006 =
      Val100Array{((x22 + x16) + x17),       ((x42 + x36) + x37),       ((x62 + x56) + x57),
                  ((x82 + x76) + x77),       ((x102 + x96) + x97),      ((x122 + x116) + x117),
                  ((x142 + x136) + x137),    ((x162 + x156) + x157),    ((x182 + x176) + x177),
                  ((x202 + x196) + x197),    ((x222 + x216) + x217),    ((x242 + x236) + x237),
                  ((x262 + x256) + x257),    ((x282 + x276) + x277),    ((x302 + x296) + x297),
                  ((x322 + x316) + x317),    ((x342 + x336) + x337),    ((x362 + x356) + x357),
                  ((x382 + x376) + x377),    ((x402 + x396) + x397),    ((x422 + x416) + x417),
                  ((x442 + x436) + x437),    ((x462 + x456) + x457),    ((x482 + x476) + x477),
                  ((x502 + x496) + x497),    ((x522 + x516) + x517),    ((x542 + x536) + x537),
                  ((x562 + x556) + x557),    ((x582 + x576) + x577),    ((x602 + x596) + x597),
                  ((x622 + x616) + x617),    ((x642 + x636) + x637),    ((x662 + x656) + x657),
                  ((x682 + x676) + x677),    ((x702 + x696) + x697),    ((x722 + x716) + x717),
                  ((x742 + x736) + x737),    ((x762 + x756) + x757),    ((x782 + x776) + x777),
                  ((x802 + x796) + x797),    ((x822 + x816) + x817),    ((x842 + x836) + x837),
                  ((x862 + x856) + x857),    ((x882 + x876) + x877),    ((x902 + x896) + x897),
                  ((x922 + x916) + x917),    ((x942 + x936) + x937),    ((x962 + x956) + x957),
                  ((x982 + x976) + x977),    ((x1002 + x996) + x997),   ((x1022 + x1016) + x1017),
                  ((x1042 + x1036) + x1037), ((x1062 + x1056) + x1057), ((x1082 + x1076) + x1077),
                  ((x1102 + x1096) + x1097), ((x1122 + x1116) + x1117), ((x1142 + x1136) + x1137),
                  ((x1162 + x1156) + x1157), ((x1182 + x1176) + x1177), ((x1202 + x1196) + x1197),
                  ((x1222 + x1216) + x1217), ((x1242 + x1236) + x1237), ((x1262 + x1256) + x1257),
                  ((x1282 + x1276) + x1277), ((x1302 + x1296) + x1297), ((x1322 + x1316) + x1317),
                  ((x1342 + x1336) + x1337), ((x1362 + x1356) + x1357), ((x1382 + x1376) + x1377),
                  ((x1402 + x1396) + x1397), ((x1422 + x1416) + x1417), ((x1442 + x1436) + x1437),
                  ((x1462 + x1456) + x1457), ((x1482 + x1476) + x1477), ((x1502 + x1496) + x1497),
                  ((x1522 + x1516) + x1517), ((x1542 + x1536) + x1537), ((x1562 + x1556) + x1557),
                  ((x1582 + x1576) + x1577), ((x1602 + x1596) + x1597), ((x1622 + x1616) + x1617),
                  ((x1642 + x1636) + x1637), ((x1662 + x1656) + x1657), ((x1682 + x1676) + x1677),
                  ((x1702 + x1696) + x1697), ((x1722 + x1716) + x1717), ((x1742 + x1736) + x1737),
                  ((x1762 + x1756) + x1757), ((x1782 + x1776) + x1777), ((x1802 + x1796) + x1797),
                  ((x1822 + x1816) + x1817), ((x1842 + x1836) + x1837), ((x1862 + x1856) + x1857),
                  ((x1882 + x1876) + x1877), ((x1902 + x1896) + x1897), ((x1922 + x1916) + x1917),
                  ((x1942 + x1936) + x1937), ((x1962 + x1956) + x1957), ((x1982 + x1976) + x1977),
                  ((x2002 + x1996) + x1997)};
  // WriteCycle(zirgen/circuit/keccak2/top.zir:383)
  TopStateStruct x2007 = exec_TopState(ctx, x2005, x2006, x2003, LAYOUT_LOOKUP(layout2, _super));
  return x2007;
}
__device__ TopStruct exec_Top(ExecContext& ctx, BoundLayout<TopLayout> layout0, GlobalBuf global1) {
  // IsFirstCycle(zirgen/circuit/keccak2/top.zir:278)
  // Top(zirgen/circuit/keccak2/top.zir:476)
  Val x2 = INVOKE_EXTERN(ctx, isFirstCycle);
  NondetRegStruct x3 = exec_NondetReg(ctx, x2, LAYOUT_LOOKUP(layout0, isFirst));
  ControlStateStruct x4;
  if (to_size_t(x3._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:480)
    ControlStateStruct x5 = back_ControlState(ctx, 1, LAYOUT_LOOKUP(layout0, controlState));
    EQZ(x5.cycleType._super, "Top(zirgen/circuit/keccak2/top.zir:480)");
    // Top(zirgen/circuit/keccak2/top.zir:481)
    ControlStateStruct x6 = exec_ControlState(
        ctx, Val(11), Val(0), Val(0), Val(0), LAYOUT_LOOKUP(layout0, controlStateRedef.arm0));
    x4 = x6;
  } else if (to_size_t((Val(1) - x3._super))) {
    // Top(zirgen/circuit/keccak2/top.zir:483)
    WrapOneHotStruct x7 = back_WrapOneHot(ctx, 1, LAYOUT_LOOKUP(layout0, cycleMux));
    ControlStateStruct x8 = back_ControlState(ctx, 1, LAYOUT_LOOKUP(layout0, controlState));
    Val12Array x9 = Val12Array{x7._super[0]._super._super,
                               x7._super[1]._super._super,
                               x7._super[2]._super._super,
                               x7._super[3]._super._super,
                               x7._super[4]._super._super,
                               x7._super[5]._super._super,
                               x7._super[6]._super._super,
                               x7._super[7]._super._super,
                               x7._super[8]._super._super,
                               x7._super[9]._super._super,
                               x7._super[10]._super._super,
                               x7._super[11]._super._super};
    ControlStateStruct x10 =
        exec_ComputeCurrentStep(ctx, x9, x8, LAYOUT_LOOKUP(layout0, controlStateRedef.arm1));
    x4 = x10;
  } else {
    assert(0 && "Reached unreachable mux arm");
  }
  // Top(zirgen/circuit/keccak2/top.zir:479)
  ControlStateStruct x11 =
      back_ControlState(ctx, 0, LAYOUT_LOOKUP(layout0, controlStateRedef._super));
  // Top(zirgen/circuit/keccak2/top.zir:485)
  OneHot_12_Struct x12 = exec_OneHot_12_(ctx, x11.cycleType._super, LAYOUT_LOOKUP(layout0, oneHot));
  // Top(zirgen/circuit/keccak2/top.zir:486)
  WrapOneHotStruct x13 = exec_WrapOneHot(ctx, x12, LAYOUT_LOOKUP(layout0, cycleMux));
  TopStateStruct x14;
  if (to_size_t(x13._super[0]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:492)
    TopStateStruct x15 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x16 =
        exec_ShutdownCycle(ctx, x15, LAYOUT_LOOKUP(layout0, curStateRedef.arm0), global1);
    x14 = x16;
  } else if (to_size_t(x13._super[1]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:493)
    TopStateStruct x17 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x18 = exec_ReadCycle(ctx, x17, LAYOUT_LOOKUP(layout0, curStateRedef.arm1));
    x14 = x18;
  } else if (to_size_t(x13._super[2]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:494)
    TopStateStruct x19 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    // Top(zirgen/circuit/keccak2/top.zir:479)
    ControlStateStruct x20 =
        back_ControlState(ctx, 0, LAYOUT_LOOKUP(layout0, controlStateRedef._super));
    // Top(zirgen/circuit/keccak2/top.zir:494)
    TopStateStruct x21 =
        exec_ExpandCycle(ctx, x19, x20.subType._super, LAYOUT_LOOKUP(layout0, curStateRedef.arm2));
    x14 = x21;
  } else if (to_size_t(x13._super[3]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:495)
    TopStateStruct x22 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x23 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x24 = exec_WriteCycle(ctx, x22, x23, LAYOUT_LOOKUP(layout0, curStateRedef.arm3));
    x14 = x24;
  } else if (to_size_t(x13._super[4]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:496)
    TopStateStruct x25 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x26 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x27 =
        exec_KeccakRound0(ctx, x25, x26, LAYOUT_LOOKUP(layout0, curStateRedef.arm4));
    x14 = x27;
  } else if (to_size_t(x13._super[5]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:497)
    TopStateStruct x28 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x29 = back_TopState(ctx, 3, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x30 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x31 =
        exec_KeccakRound12_0_(ctx, x28, x29, x30, x28, LAYOUT_LOOKUP(layout0, curStateRedef.arm5));
    x14 = x31;
  } else if (to_size_t(x13._super[6]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:498)
    TopStateStruct x32 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x33 = back_TopState(ctx, 4, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x34 = back_TopState(ctx, 3, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x35 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x36 =
        exec_KeccakRound12_1_(ctx, x32, x33, x34, x35, LAYOUT_LOOKUP(layout0, curStateRedef.arm6));
    x14 = x36;
  } else if (to_size_t(x13._super[7]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:499)
    TopStateStruct x37 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x38 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    // Top(zirgen/circuit/keccak2/top.zir:479)
    ControlStateStruct x39 =
        back_ControlState(ctx, 0, LAYOUT_LOOKUP(layout0, controlStateRedef._super));
    // Top(zirgen/circuit/keccak2/top.zir:499)
    TopStateStruct x40 = exec_KeccakRound34_0_(
        ctx, x37, x38, x38, x39.round._super, LAYOUT_LOOKUP(layout0, curStateRedef.arm7));
    x14 = x40;
  } else if (to_size_t(x13._super[8]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:500)
    TopStateStruct x41 = back_TopState(ctx, 3, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x42 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x43 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    // Top(zirgen/circuit/keccak2/top.zir:479)
    ControlStateStruct x44 =
        back_ControlState(ctx, 0, LAYOUT_LOOKUP(layout0, controlStateRedef._super));
    // Top(zirgen/circuit/keccak2/top.zir:500)
    TopStateStruct x45 = exec_KeccakRound34_1_(
        ctx, x41, x42, x43, x44.round._super, LAYOUT_LOOKUP(layout0, curStateRedef.arm8));
    x14 = x45;
  } else if (to_size_t(x13._super[9]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:501)
    TopStateStruct x46 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x47 = back_TopState(ctx, 2, LAYOUT_LOOKUP(layout0, curState));
    // Top(zirgen/circuit/keccak2/top.zir:479)
    ControlStateStruct x48 =
        back_ControlState(ctx, 0, LAYOUT_LOOKUP(layout0, controlStateRedef._super));
    // Top(zirgen/circuit/keccak2/top.zir:501)
    TopStateStruct x49 = exec_ShaCycle(ctx,
                                       x46,
                                       x47,
                                       x48.round._super,
                                       x48.block._super,
                                       LAYOUT_LOOKUP(layout0, curStateRedef.arm9));
    x14 = x49;
  } else if (to_size_t(x13._super[10]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:502)
    TopStateStruct x50 = back_TopState(ctx, 1, LAYOUT_LOOKUP(layout0, curState));
    TopStateStruct x51 =
        exec_ShaNextBlockCycle(ctx, x50, LAYOUT_LOOKUP(layout0, curStateRedef.arm10));
    x14 = x51;
  } else if (to_size_t(x13._super[11]._super._super)) {
    // Top(zirgen/circuit/keccak2/top.zir:503)
    TopStateStruct x52 = exec_InitCycle(ctx, LAYOUT_LOOKUP(layout0, curStateRedef.arm11));
    x14 = x52;
  } else {
    assert(0 && "Reached unreachable mux arm");
  }
  return TopStruct{};
}

} // namespace risc0::circuit::keccak::cuda