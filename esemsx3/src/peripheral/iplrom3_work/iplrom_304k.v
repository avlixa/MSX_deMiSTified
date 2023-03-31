//
// iplrom_304k.v
//   IPL-ROM for OCM-PLD
//   Initial Program Loader for Cyclone & EPCS (Altera)
//   Revision 3.00
//
// Copyright (c) 2021-2022 Takayuki Hara
// All rights reserved.
//
// Redistribution and use of this source code or any derivative works, are
// permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice,
//    this list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
// 3. Redistributions may not be sold, nor may they be used in a commercial
//    product or activity without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
// TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
// OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
// OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
// ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

module iplrom (
    input           clk,
    input   [15:0]  adr,
    output  [ 7:0]  dbi
);
    reg     [ 7:0]  ff_dbi;

    always @( posedge clk ) begin
        case( adr[ 9:0] )
        10'h000:    ff_dbi <= 8'hf3;
        10'h001:    ff_dbi <= 8'h31;
        10'h002:    ff_dbi <= 8'hff;
        10'h003:    ff_dbi <= 8'hff;
        10'h004:    ff_dbi <= 8'h01;
        10'h005:    ff_dbi <= 8'hef;
        10'h006:    ff_dbi <= 8'h03;
        10'h007:    ff_dbi <= 8'h11;
        10'h008:    ff_dbi <= 8'h11;
        10'h009:    ff_dbi <= 8'hf0;
        10'h00a:    ff_dbi <= 8'h21;
        10'h00b:    ff_dbi <= 8'h11;
        10'h00c:    ff_dbi <= 8'h00;
        10'h00d:    ff_dbi <= 8'hd5;
        10'h00e:    ff_dbi <= 8'hed;
        10'h00f:    ff_dbi <= 8'hb0;
        10'h010:    ff_dbi <= 8'hc9;
        10'h011:    ff_dbi <= 8'h21;
        10'h012:    ff_dbi <= 8'h9a;
        10'h013:    ff_dbi <= 8'hf3;
        10'h014:    ff_dbi <= 8'h01;
        10'h015:    ff_dbi <= 8'h99;
        10'h016:    ff_dbi <= 8'h10;
        10'h017:    ff_dbi <= 8'hed;
        10'h018:    ff_dbi <= 8'hb3;
        10'h019:    ff_dbi <= 8'h01;
        10'h01a:    ff_dbi <= 8'h9a;
        10'h01b:    ff_dbi <= 8'h20;
        10'h01c:    ff_dbi <= 8'hed;
        10'h01d:    ff_dbi <= 8'hb3;
        10'h01e:    ff_dbi <= 8'h0d;
        10'h01f:    ff_dbi <= 8'haf;
        10'h020:    ff_dbi <= 8'h16;
        10'h021:    ff_dbi <= 8'h20;
        10'h022:    ff_dbi <= 8'hd3;
        10'h023:    ff_dbi <= 8'h98;
        10'h024:    ff_dbi <= 8'h10;
        10'h025:    ff_dbi <= 8'hfc;
        10'h026:    ff_dbi <= 8'h15;
        10'h027:    ff_dbi <= 8'h20;
        10'h028:    ff_dbi <= 8'hf9;
        10'h029:    ff_dbi <= 8'h11;
        10'h02a:    ff_dbi <= 8'h40;
        10'h02b:    ff_dbi <= 8'h81;
        10'h02c:    ff_dbi <= 8'hed;
        10'h02d:    ff_dbi <= 8'h59;
        10'h02e:    ff_dbi <= 8'hed;
        10'h02f:    ff_dbi <= 8'h51;
        10'h030:    ff_dbi <= 8'h06;
        10'h031:    ff_dbi <= 8'h20;
        10'h032:    ff_dbi <= 8'h3e;
        10'h033:    ff_dbi <= 8'hf0;
        10'h034:    ff_dbi <= 8'hd3;
        10'h035:    ff_dbi <= 8'h98;
        10'h036:    ff_dbi <= 8'h10;
        10'h037:    ff_dbi <= 8'hfc;
        10'h038:    ff_dbi <= 8'h16;
        10'h039:    ff_dbi <= 8'h08;
        10'h03a:    ff_dbi <= 8'hed;
        10'h03b:    ff_dbi <= 8'h51;
        10'h03c:    ff_dbi <= 8'hed;
        10'h03d:    ff_dbi <= 8'h59;
        10'h03e:    ff_dbi <= 8'h0d;
        10'h03f:    ff_dbi <= 8'h06;
        10'h040:    ff_dbi <= 8'h10;
        10'h041:    ff_dbi <= 8'hed;
        10'h042:    ff_dbi <= 8'hb3;
        10'h043:    ff_dbi <= 8'h3e;
        10'h044:    ff_dbi <= 8'hd4;
        10'h045:    ff_dbi <= 8'hd3;
        10'h046:    ff_dbi <= 8'h40;
        10'h047:    ff_dbi <= 8'h3e;
        10'h048:    ff_dbi <= 8'h40;
        10'h049:    ff_dbi <= 8'h32;
        10'h04a:    ff_dbi <= 8'h00;
        10'h04b:    ff_dbi <= 8'h60;
        10'h04c:    ff_dbi <= 8'h3a;
        10'h04d:    ff_dbi <= 8'h00;
        10'h04e:    ff_dbi <= 8'h58;
        10'h04f:    ff_dbi <= 8'h0f;
        10'h050:    ff_dbi <= 8'h30;
        10'h051:    ff_dbi <= 8'h03;
        10'h052:    ff_dbi <= 8'h32;
        10'h053:    ff_dbi <= 8'h09;
        10'h054:    ff_dbi <= 8'hf4;
        10'h055:    ff_dbi <= 8'hcd;
        10'h056:    ff_dbi <= 8'ha4;
        10'h057:    ff_dbi <= 8'hf2;
        10'h058:    ff_dbi <= 8'h3a;
        10'h059:    ff_dbi <= 8'h09;
        10'h05a:    ff_dbi <= 8'hf4;
        10'h05b:    ff_dbi <= 8'hfe;
        10'h05c:    ff_dbi <= 8'hd4;
        10'h05d:    ff_dbi <= 8'h26;
        10'h05e:    ff_dbi <= 8'h80;
        10'h05f:    ff_dbi <= 8'h2e;
        10'h060:    ff_dbi <= 8'h00;
        10'h061:    ff_dbi <= 8'h7c;
        10'h062:    ff_dbi <= 8'h32;
        10'h063:    ff_dbi <= 8'h00;
        10'h064:    ff_dbi <= 8'h70;
        10'h065:    ff_dbi <= 8'h28;
        10'h066:    ff_dbi <= 8'h0d;
        10'h067:    ff_dbi <= 8'h7e;
        10'h068:    ff_dbi <= 8'hee;
        10'h069:    ff_dbi <= 8'h41;
        10'h06a:    ff_dbi <= 8'hee;
        10'h06b:    ff_dbi <= 8'h42;
        10'h06c:    ff_dbi <= 8'h23;
        10'h06d:    ff_dbi <= 8'hbe;
        10'h06e:    ff_dbi <= 8'hca;
        10'h06f:    ff_dbi <= 8'hfc;
        10'h070:    ff_dbi <= 8'hf1;
        10'h071:    ff_dbi <= 8'hcd;
        10'h072:    ff_dbi <= 8'haa;
        10'h073:    ff_dbi <= 8'hf0;
        10'h074:    ff_dbi <= 8'hcd;
        10'h075:    ff_dbi <= 8'h9d;
        10'h076:    ff_dbi <= 8'hf1;
        10'h077:    ff_dbi <= 8'haf;
        10'h078:    ff_dbi <= 8'h32;
        10'h079:    ff_dbi <= 8'h09;
        10'h07a:    ff_dbi <= 8'hf4;
        10'h07b:    ff_dbi <= 8'h76;
        10'h07c:    ff_dbi <= 8'h04;
        10'h07d:    ff_dbi <= 8'h84;
        10'h07e:    ff_dbi <= 8'h07;
        10'h07f:    ff_dbi <= 8'h40;
        10'h080:    ff_dbi <= 8'h08;
        10'h081:    ff_dbi <= 8'hfe;
        10'h082:    ff_dbi <= 8'h20;
        10'h083:    ff_dbi <= 8'hff;
        10'h084:    ff_dbi <= 8'hd5;
        10'h085:    ff_dbi <= 8'heb;
        10'h086:    ff_dbi <= 8'h29;
        10'h087:    ff_dbi <= 8'heb;
        10'h088:    ff_dbi <= 8'haf;
        10'h089:    ff_dbi <= 8'h48;
        10'h08a:    ff_dbi <= 8'h47;
        10'h08b:    ff_dbi <= 8'hc5;
        10'h08c:    ff_dbi <= 8'he5;
        10'h08d:    ff_dbi <= 8'h21;
        10'h08e:    ff_dbi <= 8'h00;
        10'h08f:    ff_dbi <= 8'h40;
        10'h090:    ff_dbi <= 8'h36;
        10'h091:    ff_dbi <= 8'h03;
        10'h092:    ff_dbi <= 8'h72;
        10'h093:    ff_dbi <= 8'h73;
        10'h094:    ff_dbi <= 8'h77;
        10'h095:    ff_dbi <= 8'hbe;
        10'h096:    ff_dbi <= 8'hd1;
        10'h097:    ff_dbi <= 8'h79;
        10'h098:    ff_dbi <= 8'h48;
        10'h099:    ff_dbi <= 8'he5;
        10'h09a:    ff_dbi <= 8'h06;
        10'h09b:    ff_dbi <= 8'h02;
        10'h09c:    ff_dbi <= 8'hed;
        10'h09d:    ff_dbi <= 8'hb0;
        10'h09e:    ff_dbi <= 8'he1;
        10'h09f:    ff_dbi <= 8'h3d;
        10'h0a0:    ff_dbi <= 8'h20;
        10'h0a1:    ff_dbi <= 8'hf7;
        10'h0a2:    ff_dbi <= 8'h3a;
        10'h0a3:    ff_dbi <= 8'h00;
        10'h0a4:    ff_dbi <= 8'h50;
        10'h0a5:    ff_dbi <= 8'he1;
        10'h0a6:    ff_dbi <= 8'hd1;
        10'h0a7:    ff_dbi <= 8'h19;
        10'h0a8:    ff_dbi <= 8'heb;
        10'h0a9:    ff_dbi <= 8'hc9;
        10'h0aa:    ff_dbi <= 8'h3e;
        10'h0ab:    ff_dbi <= 8'h02;
        10'h0ac:    ff_dbi <= 8'hcd;
        10'h0ad:    ff_dbi <= 8'hf4;
        10'h0ae:    ff_dbi <= 8'hf3;
        10'h0af:    ff_dbi <= 8'h01;
        10'h0b0:    ff_dbi <= 8'h00;
        10'h0b1:    ff_dbi <= 8'h01;
        10'h0b2:    ff_dbi <= 8'h51;
        10'h0b3:    ff_dbi <= 8'h59;
        10'h0b4:    ff_dbi <= 8'h21;
        10'h0b5:    ff_dbi <= 8'h00;
        10'h0b6:    ff_dbi <= 8'hc0;
        10'h0b7:    ff_dbi <= 8'hcd;
        10'h0b8:    ff_dbi <= 8'h62;
        10'h0b9:    ff_dbi <= 8'hf3;
        10'h0ba:    ff_dbi <= 8'hd8;
        10'h0bb:    ff_dbi <= 8'h06;
        10'h0bc:    ff_dbi <= 8'h04;
        10'h0bd:    ff_dbi <= 8'h21;
        10'h0be:    ff_dbi <= 8'hc6;
        10'h0bf:    ff_dbi <= 8'hc1;
        10'h0c0:    ff_dbi <= 8'h5e;
        10'h0c1:    ff_dbi <= 8'h23;
        10'h0c2:    ff_dbi <= 8'h56;
        10'h0c3:    ff_dbi <= 8'h23;
        10'h0c4:    ff_dbi <= 8'h4e;
        10'h0c5:    ff_dbi <= 8'h79;
        10'h0c6:    ff_dbi <= 8'hb2;
        10'h0c7:    ff_dbi <= 8'hb3;
        10'h0c8:    ff_dbi <= 8'h20;
        10'h0c9:    ff_dbi <= 8'h07;
        10'h0ca:    ff_dbi <= 8'h1e;
        10'h0cb:    ff_dbi <= 8'h0e;
        10'h0cc:    ff_dbi <= 8'h19;
        10'h0cd:    ff_dbi <= 8'h10;
        10'h0ce:    ff_dbi <= 8'hf1;
        10'h0cf:    ff_dbi <= 8'h37;
        10'h0d0:    ff_dbi <= 8'hc9;
        10'h0d1:    ff_dbi <= 8'h06;
        10'h0d2:    ff_dbi <= 8'h01;
        10'h0d3:    ff_dbi <= 8'h21;
        10'h0d4:    ff_dbi <= 8'h00;
        10'h0d5:    ff_dbi <= 8'hc0;
        10'h0d6:    ff_dbi <= 8'hcd;
        10'h0d7:    ff_dbi <= 8'h62;
        10'h0d8:    ff_dbi <= 8'hf3;
        10'h0d9:    ff_dbi <= 8'h2a;
        10'h0da:    ff_dbi <= 8'h0e;
        10'h0db:    ff_dbi <= 8'hc0;
        10'h0dc:    ff_dbi <= 8'h2b;
        10'h0dd:    ff_dbi <= 8'h3a;
        10'h0de:    ff_dbi <= 8'h10;
        10'h0df:    ff_dbi <= 8'hc0;
        10'h0e0:    ff_dbi <= 8'h47;
        10'h0e1:    ff_dbi <= 8'h79;
        10'h0e2:    ff_dbi <= 8'h19;
        10'h0e3:    ff_dbi <= 8'hce;
        10'h0e4:    ff_dbi <= 8'h00;
        10'h0e5:    ff_dbi <= 8'hed;
        10'h0e6:    ff_dbi <= 8'h5b;
        10'h0e7:    ff_dbi <= 8'h16;
        10'h0e8:    ff_dbi <= 8'hc0;
        10'h0e9:    ff_dbi <= 8'h19;
        10'h0ea:    ff_dbi <= 8'hce;
        10'h0eb:    ff_dbi <= 8'h00;
        10'h0ec:    ff_dbi <= 8'h10;
        10'h0ed:    ff_dbi <= 8'hfb;
        10'h0ee:    ff_dbi <= 8'h4f;
        10'h0ef:    ff_dbi <= 8'heb;
        10'h0f0:    ff_dbi <= 8'h2a;
        10'h0f1:    ff_dbi <= 8'h16;
        10'h0f2:    ff_dbi <= 8'hc0;
        10'h0f3:    ff_dbi <= 8'h22;
        10'h0f4:    ff_dbi <= 8'h00;
        10'h0f5:    ff_dbi <= 8'hf4;
        10'h0f6:    ff_dbi <= 8'h2a;
        10'h0f7:    ff_dbi <= 8'h11;
        10'h0f8:    ff_dbi <= 8'hc0;
        10'h0f9:    ff_dbi <= 8'h7d;
        10'h0fa:    ff_dbi <= 8'h06;
        10'h0fb:    ff_dbi <= 8'h04;
        10'h0fc:    ff_dbi <= 8'hcb;
        10'h0fd:    ff_dbi <= 8'h3c;
        10'h0fe:    ff_dbi <= 8'hcb;
        10'h0ff:    ff_dbi <= 8'h1d;
        10'h100:    ff_dbi <= 8'h10;
        10'h101:    ff_dbi <= 8'hfa;
        10'h102:    ff_dbi <= 8'he6;
        10'h103:    ff_dbi <= 8'h0f;
        10'h104:    ff_dbi <= 8'h28;
        10'h105:    ff_dbi <= 8'h01;
        10'h106:    ff_dbi <= 8'h23;
        10'h107:    ff_dbi <= 8'h79;
        10'h108:    ff_dbi <= 8'h19;
        10'h109:    ff_dbi <= 8'h88;
        10'h10a:    ff_dbi <= 8'h22;
        10'h10b:    ff_dbi <= 8'h05;
        10'h10c:    ff_dbi <= 8'hf4;
        10'h10d:    ff_dbi <= 8'h32;
        10'h10e:    ff_dbi <= 8'h07;
        10'h10f:    ff_dbi <= 8'hf4;
        10'h110:    ff_dbi <= 8'h04;
        10'h111:    ff_dbi <= 8'h21;
        10'h112:    ff_dbi <= 8'h00;
        10'h113:    ff_dbi <= 8'hc2;
        10'h114:    ff_dbi <= 8'hcd;
        10'h115:    ff_dbi <= 8'h62;
        10'h116:    ff_dbi <= 8'hf3;
        10'h117:    ff_dbi <= 8'h79;
        10'h118:    ff_dbi <= 8'hed;
        10'h119:    ff_dbi <= 8'h53;
        10'h11a:    ff_dbi <= 8'h02;
        10'h11b:    ff_dbi <= 8'hf4;
        10'h11c:    ff_dbi <= 8'h32;
        10'h11d:    ff_dbi <= 8'h04;
        10'h11e:    ff_dbi <= 8'hf4;
        10'h11f:    ff_dbi <= 8'h06;
        10'h120:    ff_dbi <= 8'h10;
        10'h121:    ff_dbi <= 8'h21;
        10'h122:    ff_dbi <= 8'h0a;
        10'h123:    ff_dbi <= 8'hc2;
        10'h124:    ff_dbi <= 8'he5;
        10'h125:    ff_dbi <= 8'hc5;
        10'h126:    ff_dbi <= 8'h11;
        10'h127:    ff_dbi <= 8'h6e;
        10'h128:    ff_dbi <= 8'hf1;
        10'h129:    ff_dbi <= 8'h3e;
        10'h12a:    ff_dbi <= 8'h30;
        10'h12b:    ff_dbi <= 8'h06;
        10'h12c:    ff_dbi <= 8'h0a;
        10'h12d:    ff_dbi <= 8'hbe;
        10'h12e:    ff_dbi <= 8'h28;
        10'h12f:    ff_dbi <= 8'h07;
        10'h130:    ff_dbi <= 8'h3c;
        10'h131:    ff_dbi <= 8'h10;
        10'h132:    ff_dbi <= 8'hfa;
        10'h133:    ff_dbi <= 8'h06;
        10'h134:    ff_dbi <= 8'h0b;
        10'h135:    ff_dbi <= 8'h18;
        10'h136:    ff_dbi <= 8'h04;
        10'h137:    ff_dbi <= 8'h06;
        10'h138:    ff_dbi <= 8'h0a;
        10'h139:    ff_dbi <= 8'h1b;
        10'h13a:    ff_dbi <= 8'h2b;
        10'h13b:    ff_dbi <= 8'h1a;
        10'h13c:    ff_dbi <= 8'hbe;
        10'h13d:    ff_dbi <= 8'h20;
        10'h13e:    ff_dbi <= 8'h04;
        10'h13f:    ff_dbi <= 8'h1b;
        10'h140:    ff_dbi <= 8'h2b;
        10'h141:    ff_dbi <= 8'h10;
        10'h142:    ff_dbi <= 8'hf8;
        10'h143:    ff_dbi <= 8'hc1;
        10'h144:    ff_dbi <= 8'he1;
        10'h145:    ff_dbi <= 8'h28;
        10'h146:    ff_dbi <= 8'h28;
        10'h147:    ff_dbi <= 8'h11;
        10'h148:    ff_dbi <= 8'h20;
        10'h149:    ff_dbi <= 8'h00;
        10'h14a:    ff_dbi <= 8'h19;
        10'h14b:    ff_dbi <= 8'h10;
        10'h14c:    ff_dbi <= 8'hd7;
        10'h14d:    ff_dbi <= 8'hed;
        10'h14e:    ff_dbi <= 8'h5b;
        10'h14f:    ff_dbi <= 8'h00;
        10'h150:    ff_dbi <= 8'hf4;
        10'h151:    ff_dbi <= 8'h1b;
        10'h152:    ff_dbi <= 8'hed;
        10'h153:    ff_dbi <= 8'h53;
        10'h154:    ff_dbi <= 8'h00;
        10'h155:    ff_dbi <= 8'hf4;
        10'h156:    ff_dbi <= 8'h7a;
        10'h157:    ff_dbi <= 8'hb3;
        10'h158:    ff_dbi <= 8'h37;
        10'h159:    ff_dbi <= 8'hc8;
        10'h15a:    ff_dbi <= 8'h3a;
        10'h15b:    ff_dbi <= 8'h04;
        10'h15c:    ff_dbi <= 8'hf4;
        10'h15d:    ff_dbi <= 8'hed;
        10'h15e:    ff_dbi <= 8'h5b;
        10'h15f:    ff_dbi <= 8'h02;
        10'h160:    ff_dbi <= 8'hf4;
        10'h161:    ff_dbi <= 8'h4f;
        10'h162:    ff_dbi <= 8'h18;
        10'h163:    ff_dbi <= 8'hac;
        10'h164:    ff_dbi <= 8'h4f;
        10'h165:    ff_dbi <= 8'h43;
        10'h166:    ff_dbi <= 8'h4d;
        10'h167:    ff_dbi <= 8'h2d;
        10'h168:    ff_dbi <= 8'h42;
        10'h169:    ff_dbi <= 8'h49;
        10'h16a:    ff_dbi <= 8'h4f;
        10'h16b:    ff_dbi <= 8'h53;
        10'h16c:    ff_dbi <= 8'h44;
        10'h16d:    ff_dbi <= 8'h41;
        10'h16e:    ff_dbi <= 8'h54;
        10'h16f:    ff_dbi <= 8'h11;
        10'h170:    ff_dbi <= 8'h01;
        10'h171:    ff_dbi <= 8'h00;
        10'h172:    ff_dbi <= 8'h19;
        10'h173:    ff_dbi <= 8'h7e;
        10'h174:    ff_dbi <= 8'he6;
        10'h175:    ff_dbi <= 8'h18;
        10'h176:    ff_dbi <= 8'h37;
        10'h177:    ff_dbi <= 8'hc0;
        10'h178:    ff_dbi <= 8'h1e;
        10'h179:    ff_dbi <= 8'h0f;
        10'h17a:    ff_dbi <= 8'h19;
        10'h17b:    ff_dbi <= 8'h5e;
        10'h17c:    ff_dbi <= 8'h23;
        10'h17d:    ff_dbi <= 8'h56;
        10'h17e:    ff_dbi <= 8'h1b;
        10'h17f:    ff_dbi <= 8'h1b;
        10'h180:    ff_dbi <= 8'h3a;
        10'h181:    ff_dbi <= 8'h0d;
        10'h182:    ff_dbi <= 8'hc0;
        10'h183:    ff_dbi <= 8'h47;
        10'h184:    ff_dbi <= 8'haf;
        10'h185:    ff_dbi <= 8'h67;
        10'h186:    ff_dbi <= 8'h6f;
        10'h187:    ff_dbi <= 8'h4f;
        10'h188:    ff_dbi <= 8'h19;
        10'h189:    ff_dbi <= 8'h89;
        10'h18a:    ff_dbi <= 8'h10;
        10'h18b:    ff_dbi <= 8'hfc;
        10'h18c:    ff_dbi <= 8'h4f;
        10'h18d:    ff_dbi <= 8'hed;
        10'h18e:    ff_dbi <= 8'h5b;
        10'h18f:    ff_dbi <= 8'h05;
        10'h190:    ff_dbi <= 8'hf4;
        10'h191:    ff_dbi <= 8'h19;
        10'h192:    ff_dbi <= 8'h3a;
        10'h193:    ff_dbi <= 8'h07;
        10'h194:    ff_dbi <= 8'hf4;
        10'h195:    ff_dbi <= 8'h89;
        10'h196:    ff_dbi <= 8'h4f;
        10'h197:    ff_dbi <= 8'heb;
        10'h198:    ff_dbi <= 8'h21;
        10'h199:    ff_dbi <= 8'h82;
        10'h19a:    ff_dbi <= 8'hf0;
        10'h19b:    ff_dbi <= 8'h18;
        10'h19c:    ff_dbi <= 8'h29;
        10'h19d:    ff_dbi <= 8'h21;
        10'h19e:    ff_dbi <= 8'h84;
        10'h19f:    ff_dbi <= 8'hf0;
        10'h1a0:    ff_dbi <= 8'h22;
        10'h1a1:    ff_dbi <= 8'h35;
        10'h1a2:    ff_dbi <= 8'hf2;
        10'h1a3:    ff_dbi <= 8'h3e;
        10'h1a4:    ff_dbi <= 8'h60;
        10'h1a5:    ff_dbi <= 8'h32;
        10'h1a6:    ff_dbi <= 8'h00;
        10'h1a7:    ff_dbi <= 8'h60;
        10'h1a8:    ff_dbi <= 8'h3c;
        10'h1a9:    ff_dbi <= 8'h32;
        10'h1aa:    ff_dbi <= 8'h00;
        10'h1ab:    ff_dbi <= 8'h58;
        10'h1ac:    ff_dbi <= 8'h06;
        10'h1ad:    ff_dbi <= 8'ha0;
        10'h1ae:    ff_dbi <= 8'h3a;
        10'h1af:    ff_dbi <= 8'h00;
        10'h1b0:    ff_dbi <= 8'h50;
        10'h1b1:    ff_dbi <= 8'h00;
        10'h1b2:    ff_dbi <= 8'h10;
        10'h1b3:    ff_dbi <= 8'hfa;
        10'h1b4:    ff_dbi <= 8'h3a;
        10'h1b5:    ff_dbi <= 8'h00;
        10'h1b6:    ff_dbi <= 8'h40;
        10'h1b7:    ff_dbi <= 8'haf;
        10'h1b8:    ff_dbi <= 8'h32;
        10'h1b9:    ff_dbi <= 8'h00;
        10'h1ba:    ff_dbi <= 8'h58;
        10'h1bb:    ff_dbi <= 8'h11;
        10'h1bc:    ff_dbi <= 8'ha0;
        10'h1bd:    ff_dbi <= 8'h01;
        10'h1be:    ff_dbi <= 8'h3e;
        10'h1bf:    ff_dbi <= 8'h01;
        10'h1c0:    ff_dbi <= 8'hcd;
        10'h1c1:    ff_dbi <= 8'hf4;
        10'h1c2:    ff_dbi <= 8'hf3;
        10'h1c3:    ff_dbi <= 8'h21;
        10'h1c4:    ff_dbi <= 8'h7c;
        10'h1c5:    ff_dbi <= 8'hf0;
        10'h1c6:    ff_dbi <= 8'h3e;
        10'h1c7:    ff_dbi <= 8'hd4;
        10'h1c8:    ff_dbi <= 8'h32;
        10'h1c9:    ff_dbi <= 8'h09;
        10'h1ca:    ff_dbi <= 8'hf4;
        10'h1cb:    ff_dbi <= 8'h3e;
        10'h1cc:    ff_dbi <= 8'h80;
        10'h1cd:    ff_dbi <= 8'h32;
        10'h1ce:    ff_dbi <= 8'h08;
        10'h1cf:    ff_dbi <= 8'hf4;
        10'h1d0:    ff_dbi <= 8'h7e;
        10'h1d1:    ff_dbi <= 8'h23;
        10'h1d2:    ff_dbi <= 8'hfe;
        10'h1d3:    ff_dbi <= 8'h40;
        10'h1d4:    ff_dbi <= 8'h38;
        10'h1d5:    ff_dbi <= 8'h54;
        10'h1d6:    ff_dbi <= 8'h28;
        10'h1d7:    ff_dbi <= 8'h67;
        10'h1d8:    ff_dbi <= 8'hfe;
        10'h1d9:    ff_dbi <= 8'hfd;
        10'h1da:    ff_dbi <= 8'h30;
        10'h1db:    ff_dbi <= 8'h0e;
        10'h1dc:    ff_dbi <= 8'he5;
        10'h1dd:    ff_dbi <= 8'he6;
        10'h1de:    ff_dbi <= 8'h3f;
        10'h1df:    ff_dbi <= 8'h47;
        10'h1e0:    ff_dbi <= 8'h0e;
        10'h1e1:    ff_dbi <= 8'h00;
        10'h1e2:    ff_dbi <= 8'hcd;
        10'h1e3:    ff_dbi <= 8'h58;
        10'h1e4:    ff_dbi <= 8'hf2;
        10'h1e5:    ff_dbi <= 8'h10;
        10'h1e6:    ff_dbi <= 8'hfb;
        10'h1e7:    ff_dbi <= 8'he1;
        10'h1e8:    ff_dbi <= 8'h18;
        10'h1e9:    ff_dbi <= 8'he6;
        10'h1ea:    ff_dbi <= 8'h0f;
        10'h1eb:    ff_dbi <= 8'h2f;
        10'h1ec:    ff_dbi <= 8'hd3;
        10'h1ed:    ff_dbi <= 8'h4e;
        10'h1ee:    ff_dbi <= 8'hcd;
        10'h1ef:    ff_dbi <= 8'h4f;
        10'h1f0:    ff_dbi <= 8'hf2;
        10'h1f1:    ff_dbi <= 8'hd3;
        10'h1f2:    ff_dbi <= 8'h4c;
        10'h1f3:    ff_dbi <= 8'hd6;
        10'h1f4:    ff_dbi <= 8'h03;
        10'h1f5:    ff_dbi <= 8'h28;
        10'h1f6:    ff_dbi <= 8'h01;
        10'h1f7:    ff_dbi <= 8'hd0;
        10'h1f8:    ff_dbi <= 8'hd3;
        10'h1f9:    ff_dbi <= 8'h4f;
        10'h1fa:    ff_dbi <= 8'hd3;
        10'h1fb:    ff_dbi <= 8'hf4;
        10'h1fc:    ff_dbi <= 8'hcd;
        10'h1fd:    ff_dbi <= 8'h4f;
        10'h1fe:    ff_dbi <= 8'hf2;
        10'h1ff:    ff_dbi <= 8'hb7;
        10'h200:    ff_dbi <= 8'h28;
        10'h201:    ff_dbi <= 8'h10;
        10'h202:    ff_dbi <= 8'h3e;
        10'h203:    ff_dbi <= 8'h02;
        10'h204:    ff_dbi <= 8'hd3;
        10'h205:    ff_dbi <= 8'h99;
        10'h206:    ff_dbi <= 8'h3e;
        10'h207:    ff_dbi <= 8'h90;
        10'h208:    ff_dbi <= 8'hd3;
        10'h209:    ff_dbi <= 8'h99;
        10'h20a:    ff_dbi <= 8'h01;
        10'h20b:    ff_dbi <= 8'h9a;
        10'h20c:    ff_dbi <= 8'h1a;
        10'h20d:    ff_dbi <= 8'h21;
        10'h20e:    ff_dbi <= 8'hda;
        10'h20f:    ff_dbi <= 8'hf3;
        10'h210:    ff_dbi <= 8'hed;
        10'h211:    ff_dbi <= 8'hb3;
        10'h212:    ff_dbi <= 8'haf;
        10'h213:    ff_dbi <= 8'hd3;
        10'h214:    ff_dbi <= 8'h40;
        10'h215:    ff_dbi <= 8'h32;
        10'h216:    ff_dbi <= 8'h09;
        10'h217:    ff_dbi <= 8'hf4;
        10'h218:    ff_dbi <= 8'h32;
        10'h219:    ff_dbi <= 8'h00;
        10'h21a:    ff_dbi <= 8'h60;
        10'h21b:    ff_dbi <= 8'h3c;
        10'h21c:    ff_dbi <= 8'h32;
        10'h21d:    ff_dbi <= 8'h00;
        10'h21e:    ff_dbi <= 8'h68;
        10'h21f:    ff_dbi <= 8'h32;
        10'h220:    ff_dbi <= 8'h00;
        10'h221:    ff_dbi <= 8'h70;
        10'h222:    ff_dbi <= 8'h32;
        10'h223:    ff_dbi <= 8'h00;
        10'h224:    ff_dbi <= 8'h78;
        10'h225:    ff_dbi <= 8'h3e;
        10'h226:    ff_dbi <= 8'hc0;
        10'h227:    ff_dbi <= 8'hd3;
        10'h228:    ff_dbi <= 8'ha8;
        10'h229:    ff_dbi <= 8'hc7;
        10'h22a:    ff_dbi <= 8'h08;
        10'h22b:    ff_dbi <= 8'hcd;
        10'h22c:    ff_dbi <= 8'h6b;
        10'h22d:    ff_dbi <= 8'hf2;
        10'h22e:    ff_dbi <= 8'he5;
        10'h22f:    ff_dbi <= 8'h06;
        10'h230:    ff_dbi <= 8'h20;
        10'h231:    ff_dbi <= 8'h21;
        10'h232:    ff_dbi <= 8'h00;
        10'h233:    ff_dbi <= 8'h80;
        10'h234:    ff_dbi <= 8'hcd;
        10'h235:    ff_dbi <= 8'h62;
        10'h236:    ff_dbi <= 8'hf3;
        10'h237:    ff_dbi <= 8'he1;
        10'h238:    ff_dbi <= 8'hd8;
        10'h239:    ff_dbi <= 8'h08;
        10'h23a:    ff_dbi <= 8'h3d;
        10'h23b:    ff_dbi <= 8'h20;
        10'h23c:    ff_dbi <= 8'hed;
        10'h23d:    ff_dbi <= 8'h18;
        10'h23e:    ff_dbi <= 8'h91;
        10'h23f:    ff_dbi <= 8'hcd;
        10'h240:    ff_dbi <= 8'h4f;
        10'h241:    ff_dbi <= 8'hf2;
        10'h242:    ff_dbi <= 8'hfe;
        10'h243:    ff_dbi <= 8'h03;
        10'h244:    ff_dbi <= 8'h0e;
        10'h245:    ff_dbi <= 8'hff;
        10'h246:    ff_dbi <= 8'h38;
        10'h247:    ff_dbi <= 8'h02;
        10'h248:    ff_dbi <= 8'h0e;
        10'h249:    ff_dbi <= 8'hc9;
        10'h24a:    ff_dbi <= 8'hcd;
        10'h24b:    ff_dbi <= 8'h58;
        10'h24c:    ff_dbi <= 8'hf2;
        10'h24d:    ff_dbi <= 8'h18;
        10'h24e:    ff_dbi <= 8'h81;
        10'h24f:    ff_dbi <= 8'h3e;
        10'h250:    ff_dbi <= 8'h90;
        10'h251:    ff_dbi <= 8'h32;
        10'h252:    ff_dbi <= 8'h00;
        10'h253:    ff_dbi <= 8'h70;
        10'h254:    ff_dbi <= 8'h3a;
        10'h255:    ff_dbi <= 8'h2d;
        10'h256:    ff_dbi <= 8'h80;
        10'h257:    ff_dbi <= 8'hc9;
        10'h258:    ff_dbi <= 8'hcd;
        10'h259:    ff_dbi <= 8'h6b;
        10'h25a:    ff_dbi <= 8'hf2;
        10'h25b:    ff_dbi <= 8'h79;
        10'h25c:    ff_dbi <= 8'hd9;
        10'h25d:    ff_dbi <= 8'h21;
        10'h25e:    ff_dbi <= 8'h00;
        10'h25f:    ff_dbi <= 8'h80;
        10'h260:    ff_dbi <= 8'h11;
        10'h261:    ff_dbi <= 8'h01;
        10'h262:    ff_dbi <= 8'h80;
        10'h263:    ff_dbi <= 8'h01;
        10'h264:    ff_dbi <= 8'hff;
        10'h265:    ff_dbi <= 8'h3f;
        10'h266:    ff_dbi <= 8'h77;
        10'h267:    ff_dbi <= 8'hed;
        10'h268:    ff_dbi <= 8'hb0;
        10'h269:    ff_dbi <= 8'hd9;
        10'h26a:    ff_dbi <= 8'hc9;
        10'h26b:    ff_dbi <= 8'h3a;
        10'h26c:    ff_dbi <= 8'h08;
        10'h26d:    ff_dbi <= 8'hf4;
        10'h26e:    ff_dbi <= 8'h32;
        10'h26f:    ff_dbi <= 8'h00;
        10'h270:    ff_dbi <= 8'h70;
        10'h271:    ff_dbi <= 8'h3c;
        10'h272:    ff_dbi <= 8'h32;
        10'h273:    ff_dbi <= 8'h00;
        10'h274:    ff_dbi <= 8'h78;
        10'h275:    ff_dbi <= 8'h3c;
        10'h276:    ff_dbi <= 8'h32;
        10'h277:    ff_dbi <= 8'h08;
        10'h278:    ff_dbi <= 8'hf4;
        10'h279:    ff_dbi <= 8'hc9;
        10'h27a:    ff_dbi <= 8'h3a;
        10'h27b:    ff_dbi <= 8'hcf;
        10'h27c:    ff_dbi <= 8'hff;
        10'h27d:    ff_dbi <= 8'hfe;
        10'h27e:    ff_dbi <= 8'h03;
        10'h27f:    ff_dbi <= 8'h38;
        10'h280:    ff_dbi <= 8'h09;
        10'h281:    ff_dbi <= 8'h7e;
        10'h282:    ff_dbi <= 8'h70;
        10'h283:    ff_dbi <= 8'h36;
        10'h284:    ff_dbi <= 8'h00;
        10'h285:    ff_dbi <= 8'h71;
        10'h286:    ff_dbi <= 8'h72;
        10'h287:    ff_dbi <= 8'h73;
        10'h288:    ff_dbi <= 8'h18;
        10'h289:    ff_dbi <= 8'h0d;
        10'h28a:    ff_dbi <= 8'hcb;
        10'h28b:    ff_dbi <= 8'h23;
        10'h28c:    ff_dbi <= 8'hcb;
        10'h28d:    ff_dbi <= 8'h12;
        10'h28e:    ff_dbi <= 8'hcb;
        10'h28f:    ff_dbi <= 8'h11;
        10'h290:    ff_dbi <= 8'h7e;
        10'h291:    ff_dbi <= 8'h70;
        10'h292:    ff_dbi <= 8'h71;
        10'h293:    ff_dbi <= 8'h72;
        10'h294:    ff_dbi <= 8'h73;
        10'h295:    ff_dbi <= 8'h36;
        10'h296:    ff_dbi <= 8'h00;
        10'h297:    ff_dbi <= 8'h36;
        10'h298:    ff_dbi <= 8'h95;
        10'h299:    ff_dbi <= 8'h06;
        10'h29a:    ff_dbi <= 8'h10;
        10'h29b:    ff_dbi <= 8'h7e;
        10'h29c:    ff_dbi <= 8'h7e;
        10'h29d:    ff_dbi <= 8'hfe;
        10'h29e:    ff_dbi <= 8'hff;
        10'h29f:    ff_dbi <= 8'h3f;
        10'h2a0:    ff_dbi <= 8'hd0;
        10'h2a1:    ff_dbi <= 8'h10;
        10'h2a2:    ff_dbi <= 8'hf9;
        10'h2a3:    ff_dbi <= 8'hc9;
        10'h2a4:    ff_dbi <= 8'haf;
        10'h2a5:    ff_dbi <= 8'h32;
        10'h2a6:    ff_dbi <= 8'h00;
        10'h2a7:    ff_dbi <= 8'h58;
        10'h2a8:    ff_dbi <= 8'h47;
        10'h2a9:    ff_dbi <= 8'h21;
        10'h2aa:    ff_dbi <= 8'h00;
        10'h2ab:    ff_dbi <= 8'h40;
        10'h2ac:    ff_dbi <= 8'hbe;
        10'h2ad:    ff_dbi <= 8'h10;
        10'h2ae:    ff_dbi <= 8'hfd;
        10'h2af:    ff_dbi <= 8'hbe;
        10'h2b0:    ff_dbi <= 8'h10;
        10'h2b1:    ff_dbi <= 8'hfd;
        10'h2b2:    ff_dbi <= 8'haf;
        10'h2b3:    ff_dbi <= 8'h32;
        10'h2b4:    ff_dbi <= 8'h00;
        10'h2b5:    ff_dbi <= 8'h58;
        10'h2b6:    ff_dbi <= 8'h06;
        10'h2b7:    ff_dbi <= 8'h0a;
        10'h2b8:    ff_dbi <= 8'h3a;
        10'h2b9:    ff_dbi <= 8'h00;
        10'h2ba:    ff_dbi <= 8'h50;
        10'h2bb:    ff_dbi <= 8'h10;
        10'h2bc:    ff_dbi <= 8'hfb;
        10'h2bd:    ff_dbi <= 8'h7e;
        10'h2be:    ff_dbi <= 8'h36;
        10'h2bf:    ff_dbi <= 8'h40;
        10'h2c0:    ff_dbi <= 8'h70;
        10'h2c1:    ff_dbi <= 8'h70;
        10'h2c2:    ff_dbi <= 8'h70;
        10'h2c3:    ff_dbi <= 8'h70;
        10'h2c4:    ff_dbi <= 8'h36;
        10'h2c5:    ff_dbi <= 8'h95;
        10'h2c6:    ff_dbi <= 8'h06;
        10'h2c7:    ff_dbi <= 8'h10;
        10'h2c8:    ff_dbi <= 8'h7e;
        10'h2c9:    ff_dbi <= 8'hfe;
        10'h2ca:    ff_dbi <= 8'hff;
        10'h2cb:    ff_dbi <= 8'h38;
        10'h2cc:    ff_dbi <= 8'h04;
        10'h2cd:    ff_dbi <= 8'h10;
        10'h2ce:    ff_dbi <= 8'hf9;
        10'h2cf:    ff_dbi <= 8'h37;
        10'h2d0:    ff_dbi <= 8'hc9;
        10'h2d1:    ff_dbi <= 8'he6;
        10'h2d2:    ff_dbi <= 8'hf3;
        10'h2d3:    ff_dbi <= 8'hd6;
        10'h2d4:    ff_dbi <= 8'h01;
        10'h2d5:    ff_dbi <= 8'hc0;
        10'h2d6:    ff_dbi <= 8'h32;
        10'h2d7:    ff_dbi <= 8'hcf;
        10'h2d8:    ff_dbi <= 8'hff;
        10'h2d9:    ff_dbi <= 8'hbe;
        10'h2da:    ff_dbi <= 8'h36;
        10'h2db:    ff_dbi <= 8'h48;
        10'h2dc:    ff_dbi <= 8'h77;
        10'h2dd:    ff_dbi <= 8'h77;
        10'h2de:    ff_dbi <= 8'h36;
        10'h2df:    ff_dbi <= 8'h01;
        10'h2e0:    ff_dbi <= 8'h36;
        10'h2e1:    ff_dbi <= 8'haa;
        10'h2e2:    ff_dbi <= 8'h36;
        10'h2e3:    ff_dbi <= 8'h87;
        10'h2e4:    ff_dbi <= 8'h06;
        10'h2e5:    ff_dbi <= 8'h10;
        10'h2e6:    ff_dbi <= 8'hcd;
        10'h2e7:    ff_dbi <= 8'h9b;
        10'h2e8:    ff_dbi <= 8'hf2;
        10'h2e9:    ff_dbi <= 8'hd8;
        10'h2ea:    ff_dbi <= 8'h3d;
        10'h2eb:    ff_dbi <= 8'h20;
        10'h2ec:    ff_dbi <= 8'h37;
        10'h2ed:    ff_dbi <= 8'h7e;
        10'h2ee:    ff_dbi <= 8'h7e;
        10'h2ef:    ff_dbi <= 8'h7e;
        10'h2f0:    ff_dbi <= 8'he6;
        10'h2f1:    ff_dbi <= 8'h0f;
        10'h2f2:    ff_dbi <= 8'h3d;
        10'h2f3:    ff_dbi <= 8'h7e;
        10'h2f4:    ff_dbi <= 8'hc0;
        10'h2f5:    ff_dbi <= 8'hfe;
        10'h2f6:    ff_dbi <= 8'haa;
        10'h2f7:    ff_dbi <= 8'hc0;
        10'h2f8:    ff_dbi <= 8'h01;
        10'h2f9:    ff_dbi <= 8'h00;
        10'h2fa:    ff_dbi <= 8'h77;
        10'h2fb:    ff_dbi <= 8'hcd;
        10'h2fc:    ff_dbi <= 8'h90;
        10'h2fd:    ff_dbi <= 8'hf2;
        10'h2fe:    ff_dbi <= 8'hd8;
        10'h2ff:    ff_dbi <= 8'h3d;
        10'h300:    ff_dbi <= 8'hc0;
        10'h301:    ff_dbi <= 8'h01;
        10'h302:    ff_dbi <= 8'h40;
        10'h303:    ff_dbi <= 8'h69;
        10'h304:    ff_dbi <= 8'hcd;
        10'h305:    ff_dbi <= 8'h90;
        10'h306:    ff_dbi <= 8'hf2;
        10'h307:    ff_dbi <= 8'hd8;
        10'h308:    ff_dbi <= 8'he6;
        10'h309:    ff_dbi <= 8'h01;
        10'h30a:    ff_dbi <= 8'h20;
        10'h30b:    ff_dbi <= 8'hec;
        10'h30c:    ff_dbi <= 8'h01;
        10'h30d:    ff_dbi <= 8'h00;
        10'h30e:    ff_dbi <= 8'h7a;
        10'h30f:    ff_dbi <= 8'hcd;
        10'h310:    ff_dbi <= 8'h90;
        10'h311:    ff_dbi <= 8'hf2;
        10'h312:    ff_dbi <= 8'h38;
        10'h313:    ff_dbi <= 8'h2d;
        10'h314:    ff_dbi <= 8'h7e;
        10'h315:    ff_dbi <= 8'hbe;
        10'h316:    ff_dbi <= 8'hbe;
        10'h317:    ff_dbi <= 8'hbe;
        10'h318:    ff_dbi <= 8'hcb;
        10'h319:    ff_dbi <= 8'h77;
        10'h31a:    ff_dbi <= 8'h3e;
        10'h31b:    ff_dbi <= 8'h02;
        10'h31c:    ff_dbi <= 8'h28;
        10'h31d:    ff_dbi <= 8'h01;
        10'h31e:    ff_dbi <= 8'h3c;
        10'h31f:    ff_dbi <= 8'h32;
        10'h320:    ff_dbi <= 8'hcf;
        10'h321:    ff_dbi <= 8'hff;
        10'h322:    ff_dbi <= 8'haf;
        10'h323:    ff_dbi <= 8'hc9;
        10'h324:    ff_dbi <= 8'h01;
        10'h325:    ff_dbi <= 8'h00;
        10'h326:    ff_dbi <= 8'h77;
        10'h327:    ff_dbi <= 8'hcd;
        10'h328:    ff_dbi <= 8'h90;
        10'h329:    ff_dbi <= 8'hf2;
        10'h32a:    ff_dbi <= 8'h38;
        10'h32b:    ff_dbi <= 8'h15;
        10'h32c:    ff_dbi <= 8'h3d;
        10'h32d:    ff_dbi <= 8'h20;
        10'h32e:    ff_dbi <= 8'h12;
        10'h32f:    ff_dbi <= 8'h01;
        10'h330:    ff_dbi <= 8'h00;
        10'h331:    ff_dbi <= 8'h69;
        10'h332:    ff_dbi <= 8'hcd;
        10'h333:    ff_dbi <= 8'h90;
        10'h334:    ff_dbi <= 8'hf2;
        10'h335:    ff_dbi <= 8'h38;
        10'h336:    ff_dbi <= 8'h0a;
        10'h337:    ff_dbi <= 8'he6;
        10'h338:    ff_dbi <= 8'h01;
        10'h339:    ff_dbi <= 8'h20;
        10'h33a:    ff_dbi <= 8'he9;
        10'h33b:    ff_dbi <= 8'h3e;
        10'h33c:    ff_dbi <= 8'h02;
        10'h33d:    ff_dbi <= 8'h32;
        10'h33e:    ff_dbi <= 8'hcf;
        10'h33f:    ff_dbi <= 8'hff;
        10'h340:    ff_dbi <= 8'hc9;
        10'h341:    ff_dbi <= 8'h01;
        10'h342:    ff_dbi <= 8'h00;
        10'h343:    ff_dbi <= 8'h41;
        10'h344:    ff_dbi <= 8'hcd;
        10'h345:    ff_dbi <= 8'h90;
        10'h346:    ff_dbi <= 8'hf2;
        10'h347:    ff_dbi <= 8'hd8;
        10'h348:    ff_dbi <= 8'hcb;
        10'h349:    ff_dbi <= 8'h57;
        10'h34a:    ff_dbi <= 8'hc0;
        10'h34b:    ff_dbi <= 8'he6;
        10'h34c:    ff_dbi <= 8'h01;
        10'h34d:    ff_dbi <= 8'h20;
        10'h34e:    ff_dbi <= 8'hf2;
        10'h34f:    ff_dbi <= 8'h3e;
        10'h350:    ff_dbi <= 8'h01;
        10'h351:    ff_dbi <= 8'h32;
        10'h352:    ff_dbi <= 8'hcf;
        10'h353:    ff_dbi <= 8'hff;
        10'h354:    ff_dbi <= 8'hc9;
        10'h355:    ff_dbi <= 8'hc1;
        10'h356:    ff_dbi <= 8'hd1;
        10'h357:    ff_dbi <= 8'h37;
        10'h358:    ff_dbi <= 8'hc9;
        10'h359:    ff_dbi <= 8'hcd;
        10'h35a:    ff_dbi <= 8'ha4;
        10'h35b:    ff_dbi <= 8'hf2;
        10'h35c:    ff_dbi <= 8'hc1;
        10'h35d:    ff_dbi <= 8'hd1;
        10'h35e:    ff_dbi <= 8'he1;
        10'h35f:    ff_dbi <= 8'hd8;
        10'h360:    ff_dbi <= 8'h37;
        10'h361:    ff_dbi <= 8'hc0;
        10'h362:    ff_dbi <= 8'he5;
        10'h363:    ff_dbi <= 8'hd5;
        10'h364:    ff_dbi <= 8'hc5;
        10'h365:    ff_dbi <= 8'h06;
        10'h366:    ff_dbi <= 8'h51;
        10'h367:    ff_dbi <= 8'h21;
        10'h368:    ff_dbi <= 8'h00;
        10'h369:    ff_dbi <= 8'h40;
        10'h36a:    ff_dbi <= 8'hcd;
        10'h36b:    ff_dbi <= 8'h7a;
        10'h36c:    ff_dbi <= 8'hf2;
        10'h36d:    ff_dbi <= 8'h38;
        10'h36e:    ff_dbi <= 8'hea;
        10'h36f:    ff_dbi <= 8'hc1;
        10'h370:    ff_dbi <= 8'hd1;
        10'h371:    ff_dbi <= 8'he1;
        10'h372:    ff_dbi <= 8'hb7;
        10'h373:    ff_dbi <= 8'h37;
        10'h374:    ff_dbi <= 8'hc0;
        10'h375:    ff_dbi <= 8'hd5;
        10'h376:    ff_dbi <= 8'hc5;
        10'h377:    ff_dbi <= 8'heb;
        10'h378:    ff_dbi <= 8'h21;
        10'h379:    ff_dbi <= 8'h00;
        10'h37a:    ff_dbi <= 8'h40;
        10'h37b:    ff_dbi <= 8'h44;
        10'h37c:    ff_dbi <= 8'h4d;
        10'h37d:    ff_dbi <= 8'h0b;
        10'h37e:    ff_dbi <= 8'h79;
        10'h37f:    ff_dbi <= 8'hb0;
        10'h380:    ff_dbi <= 8'h28;
        10'h381:    ff_dbi <= 8'hd3;
        10'h382:    ff_dbi <= 8'h7e;
        10'h383:    ff_dbi <= 8'hfe;
        10'h384:    ff_dbi <= 8'hfe;
        10'h385:    ff_dbi <= 8'h20;
        10'h386:    ff_dbi <= 8'hf6;
        10'h387:    ff_dbi <= 8'h01;
        10'h388:    ff_dbi <= 8'h00;
        10'h389:    ff_dbi <= 8'h02;
        10'h38a:    ff_dbi <= 8'hed;
        10'h38b:    ff_dbi <= 8'hb0;
        10'h38c:    ff_dbi <= 8'heb;
        10'h38d:    ff_dbi <= 8'h1a;
        10'h38e:    ff_dbi <= 8'hc1;
        10'h38f:    ff_dbi <= 8'h1a;
        10'h390:    ff_dbi <= 8'hd1;
        10'h391:    ff_dbi <= 8'h13;
        10'h392:    ff_dbi <= 8'h7a;
        10'h393:    ff_dbi <= 8'hb3;
        10'h394:    ff_dbi <= 8'h20;
        10'h395:    ff_dbi <= 8'h01;
        10'h396:    ff_dbi <= 8'h0c;
        10'h397:    ff_dbi <= 8'h10;
        10'h398:    ff_dbi <= 8'hc9;
        10'h399:    ff_dbi <= 8'hc9;
        10'h39a:    ff_dbi <= 8'h06;
        10'h39b:    ff_dbi <= 8'h82;
        10'h39c:    ff_dbi <= 8'h80;
        10'h39d:    ff_dbi <= 8'h83;
        10'h39e:    ff_dbi <= 8'h00;
        10'h39f:    ff_dbi <= 8'h84;
        10'h3a0:    ff_dbi <= 8'h36;
        10'h3a1:    ff_dbi <= 8'h85;
        10'h3a2:    ff_dbi <= 8'h00;
        10'h3a3:    ff_dbi <= 8'h86;
        10'h3a4:    ff_dbi <= 8'hf1;
        10'h3a5:    ff_dbi <= 8'h87;
        10'h3a6:    ff_dbi <= 8'h00;
        10'h3a7:    ff_dbi <= 8'h8b;
        10'h3a8:    ff_dbi <= 8'h00;
        10'h3a9:    ff_dbi <= 8'h40;
        10'h3aa:    ff_dbi <= 8'h00;
        10'h3ab:    ff_dbi <= 8'h00;
        10'h3ac:    ff_dbi <= 8'h00;
        10'h3ad:    ff_dbi <= 8'h00;
        10'h3ae:    ff_dbi <= 8'h22;
        10'h3af:    ff_dbi <= 8'h06;
        10'h3b0:    ff_dbi <= 8'h34;
        10'h3b1:    ff_dbi <= 8'h07;
        10'h3b2:    ff_dbi <= 8'h37;
        10'h3b3:    ff_dbi <= 8'h03;
        10'h3b4:    ff_dbi <= 8'h47;
        10'h3b5:    ff_dbi <= 8'h04;
        10'h3b6:    ff_dbi <= 8'h53;
        10'h3b7:    ff_dbi <= 8'h03;
        10'h3b8:    ff_dbi <= 8'h47;
        10'h3b9:    ff_dbi <= 8'h06;
        10'h3ba:    ff_dbi <= 8'h63;
        10'h3bb:    ff_dbi <= 8'h03;
        10'h3bc:    ff_dbi <= 8'h64;
        10'h3bd:    ff_dbi <= 8'h04;
        10'h3be:    ff_dbi <= 8'h63;
        10'h3bf:    ff_dbi <= 8'h06;
        10'h3c0:    ff_dbi <= 8'h65;
        10'h3c1:    ff_dbi <= 8'h06;
        10'h3c2:    ff_dbi <= 8'h11;
        10'h3c3:    ff_dbi <= 8'h05;
        10'h3c4:    ff_dbi <= 8'h56;
        10'h3c5:    ff_dbi <= 8'h03;
        10'h3c6:    ff_dbi <= 8'h66;
        10'h3c7:    ff_dbi <= 8'h06;
        10'h3c8:    ff_dbi <= 8'h77;
        10'h3c9:    ff_dbi <= 8'h07;
        10'h3ca:    ff_dbi <= 8'h54;
        10'h3cb:    ff_dbi <= 8'h54;
        10'h3cc:    ff_dbi <= 8'hfe;
        10'h3cd:    ff_dbi <= 8'hfe;
        10'h3ce:    ff_dbi <= 8'hbe;
        10'h3cf:    ff_dbi <= 8'hfe;
        10'h3d0:    ff_dbi <= 8'h54;
        10'h3d1:    ff_dbi <= 8'h54;
        10'h3d2:    ff_dbi <= 8'hff;
        10'h3d3:    ff_dbi <= 8'hcb;
        10'h3d4:    ff_dbi <= 8'hbd;
        10'h3d5:    ff_dbi <= 8'hcd;
        10'h3d6:    ff_dbi <= 8'he9;
        10'h3d7:    ff_dbi <= 8'h93;
        10'h3d8:    ff_dbi <= 8'hfc;
        10'h3d9:    ff_dbi <= 8'h00;
        10'h3da:    ff_dbi <= 8'h11;
        10'h3db:    ff_dbi <= 8'h06;
        10'h3dc:    ff_dbi <= 8'h33;
        10'h3dd:    ff_dbi <= 8'h07;
        10'h3de:    ff_dbi <= 8'h17;
        10'h3df:    ff_dbi <= 8'h01;
        10'h3e0:    ff_dbi <= 8'h27;
        10'h3e1:    ff_dbi <= 8'h03;
        10'h3e2:    ff_dbi <= 8'h51;
        10'h3e3:    ff_dbi <= 8'h01;
        10'h3e4:    ff_dbi <= 8'h27;
        10'h3e5:    ff_dbi <= 8'h06;
        10'h3e6:    ff_dbi <= 8'h71;
        10'h3e7:    ff_dbi <= 8'h01;
        10'h3e8:    ff_dbi <= 8'h73;
        10'h3e9:    ff_dbi <= 8'h03;
        10'h3ea:    ff_dbi <= 8'h61;
        10'h3eb:    ff_dbi <= 8'h06;
        10'h3ec:    ff_dbi <= 8'h64;
        10'h3ed:    ff_dbi <= 8'h06;
        10'h3ee:    ff_dbi <= 8'h11;
        10'h3ef:    ff_dbi <= 8'h04;
        10'h3f0:    ff_dbi <= 8'h65;
        10'h3f1:    ff_dbi <= 8'h02;
        10'h3f2:    ff_dbi <= 8'h55;
        10'h3f3:    ff_dbi <= 8'h05;
        10'h3f4:    ff_dbi <= 8'h21;
        10'h3f5:    ff_dbi <= 8'h01;
        10'h3f6:    ff_dbi <= 8'h58;
        10'h3f7:    ff_dbi <= 8'h0e;
        10'h3f8:    ff_dbi <= 8'h99;
        10'h3f9:    ff_dbi <= 8'hed;
        10'h3fa:    ff_dbi <= 8'h69;
        10'h3fb:    ff_dbi <= 8'hed;
        10'h3fc:    ff_dbi <= 8'h61;
        10'h3fd:    ff_dbi <= 8'hd3;
        10'h3fe:    ff_dbi <= 8'h98;
        10'h3ff:    ff_dbi <= 8'hc9;
// Tip: a default value of 0xFF is better processed by the compiler.
        default:    ff_dbi <= 8'hff;
        endcase
    end

    assign dbi = ff_dbi;
endmodule