package com.pusher.java_websocket.e;

import androidx.core.view.InputDeviceCompat;
import com.pusher.java_websocket.drafts.c;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import org.eclipse.paho.a.a.a.a.u;

public class a {
    public static final int DECODE = 0;
    public static final int DONT_GUNZIP = 4;
    public static final int DO_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    public static final int GZIP = 2;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    public static final int URL_SAFE = 16;

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f5081a = (!a.class.desiredAssertionStatus());

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f5082b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] c = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, u.MESSAGE_TYPE_UNSUBACK, u.MESSAGE_TYPE_PINGREQ, 13, u.MESSAGE_TYPE_DISCONNECT, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] d = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] e = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, u.MESSAGE_TYPE_UNSUBACK, u.MESSAGE_TYPE_PINGREQ, 13, u.MESSAGE_TYPE_DISCONNECT, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] f = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] g;

    /* renamed from: com.pusher.java_websocket.e.a$a  reason: collision with other inner class name */
    public static class C0100a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5084a;

        /* renamed from: b  reason: collision with root package name */
        private int f5085b;
        private byte[] c;
        private int d;
        private int e;
        private int f;
        private boolean g;
        private int h;
        private byte[] i;

        public C0100a(InputStream inputStream) {
            this(inputStream, 0);
        }

        public C0100a(InputStream inputStream, int i2) {
            super(inputStream);
            this.h = i2;
            boolean z = true;
            this.g = (i2 & 8) > 0;
            this.f5084a = (i2 & 1) <= 0 ? false : z;
            this.d = this.f5084a ? 4 : 3;
            this.c = new byte[this.d];
            this.f5085b = -1;
            this.f = 0;
            this.i = a.c(i2);
        }

        public final int read() throws IOException {
            int read;
            if (this.f5085b < 0) {
                if (this.f5084a) {
                    byte[] bArr = new byte[3];
                    int i2 = 0;
                    for (int i3 = 0; i3 < 3; i3++) {
                        int read2 = this.in.read();
                        if (read2 < 0) {
                            break;
                        }
                        bArr[i3] = (byte) read2;
                        i2++;
                    }
                    if (i2 <= 0) {
                        return -1;
                    }
                    byte[] unused = a.a(bArr, 0, i2, this.c, 0, this.h);
                    this.f5085b = 0;
                    this.e = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i4 = 0;
                    while (i4 < 4) {
                        do {
                            read = this.in.read();
                            if (read < 0) {
                                break;
                            }
                        } while (this.i[read & 127] <= -5);
                        if (read < 0) {
                            break;
                        }
                        bArr2[i4] = (byte) read;
                        i4++;
                    }
                    if (i4 == 4) {
                        this.e = a.c(bArr2, this.c, 0, this.h);
                        this.f5085b = 0;
                    } else if (i4 == 0) {
                        return -1;
                    } else {
                        throw new IOException("Improperly padded Base64 input.");
                    }
                }
            }
            int i5 = this.f5085b;
            if (i5 < 0) {
                throw new IOException("Error in Base64 code reading stream.");
            } else if (i5 >= this.e) {
                return -1;
            } else {
                if (!this.f5084a || !this.g || this.f < 76) {
                    this.f++;
                    byte[] bArr3 = this.c;
                    int i6 = this.f5085b;
                    this.f5085b = i6 + 1;
                    byte b2 = bArr3[i6];
                    if (this.f5085b >= this.d) {
                        this.f5085b = -1;
                    }
                    return b2 & c.END_OF_FRAME;
                }
                this.f = 0;
                return 10;
            }
        }

        public final int read(byte[] bArr, int i2, int i3) throws IOException {
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    break;
                }
                int read = read();
                if (read >= 0) {
                    bArr[i2 + i4] = (byte) read;
                    i4++;
                } else if (i4 == 0) {
                    return -1;
                }
            }
            return i4;
        }
    }

    public static class b extends FilterOutputStream {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5086a;

        /* renamed from: b  reason: collision with root package name */
        private int f5087b;
        private byte[] c;
        private int d;
        private int e;
        private boolean f;
        private byte[] g;
        private boolean h;
        private int i;
        private byte[] j;

        public b(OutputStream outputStream) {
            this(outputStream, 1);
        }

        public b(OutputStream outputStream, int i2) {
            super(outputStream);
            boolean z = true;
            this.f = (i2 & 8) != 0;
            this.f5086a = (i2 & 1) == 0 ? false : z;
            this.d = this.f5086a ? 3 : 4;
            this.c = new byte[this.d];
            this.f5087b = 0;
            this.e = 0;
            this.h = false;
            this.g = new byte[4];
            this.i = i2;
            this.j = a.c(i2);
        }

        public final void write(int i2) throws IOException {
            if (this.h) {
                this.out.write(i2);
                return;
            }
            if (this.f5086a) {
                byte[] bArr = this.c;
                int i3 = this.f5087b;
                this.f5087b = i3 + 1;
                bArr[i3] = (byte) i2;
                if (this.f5087b >= this.d) {
                    this.out.write(a.b(this.g, this.c, this.d, this.i));
                    this.e += 4;
                    if (this.f && this.e >= 76) {
                        this.out.write(10);
                        this.e = 0;
                    }
                    this.f5087b = 0;
                }
            } else {
                byte[] bArr2 = this.j;
                int i4 = i2 & 127;
                if (bArr2[i4] > -5) {
                    byte[] bArr3 = this.c;
                    int i5 = this.f5087b;
                    this.f5087b = i5 + 1;
                    bArr3[i5] = (byte) i2;
                    if (this.f5087b >= this.d) {
                        this.out.write(this.g, 0, a.c(bArr3, this.g, 0, this.i));
                        this.f5087b = 0;
                    }
                } else if (bArr2[i4] != -5) {
                    throw new IOException("Invalid character in Base64 data.");
                }
            }
        }

        public final void write(byte[] bArr, int i2, int i3) throws IOException {
            if (this.h) {
                this.out.write(bArr, i2, i3);
                return;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                write(bArr[i2 + i4]);
            }
        }

        public final void flushBase64() throws IOException {
            if (this.f5087b <= 0) {
                return;
            }
            if (this.f5086a) {
                this.out.write(a.b(this.g, this.c, this.f5087b, this.i));
                this.f5087b = 0;
                return;
            }
            throw new IOException("Base64 input not properly padded.");
        }

        public final void close() throws IOException {
            flushBase64();
            super.close();
            this.c = null;
            this.out = null;
        }

        public final void suspendEncoding() throws IOException {
            flushBase64();
            this.h = true;
        }

        public final void resumeEncoding() {
            this.h = false;
        }
    }

    static {
        byte[] bArr = new byte[InputDeviceCompat.SOURCE_KEYBOARD];
        // fill-array-data instruction
        bArr[0] = -9;
        bArr[1] = -9;
        bArr[2] = -9;
        bArr[3] = -9;
        bArr[4] = -9;
        bArr[5] = -9;
        bArr[6] = -9;
        bArr[7] = -9;
        bArr[8] = -9;
        bArr[9] = -5;
        bArr[10] = -5;
        bArr[11] = -9;
        bArr[12] = -9;
        bArr[13] = -5;
        bArr[14] = -9;
        bArr[15] = -9;
        bArr[16] = -9;
        bArr[17] = -9;
        bArr[18] = -9;
        bArr[19] = -9;
        bArr[20] = -9;
        bArr[21] = -9;
        bArr[22] = -9;
        bArr[23] = -9;
        bArr[24] = -9;
        bArr[25] = -9;
        bArr[26] = -9;
        bArr[27] = -9;
        bArr[28] = -9;
        bArr[29] = -9;
        bArr[30] = -9;
        bArr[31] = -9;
        bArr[32] = -5;
        bArr[33] = -9;
        bArr[34] = -9;
        bArr[35] = -9;
        bArr[36] = -9;
        bArr[37] = -9;
        bArr[38] = -9;
        bArr[39] = -9;
        bArr[40] = -9;
        bArr[41] = -9;
        bArr[42] = -9;
        bArr[43] = -9;
        bArr[44] = -9;
        bArr[45] = 0;
        bArr[46] = -9;
        bArr[47] = -9;
        bArr[48] = 1;
        bArr[49] = 2;
        bArr[50] = 3;
        bArr[51] = 4;
        bArr[52] = 5;
        bArr[53] = 6;
        bArr[54] = 7;
        bArr[55] = 8;
        bArr[56] = 9;
        bArr[57] = 10;
        bArr[58] = -9;
        bArr[59] = -9;
        bArr[60] = -9;
        bArr[61] = -1;
        bArr[62] = -9;
        bArr[63] = -9;
        bArr[64] = -9;
        bArr[65] = 11;
        bArr[66] = 12;
        bArr[67] = 13;
        bArr[68] = 14;
        bArr[69] = 15;
        bArr[70] = 16;
        bArr[71] = 17;
        bArr[72] = 18;
        bArr[73] = 19;
        bArr[74] = 20;
        bArr[75] = 21;
        bArr[76] = 22;
        bArr[77] = 23;
        bArr[78] = 24;
        bArr[79] = 25;
        bArr[80] = 26;
        bArr[81] = 27;
        bArr[82] = 28;
        bArr[83] = 29;
        bArr[84] = 30;
        bArr[85] = 31;
        bArr[86] = 32;
        bArr[87] = 33;
        bArr[88] = 34;
        bArr[89] = 35;
        bArr[90] = 36;
        bArr[91] = -9;
        bArr[92] = -9;
        bArr[93] = -9;
        bArr[94] = -9;
        bArr[95] = 37;
        bArr[96] = -9;
        bArr[97] = 38;
        bArr[98] = 39;
        bArr[99] = 40;
        bArr[100] = 41;
        bArr[101] = 42;
        bArr[102] = 43;
        bArr[103] = 44;
        bArr[104] = 45;
        bArr[105] = 46;
        bArr[106] = 47;
        bArr[107] = 48;
        bArr[108] = 49;
        bArr[109] = 50;
        bArr[110] = 51;
        bArr[111] = 52;
        bArr[112] = 53;
        bArr[113] = 54;
        bArr[114] = 55;
        bArr[115] = 56;
        bArr[116] = 57;
        bArr[117] = 58;
        bArr[118] = 59;
        bArr[119] = 60;
        bArr[120] = 61;
        bArr[121] = 62;
        bArr[122] = 63;
        bArr[123] = -9;
        bArr[124] = -9;
        bArr[125] = -9;
        bArr[126] = -9;
        bArr[127] = -9;
        bArr[128] = -9;
        bArr[129] = -9;
        bArr[130] = -9;
        bArr[131] = -9;
        bArr[132] = -9;
        bArr[133] = -9;
        bArr[134] = -9;
        bArr[135] = -9;
        bArr[136] = -9;
        bArr[137] = -9;
        bArr[138] = -9;
        bArr[139] = -9;
        bArr[140] = -9;
        bArr[141] = -9;
        bArr[142] = -9;
        bArr[143] = -9;
        bArr[144] = -9;
        bArr[145] = -9;
        bArr[146] = -9;
        bArr[147] = -9;
        bArr[148] = -9;
        bArr[149] = -9;
        bArr[150] = -9;
        bArr[151] = -9;
        bArr[152] = -9;
        bArr[153] = -9;
        bArr[154] = -9;
        bArr[155] = -9;
        bArr[156] = -9;
        bArr[157] = -9;
        bArr[158] = -9;
        bArr[159] = -9;
        bArr[160] = -9;
        bArr[161] = -9;
        bArr[162] = -9;
        bArr[163] = -9;
        bArr[164] = -9;
        bArr[165] = -9;
        bArr[166] = -9;
        bArr[167] = -9;
        bArr[168] = -9;
        bArr[169] = -9;
        bArr[170] = -9;
        bArr[171] = -9;
        bArr[172] = -9;
        bArr[173] = -9;
        bArr[174] = -9;
        bArr[175] = -9;
        bArr[176] = -9;
        bArr[177] = -9;
        bArr[178] = -9;
        bArr[179] = -9;
        bArr[180] = -9;
        bArr[181] = -9;
        bArr[182] = -9;
        bArr[183] = -9;
        bArr[184] = -9;
        bArr[185] = -9;
        bArr[186] = -9;
        bArr[187] = -9;
        bArr[188] = -9;
        bArr[189] = -9;
        bArr[190] = -9;
        bArr[191] = -9;
        bArr[192] = -9;
        bArr[193] = -9;
        bArr[194] = -9;
        bArr[195] = -9;
        bArr[196] = -9;
        bArr[197] = -9;
        bArr[198] = -9;
        bArr[199] = -9;
        bArr[200] = -9;
        bArr[201] = -9;
        bArr[202] = -9;
        bArr[203] = -9;
        bArr[204] = -9;
        bArr[205] = -9;
        bArr[206] = -9;
        bArr[207] = -9;
        bArr[208] = -9;
        bArr[209] = -9;
        bArr[210] = -9;
        bArr[211] = -9;
        bArr[212] = -9;
        bArr[213] = -9;
        bArr[214] = -9;
        bArr[215] = -9;
        bArr[216] = -9;
        bArr[217] = -9;
        bArr[218] = -9;
        bArr[219] = -9;
        bArr[220] = -9;
        bArr[221] = -9;
        bArr[222] = -9;
        bArr[223] = -9;
        bArr[224] = -9;
        bArr[225] = -9;
        bArr[226] = -9;
        bArr[227] = -9;
        bArr[228] = -9;
        bArr[229] = -9;
        bArr[230] = -9;
        bArr[231] = -9;
        bArr[232] = -9;
        bArr[233] = -9;
        bArr[234] = -9;
        bArr[235] = -9;
        bArr[236] = -9;
        bArr[237] = -9;
        bArr[238] = -9;
        bArr[239] = -9;
        bArr[240] = -9;
        bArr[241] = -9;
        bArr[242] = -9;
        bArr[243] = -9;
        bArr[244] = -9;
        bArr[245] = -9;
        bArr[246] = -9;
        bArr[247] = -9;
        bArr[248] = -9;
        bArr[249] = -9;
        bArr[250] = -9;
        bArr[251] = -9;
        bArr[252] = -9;
        bArr[253] = -9;
        bArr[254] = -9;
        bArr[255] = -9;
        bArr[256] = -9;
        g = bArr;
    }

    private static final byte[] b(int i) {
        if ((i & 16) == 16) {
            return d;
        }
        if ((i & 32) == 32) {
            return f;
        }
        return f5082b;
    }

    /* access modifiers changed from: private */
    public static final byte[] c(int i) {
        if ((i & 16) == 16) {
            return e;
        }
        if ((i & 32) == 32) {
            return g;
        }
        return c;
    }

    private a() {
    }

    /* access modifiers changed from: private */
    public static byte[] b(byte[] bArr, byte[] bArr2, int i, int i2) {
        a(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* access modifiers changed from: private */
    public static byte[] a(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] b2 = b(i4);
        int i5 = 0;
        int i6 = (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0);
        if (i2 > 2) {
            i5 = (bArr[i + 2] << 24) >>> 24;
        }
        int i7 = i6 | i5;
        if (i2 == 1) {
            bArr2[i3] = b2[i7 >>> 18];
            bArr2[i3 + 1] = b2[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = 61;
            bArr2[i3 + 3] = 61;
            return bArr2;
        } else if (i2 == 2) {
            bArr2[i3] = b2[i7 >>> 18];
            bArr2[i3 + 1] = b2[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = b2[(i7 >>> 6) & 63];
            bArr2[i3 + 3] = 61;
            return bArr2;
        } else if (i2 != 3) {
            return bArr2;
        } else {
            bArr2[i3] = b2[i7 >>> 18];
            bArr2[i3 + 1] = b2[(i7 >>> 12) & 63];
            bArr2[i3 + 2] = b2[(i7 >>> 6) & 63];
            bArr2[i3 + 3] = b2[i7 & 63];
            return bArr2;
        }
    }

    public static void encode(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            b(bArr2, bArr, min, 0);
            byteBuffer2.put(bArr2);
        }
    }

    public static void encode(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        byte[] bArr = new byte[3];
        byte[] bArr2 = new byte[4];
        while (byteBuffer.hasRemaining()) {
            int min = Math.min(3, byteBuffer.remaining());
            byteBuffer.get(bArr, 0, min);
            b(bArr2, bArr, min, 0);
            for (int i = 0; i < 4; i++) {
                charBuffer.put((char) (bArr2[i] & c.END_OF_FRAME));
            }
        }
    }

    public static String encodeObject(Serializable serializable) throws IOException {
        return encodeObject(serializable, 0);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v0, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v5, resolved type: java.io.ByteArrayOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v4, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v6, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v2, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v10, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v11, resolved type: java.io.ObjectOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v12, resolved type: java.io.ObjectOutputStream} */
    /* JADX WARNING: type inference failed for: r1v0, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r1v2 */
    /* JADX WARNING: type inference failed for: r1v4 */
    /* JADX WARNING: type inference failed for: r1v9 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: type inference failed for: r1v11 */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:13|51|52|53|54|55|56|57|58|59) */
    /* JADX WARNING: Can't wrap try/catch for region: R(17:4|5|6|(5:8|9|10|11|12)(3:16|17|18)|19|20|21|22|23|24|25|26|27|28|29|30|31) */
    /* JADX WARNING: Can't wrap try/catch for region: R(19:2|3|4|5|6|(5:8|9|10|11|12)(3:16|17|18)|19|20|21|22|23|24|25|26|27|28|29|30|31) */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0053, code lost:
        return new java.lang.String(r1.toByteArray());
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x0035 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:25:0x0038 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:27:0x003b */
    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x003e */
    /* JADX WARNING: Missing exception handler attribute for start block: B:53:0x0077 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:55:0x007a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:57:0x007d */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String encodeObject(java.io.Serializable r5, int r6) throws java.io.IOException {
        /*
            if (r5 == 0) goto L_0x0081
            r0 = 0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x006b, all -> 0x0066 }
            r1.<init>()     // Catch:{ IOException -> 0x006b, all -> 0x0066 }
            com.pusher.java_websocket.e.a$b r2 = new com.pusher.java_websocket.e.a$b     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r3 = r6 | 1
            r2.<init>(r1, r3)     // Catch:{ IOException -> 0x0060, all -> 0x005c }
            r6 = r6 & 2
            if (r6 == 0) goto L_0x0027
            java.util.zip.GZIPOutputStream r6 = new java.util.zip.GZIPOutputStream     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r6.<init>(r2)     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            java.io.ObjectOutputStream r3 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0022, all -> 0x001f }
            r3.<init>(r6)     // Catch:{ IOException -> 0x0022, all -> 0x001f }
            r0 = r3
            goto L_0x002f
        L_0x001f:
            r5 = move-exception
            goto L_0x0074
        L_0x0022:
            r5 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x006f
        L_0x0027:
            java.io.ObjectOutputStream r6 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r6.<init>(r2)     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r4 = r0
            r0 = r6
            r6 = r4
        L_0x002f:
            r0.writeObject(r5)     // Catch:{ IOException -> 0x0022, all -> 0x001f }
            r0.close()     // Catch:{ Exception -> 0x0035 }
        L_0x0035:
            r6.close()     // Catch:{ Exception -> 0x0038 }
        L_0x0038:
            r2.close()     // Catch:{ Exception -> 0x003b }
        L_0x003b:
            r1.close()     // Catch:{ Exception -> 0x003e }
        L_0x003e:
            java.lang.String r5 = new java.lang.String     // Catch:{ UnsupportedEncodingException -> 0x004a }
            byte[] r6 = r1.toByteArray()     // Catch:{ UnsupportedEncodingException -> 0x004a }
            java.lang.String r0 = "US-ASCII"
            r5.<init>(r6, r0)     // Catch:{ UnsupportedEncodingException -> 0x004a }
            return r5
        L_0x004a:
            java.lang.String r5 = new java.lang.String
            byte[] r6 = r1.toByteArray()
            r5.<init>(r6)
            return r5
        L_0x0054:
            r5 = move-exception
            r6 = r0
            goto L_0x0074
        L_0x0057:
            r5 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
            goto L_0x006f
        L_0x005c:
            r5 = move-exception
            r6 = r0
            r2 = r6
            goto L_0x0074
        L_0x0060:
            r5 = move-exception
            r6 = r0
            r2 = r6
            r0 = r1
            r1 = r2
            goto L_0x006f
        L_0x0066:
            r5 = move-exception
            r6 = r0
            r1 = r6
            r2 = r1
            goto L_0x0074
        L_0x006b:
            r5 = move-exception
            r6 = r0
            r1 = r6
            r2 = r1
        L_0x006f:
            throw r5     // Catch:{ all -> 0x0070 }
        L_0x0070:
            r5 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L_0x0074:
            r0.close()     // Catch:{ Exception -> 0x0077 }
        L_0x0077:
            r6.close()     // Catch:{ Exception -> 0x007a }
        L_0x007a:
            r2.close()     // Catch:{ Exception -> 0x007d }
        L_0x007d:
            r1.close()     // Catch:{ Exception -> 0x0080 }
        L_0x0080:
            throw r5
        L_0x0081:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r6 = "Cannot serialize a null object."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.e.a.encodeObject(java.io.Serializable, int):java.lang.String");
    }

    public static String encodeBytes(byte[] bArr) {
        String str;
        try {
            str = encodeBytes(bArr, 0, bArr.length, 0);
        } catch (IOException e2) {
            if (f5081a) {
                str = null;
            } else {
                throw new AssertionError(e2.getMessage());
            }
        }
        if (f5081a || str != null) {
            return str;
        }
        throw new AssertionError();
    }

    public static String encodeBytes(byte[] bArr, int i) throws IOException {
        return encodeBytes(bArr, 0, bArr.length, i);
    }

    public static String encodeBytes(byte[] bArr, int i, int i2) {
        String str;
        try {
            str = encodeBytes(bArr, i, i2, 0);
        } catch (IOException e2) {
            if (f5081a) {
                str = null;
            } else {
                throw new AssertionError(e2.getMessage());
            }
        }
        if (f5081a || str != null) {
            return str;
        }
        throw new AssertionError();
    }

    public static String encodeBytes(byte[] bArr, int i, int i2, int i3) throws IOException {
        byte[] encodeBytesToBytes = encodeBytesToBytes(bArr, i, i2, i3);
        try {
            return new String(encodeBytesToBytes, "US-ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new String(encodeBytesToBytes);
        }
    }

    public static byte[] encodeBytesToBytes(byte[] bArr) {
        try {
            return encodeBytesToBytes(bArr, 0, bArr.length, 0);
        } catch (IOException e2) {
            if (f5081a) {
                return null;
            }
            throw new AssertionError("IOExceptions only come from GZipping, which is turned off: " + e2.getMessage());
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v21, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v22, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v15, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v23, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v24, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v16, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v18, resolved type: java.io.ByteArrayOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v25, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v22, resolved type: java.util.zip.GZIPOutputStream} */
    /* JADX WARNING: type inference failed for: r2v14, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r2v17 */
    /* JADX WARNING: type inference failed for: r2v19 */
    /* JADX WARNING: type inference failed for: r2v20 */
    /* JADX WARNING: type inference failed for: r2v21 */
    /* JADX WARNING: Can't wrap try/catch for region: R(12:13|14|15|16|17|18|19|20|21|22|23|25) */
    /* JADX WARNING: Can't wrap try/catch for region: R(17:8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|25) */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:31|32|45|46|47|48|49|50|51) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:19:0x0032 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:21:0x0035 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:47:0x005c */
    /* JADX WARNING: Missing exception handler attribute for start block: B:49:0x005f */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] encodeBytesToBytes(byte[] r18, int r19, int r20, int r21) throws java.io.IOException {
        /*
            r0 = r18
            r7 = r19
            r8 = r20
            if (r0 == 0) goto L_0x0110
            if (r7 < 0) goto L_0x0100
            if (r8 < 0) goto L_0x00f0
            int r1 = r7 + r8
            int r2 = r0.length
            r9 = 1
            r10 = 0
            if (r1 > r2) goto L_0x00cd
            r1 = r21 & 2
            if (r1 == 0) goto L_0x0063
            r1 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0052, all -> 0x004e }
            r2.<init>()     // Catch:{ IOException -> 0x0052, all -> 0x004e }
            com.pusher.java_websocket.e.a$b r3 = new com.pusher.java_websocket.e.a$b     // Catch:{ IOException -> 0x0049, all -> 0x0046 }
            r4 = r21 | 1
            r3.<init>(r2, r4)     // Catch:{ IOException -> 0x0049, all -> 0x0046 }
            java.util.zip.GZIPOutputStream r4 = new java.util.zip.GZIPOutputStream     // Catch:{ IOException -> 0x0043, all -> 0x0041 }
            r4.<init>(r3)     // Catch:{ IOException -> 0x0043, all -> 0x0041 }
            r4.write(r0, r7, r8)     // Catch:{ IOException -> 0x003f, all -> 0x003d }
            r4.close()     // Catch:{ IOException -> 0x003f, all -> 0x003d }
            r4.close()     // Catch:{ Exception -> 0x0032 }
        L_0x0032:
            r3.close()     // Catch:{ Exception -> 0x0035 }
        L_0x0035:
            r2.close()     // Catch:{ Exception -> 0x0038 }
        L_0x0038:
            byte[] r0 = r2.toByteArray()
            return r0
        L_0x003d:
            r0 = move-exception
            goto L_0x0058
        L_0x003f:
            r0 = move-exception
            goto L_0x004c
        L_0x0041:
            r0 = move-exception
            goto L_0x0059
        L_0x0043:
            r0 = move-exception
            r4 = r1
            goto L_0x004c
        L_0x0046:
            r0 = move-exception
            r3 = r1
            goto L_0x0059
        L_0x0049:
            r0 = move-exception
            r3 = r1
            r4 = r3
        L_0x004c:
            r1 = r2
            goto L_0x0055
        L_0x004e:
            r0 = move-exception
            r2 = r1
            r3 = r2
            goto L_0x0059
        L_0x0052:
            r0 = move-exception
            r3 = r1
            r4 = r3
        L_0x0055:
            throw r0     // Catch:{ all -> 0x0056 }
        L_0x0056:
            r0 = move-exception
            r2 = r1
        L_0x0058:
            r1 = r4
        L_0x0059:
            r1.close()     // Catch:{ Exception -> 0x005c }
        L_0x005c:
            r3.close()     // Catch:{ Exception -> 0x005f }
        L_0x005f:
            r2.close()     // Catch:{ Exception -> 0x0062 }
        L_0x0062:
            throw r0
        L_0x0063:
            r1 = r21 & 8
            if (r1 == 0) goto L_0x0069
            r11 = 1
            goto L_0x006a
        L_0x0069:
            r11 = 0
        L_0x006a:
            int r1 = r8 / 3
            r12 = 4
            int r1 = r1 * 4
            int r2 = r8 % 3
            if (r2 <= 0) goto L_0x0075
            r2 = 4
            goto L_0x0076
        L_0x0075:
            r2 = 0
        L_0x0076:
            int r1 = r1 + r2
            if (r11 == 0) goto L_0x007c
            int r2 = r1 / 76
            int r1 = r1 + r2
        L_0x007c:
            byte[] r13 = new byte[r1]
            int r14 = r8 + -2
            r15 = 0
            r16 = 0
            r17 = 0
        L_0x0085:
            if (r15 >= r14) goto L_0x00ae
            int r2 = r15 + r7
            r3 = 3
            r1 = r18
            r4 = r13
            r5 = r16
            r6 = r21
            a(r1, r2, r3, r4, r5, r6)
            int r1 = r17 + 4
            if (r11 == 0) goto L_0x00a7
            r2 = 76
            if (r1 < r2) goto L_0x00a7
            int r1 = r16 + 4
            r2 = 10
            r13[r1] = r2
            int r16 = r16 + 1
            r17 = 0
            goto L_0x00a9
        L_0x00a7:
            r17 = r1
        L_0x00a9:
            int r15 = r15 + 3
            int r16 = r16 + 4
            goto L_0x0085
        L_0x00ae:
            if (r15 >= r8) goto L_0x00c0
            int r2 = r15 + r7
            int r3 = r8 - r15
            r1 = r18
            r4 = r13
            r5 = r16
            r6 = r21
            a(r1, r2, r3, r4, r5, r6)
            int r16 = r16 + 4
        L_0x00c0:
            r0 = r16
            int r1 = r13.length
            int r1 = r1 - r9
            if (r0 > r1) goto L_0x00cc
            byte[] r1 = new byte[r0]
            java.lang.System.arraycopy(r13, r10, r1, r10, r0)
            return r1
        L_0x00cc:
            return r13
        L_0x00cd:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r19)
            r2[r10] = r3
            java.lang.Integer r3 = java.lang.Integer.valueOf(r20)
            r2[r9] = r3
            int r0 = r0.length
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r3 = 2
            r2[r3] = r0
            java.lang.String r0 = "Cannot have offset of %d and length of %d with array of length %d"
            java.lang.String r0 = java.lang.String.format(r0, r2)
            r1.<init>(r0)
            throw r1
        L_0x00f0:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = java.lang.String.valueOf(r20)
            java.lang.String r2 = "Cannot have length offset: "
            java.lang.String r1 = r2.concat(r1)
            r0.<init>(r1)
            throw r0
        L_0x0100:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = java.lang.String.valueOf(r19)
            java.lang.String r2 = "Cannot have negative offset: "
            java.lang.String r1 = r2.concat(r1)
            r0.<init>(r1)
            throw r0
        L_0x0110:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "Cannot serialize a null array."
            r0.<init>(r1)
            goto L_0x0119
        L_0x0118:
            throw r0
        L_0x0119:
            goto L_0x0118
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.e.a.encodeBytesToBytes(byte[], int, int, int):byte[]");
    }

    /* access modifiers changed from: private */
    public static int c(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException("Source array was null.");
        } else if (bArr2 == null) {
            throw new NullPointerException("Destination array was null.");
        } else if (3 < bArr.length) {
            if (i >= 0) {
                int i3 = i + 2;
                if (i3 < bArr2.length) {
                    byte[] c2 = c(i2);
                    if (bArr[2] == 61) {
                        bArr2[i] = (byte) ((((c2[bArr[1]] & c.END_OF_FRAME) << u.MESSAGE_TYPE_PINGREQ) | ((c2[bArr[0]] & c.END_OF_FRAME) << 18)) >>> 16);
                        return 1;
                    } else if (bArr[3] == 61) {
                        int i4 = ((c2[bArr[2]] & c.END_OF_FRAME) << 6) | ((c2[bArr[0]] & c.END_OF_FRAME) << 18) | ((c2[bArr[1]] & c.END_OF_FRAME) << u.MESSAGE_TYPE_PINGREQ);
                        bArr2[i] = (byte) (i4 >>> 16);
                        bArr2[i + 1] = (byte) (i4 >>> 8);
                        return 2;
                    } else {
                        byte b2 = (c2[bArr[3]] & c.END_OF_FRAME) | ((c2[bArr[0]] & c.END_OF_FRAME) << 18) | ((c2[bArr[1]] & c.END_OF_FRAME) << u.MESSAGE_TYPE_PINGREQ) | ((c2[bArr[2]] & c.END_OF_FRAME) << 6);
                        bArr2[i] = (byte) (b2 >> 16);
                        bArr2[i + 1] = (byte) (b2 >> 8);
                        bArr2[i3] = (byte) b2;
                        return 3;
                    }
                }
            }
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", new Object[]{Integer.valueOf(bArr2.length), Integer.valueOf(i)}));
        } else {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", new Object[]{Integer.valueOf(bArr.length), 0}));
        }
    }

    public static byte[] decode(byte[] bArr) throws IOException {
        return decode(bArr, 0, bArr.length, 0);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) throws IOException {
        if (bArr != null) {
            if (i >= 0) {
                int i4 = i + i2;
                if (i4 <= bArr.length) {
                    if (i2 == 0) {
                        return new byte[0];
                    }
                    if (i2 >= 4) {
                        byte[] c2 = c(i3);
                        byte[] bArr2 = new byte[((i2 * 3) / 4)];
                        byte[] bArr3 = new byte[4];
                        int i5 = 0;
                        int i6 = 0;
                        while (i < i4) {
                            byte b2 = c2[bArr[i] & c.END_OF_FRAME];
                            if (b2 >= -5) {
                                if (b2 >= -1) {
                                    int i7 = i5 + 1;
                                    bArr3[i5] = bArr[i];
                                    if (i7 > 3) {
                                        i6 += c(bArr3, bArr2, i6, i3);
                                        if (bArr[i] == 61) {
                                            break;
                                        }
                                        i5 = 0;
                                    } else {
                                        i5 = i7;
                                    }
                                }
                                i++;
                            } else {
                                throw new IOException(String.format("Bad Base64 input character decimal %d in array position %d", new Object[]{Integer.valueOf(bArr[i] & c.END_OF_FRAME), Integer.valueOf(i)}));
                            }
                        }
                        byte[] bArr4 = new byte[i6];
                        System.arraycopy(bArr2, 0, bArr4, 0, i6);
                        return bArr4;
                    }
                    throw new IllegalArgumentException("Base64-encoded string must have at least four characters, but length specified was ".concat(String.valueOf(i2)));
                }
            }
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)}));
        }
        throw new NullPointerException("Cannot decode null source array.");
    }

    public static byte[] decode(String str) throws IOException {
        return decode(str, 0);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: java.util.zip.GZIPInputStream} */
    /* JADX WARNING: type inference failed for: r0v7 */
    /* JADX WARNING: type inference failed for: r0v9 */
    /* JADX WARNING: type inference failed for: r0v10, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARNING: type inference failed for: r0v11 */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:16|17|18|19|20|(6:21|22|(3:23|24|(1:26)(1:67))|27|28|29)|30|31|32|33) */
    /* JADX WARNING: Can't wrap try/catch for region: R(10:52|53|54|55|56|57|58|59|60|61) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:30:0x0059 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x005c */
    /* JADX WARNING: Missing exception handler attribute for start block: B:57:0x0085 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:59:0x0088 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static byte[] decode(java.lang.String r5, int r6) throws java.io.IOException {
        /*
            if (r5 == 0) goto L_0x008d
            java.lang.String r0 = "US-ASCII"
            byte[] r5 = r5.getBytes(r0)     // Catch:{ UnsupportedEncodingException -> 0x0009 }
            goto L_0x000d
        L_0x0009:
            byte[] r5 = r5.getBytes()
        L_0x000d:
            int r0 = r5.length
            r1 = 0
            byte[] r5 = decode(r5, r1, r0, r6)
            r0 = 4
            r6 = r6 & r0
            r2 = 1
            if (r6 == 0) goto L_0x001a
            r6 = 1
            goto L_0x001b
        L_0x001a:
            r6 = 0
        L_0x001b:
            if (r5 == 0) goto L_0x008c
            int r3 = r5.length
            if (r3 < r0) goto L_0x008c
            if (r6 != 0) goto L_0x008c
            byte r6 = r5[r1]
            r6 = r6 & 255(0xff, float:3.57E-43)
            byte r0 = r5[r2]
            int r0 = r0 << 8
            r2 = 65280(0xff00, float:9.1477E-41)
            r0 = r0 & r2
            r6 = r6 | r0
            r0 = 35615(0x8b1f, float:4.9907E-41)
            if (r0 != r6) goto L_0x008c
            r6 = 2048(0x800, float:2.87E-42)
            byte[] r6 = new byte[r6]
            r0 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch:{ IOException -> 0x0075, all -> 0x0071 }
            r2.<init>()     // Catch:{ IOException -> 0x0075, all -> 0x0071 }
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch:{ IOException -> 0x006c, all -> 0x0069 }
            r3.<init>(r5)     // Catch:{ IOException -> 0x006c, all -> 0x0069 }
            java.util.zip.GZIPInputStream r4 = new java.util.zip.GZIPInputStream     // Catch:{ IOException -> 0x0066, all -> 0x0064 }
            r4.<init>(r3)     // Catch:{ IOException -> 0x0066, all -> 0x0064 }
        L_0x0048:
            int r0 = r4.read(r6)     // Catch:{ IOException -> 0x0062, all -> 0x0060 }
            if (r0 < 0) goto L_0x0052
            r2.write(r6, r1, r0)     // Catch:{ IOException -> 0x0062, all -> 0x0060 }
            goto L_0x0048
        L_0x0052:
            byte[] r5 = r2.toByteArray()     // Catch:{ IOException -> 0x0062, all -> 0x0060 }
            r2.close()     // Catch:{ Exception -> 0x0059 }
        L_0x0059:
            r4.close()     // Catch:{ Exception -> 0x005c }
        L_0x005c:
            r3.close()     // Catch:{ Exception -> 0x008c }
            goto L_0x008c
        L_0x0060:
            r5 = move-exception
            goto L_0x0081
        L_0x0062:
            r6 = move-exception
            goto L_0x006f
        L_0x0064:
            r5 = move-exception
            goto L_0x0082
        L_0x0066:
            r6 = move-exception
            r4 = r0
            goto L_0x006f
        L_0x0069:
            r5 = move-exception
            r3 = r0
            goto L_0x0082
        L_0x006c:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L_0x006f:
            r0 = r2
            goto L_0x0078
        L_0x0071:
            r5 = move-exception
            r2 = r0
            r3 = r2
            goto L_0x0082
        L_0x0075:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L_0x0078:
            r6.printStackTrace()     // Catch:{ all -> 0x007f }
            r0.close()     // Catch:{ Exception -> 0x0059 }
            goto L_0x0059
        L_0x007f:
            r5 = move-exception
            r2 = r0
        L_0x0081:
            r0 = r4
        L_0x0082:
            r2.close()     // Catch:{ Exception -> 0x0085 }
        L_0x0085:
            r0.close()     // Catch:{ Exception -> 0x0088 }
        L_0x0088:
            r3.close()     // Catch:{ Exception -> 0x008b }
        L_0x008b:
            throw r5
        L_0x008c:
            return r5
        L_0x008d:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r6 = "Input string was null."
            r5.<init>(r6)
            goto L_0x0096
        L_0x0095:
            throw r5
        L_0x0096:
            goto L_0x0095
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.e.a.decode(java.lang.String, int):byte[]");
    }

    public static Object decodeToObject(String str) throws IOException, ClassNotFoundException {
        return decodeToObject(str, 0, null);
    }

    /* JADX WARNING: type inference failed for: r2v1 */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.io.ObjectInputStream] */
    /* JADX WARNING: type inference failed for: r2v3 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r2v5 */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:14|30|31|32|33|34) */
    /* JADX WARNING: Can't wrap try/catch for region: R(9:1|2|(2:4|5)(1:6)|7|8|9|10|11|12) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x001f */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x003c */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.Object decodeToObject(java.lang.String r1, int r2, final java.lang.ClassLoader r3) throws java.io.IOException, java.lang.ClassNotFoundException {
        /*
            byte[] r1 = decode(r1, r2)
            r2 = 0
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream     // Catch:{ IOException -> 0x0033, ClassNotFoundException -> 0x0030, all -> 0x002d }
            r0.<init>(r1)     // Catch:{ IOException -> 0x0033, ClassNotFoundException -> 0x0030, all -> 0x002d }
            if (r3 != 0) goto L_0x0012
            java.io.ObjectInputStream r1 = new java.io.ObjectInputStream     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            r1.<init>(r0)     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            goto L_0x0017
        L_0x0012:
            com.pusher.java_websocket.e.a$1 r1 = new com.pusher.java_websocket.e.a$1     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            r1.<init>(r0, r3)     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
        L_0x0017:
            r2 = r1
            java.lang.Object r1 = r2.readObject()     // Catch:{ IOException -> 0x0029, ClassNotFoundException -> 0x0025, all -> 0x0023 }
            r0.close()     // Catch:{ Exception -> 0x001f }
        L_0x001f:
            r2.close()     // Catch:{ Exception -> 0x0022 }
        L_0x0022:
            return r1
        L_0x0023:
            r1 = move-exception
            goto L_0x0039
        L_0x0025:
            r1 = move-exception
            r3 = r2
            r2 = r0
            goto L_0x0032
        L_0x0029:
            r1 = move-exception
            r3 = r2
            r2 = r0
            goto L_0x0035
        L_0x002d:
            r1 = move-exception
            r0 = r2
            goto L_0x0039
        L_0x0030:
            r1 = move-exception
            r3 = r2
        L_0x0032:
            throw r1     // Catch:{ all -> 0x0036 }
        L_0x0033:
            r1 = move-exception
            r3 = r2
        L_0x0035:
            throw r1     // Catch:{ all -> 0x0036 }
        L_0x0036:
            r1 = move-exception
            r0 = r2
            r2 = r3
        L_0x0039:
            r0.close()     // Catch:{ Exception -> 0x003c }
        L_0x003c:
            r2.close()     // Catch:{ Exception -> 0x003f }
        L_0x003f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.e.a.decodeToObject(java.lang.String, int, java.lang.ClassLoader):java.lang.Object");
    }

    public static void encodeToFile(byte[] bArr, String str) throws IOException {
        if (bArr != null) {
            b bVar = null;
            try {
                b bVar2 = new b(new FileOutputStream(str), 1);
                try {
                    bVar2.write(bArr);
                    try {
                        bVar2.close();
                    } catch (Exception unused) {
                    }
                } catch (IOException e2) {
                    e = e2;
                    bVar = bVar2;
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bVar = bVar2;
                    try {
                        bVar.close();
                    } catch (Exception unused2) {
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                throw e;
            }
        } else {
            throw new NullPointerException("Data to encode was null.");
        }
    }

    public static void decodeToFile(String str, String str2) throws IOException {
        b bVar = null;
        try {
            b bVar2 = new b(new FileOutputStream(str2), 0);
            try {
                bVar2.write(str.getBytes("US-ASCII"));
                try {
                    bVar2.close();
                } catch (Exception unused) {
                }
            } catch (IOException e2) {
                e = e2;
                bVar = bVar2;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                try {
                    bVar.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            throw e;
        }
    }

    public static byte[] decodeFromFile(String str) throws IOException {
        C0100a aVar = null;
        try {
            File file = new File(str);
            if (file.length() <= 2147483647L) {
                byte[] bArr = new byte[((int) file.length())];
                C0100a aVar2 = new C0100a(new BufferedInputStream(new FileInputStream(file)), 0);
                int i = 0;
                while (true) {
                    try {
                        int read = aVar2.read(bArr, i, 4096);
                        if (read < 0) {
                            break;
                        }
                        i += read;
                    } catch (IOException e2) {
                        e = e2;
                        aVar = aVar2;
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        aVar = aVar2;
                        try {
                            aVar.close();
                        } catch (Exception unused) {
                        }
                        throw th;
                    }
                }
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                try {
                    aVar2.close();
                } catch (Exception unused2) {
                }
                return bArr2;
            }
            throw new IOException("File is too big for this convenience method (" + file.length() + " bytes).");
        } catch (IOException e3) {
            e = e3;
            throw e;
        }
    }

    public static String encodeFromFile(String str) throws IOException {
        C0100a aVar = null;
        try {
            File file = new File(str);
            double length = (double) file.length();
            Double.isNaN(length);
            byte[] bArr = new byte[Math.max((int) ((length * 1.4d) + 1.0d), 40)];
            C0100a aVar2 = new C0100a(new BufferedInputStream(new FileInputStream(file)), 1);
            int i = 0;
            while (true) {
                try {
                    int read = aVar2.read(bArr, i, 4096);
                    if (read < 0) {
                        break;
                    }
                    i += read;
                } catch (IOException e2) {
                    e = e2;
                    aVar = aVar2;
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    aVar = aVar2;
                    try {
                        aVar.close();
                    } catch (Exception unused) {
                    }
                    throw th;
                }
            }
            String str2 = new String(bArr, 0, i, "US-ASCII");
            try {
                aVar2.close();
            } catch (Exception unused2) {
            }
            return str2;
        } catch (IOException e3) {
            e = e3;
            throw e;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws IOException {
        String encodeFromFile = encodeFromFile(str);
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str2));
            try {
                bufferedOutputStream2.write(encodeFromFile.getBytes("US-ASCII"));
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused) {
                }
            } catch (IOException e2) {
                e = e2;
                bufferedOutputStream = bufferedOutputStream2;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = bufferedOutputStream2;
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            throw e;
        }
    }

    public static void decodeFileToFile(String str, String str2) throws IOException {
        byte[] decodeFromFile = decodeFromFile(str);
        BufferedOutputStream bufferedOutputStream = null;
        try {
            BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(str2));
            try {
                bufferedOutputStream2.write(decodeFromFile);
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused) {
                }
            } catch (IOException e2) {
                e = e2;
                bufferedOutputStream = bufferedOutputStream2;
                try {
                    throw e;
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream = bufferedOutputStream2;
                try {
                    bufferedOutputStream.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            throw e;
        }
    }
}
