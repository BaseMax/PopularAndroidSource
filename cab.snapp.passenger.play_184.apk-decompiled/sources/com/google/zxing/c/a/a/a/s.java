package com.google.zxing.c.a.a.a;

import com.google.zxing.c.a.a.a.m;
import com.google.zxing.common.a;
import com.google.zxing.d;
import com.google.zxing.h;

final class s {

    /* renamed from: a  reason: collision with root package name */
    private final a f4263a;

    /* renamed from: b  reason: collision with root package name */
    private final m f4264b = new m();
    private final StringBuilder c = new StringBuilder();

    s(a aVar) {
        this.f4263a = aVar;
    }

    /* access modifiers changed from: package-private */
    public final String a(StringBuilder sb, int i) throws h, d {
        String str;
        String str2 = null;
        while (true) {
            o a2 = a(i, str2);
            String a3 = r.a(a2.f4257a);
            if (a3 != null) {
                sb.append(a3);
            }
            if (a2.c) {
                str = String.valueOf(a2.f4258b);
            } else {
                str = null;
            }
            if (i == a2.d) {
                return sb.toString();
            }
            i = a2.d;
            str2 = str;
        }
    }

    private boolean a(int i) {
        if (i + 7 <= this.f4263a.getSize()) {
            int i2 = i;
            while (true) {
                int i3 = i + 3;
                if (i2 >= i3) {
                    return this.f4263a.get(i3);
                }
                if (this.f4263a.get(i2)) {
                    return true;
                }
                i2++;
            }
        } else if (i + 4 <= this.f4263a.getSize()) {
            return true;
        } else {
            return false;
        }
    }

    private p b(int i) throws d {
        int i2 = i + 7;
        if (i2 > this.f4263a.getSize()) {
            if (a(i, 4) == 0) {
                return new p(this.f4263a.getSize(), 10, 10);
            }
            return new p(this.f4263a.getSize(), r4 - 1, 10);
        }
        int a2 = a(i, 7) - 8;
        return new p(i2, a2 / 11, a2 % 11);
    }

    /* access modifiers changed from: package-private */
    public final int a(int i, int i2) {
        return a(this.f4263a, i, i2);
    }

    static int a(a aVar, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            if (aVar.get(i + i4)) {
                i3 |= 1 << ((i2 - i4) - 1);
            }
        }
        return i3;
    }

    /* access modifiers changed from: package-private */
    public final o a(int i, String str) throws d {
        this.c.setLength(0);
        if (str != null) {
            this.c.append(str);
        }
        this.f4264b.f4253a = i;
        o a2 = a();
        if (a2 == null || !a2.c) {
            return new o(this.f4264b.f4253a, this.c.toString());
        }
        return new o(this.f4264b.f4253a, this.c.toString(), a2.f4258b);
    }

    private o a() throws d {
        boolean z;
        l lVar;
        do {
            int i = this.f4264b.f4253a;
            if (this.f4264b.a()) {
                lVar = d();
                z = lVar.f4252b;
            } else if (this.f4264b.b()) {
                lVar = c();
                z = lVar.f4252b;
            } else {
                lVar = b();
                z = lVar.f4252b;
            }
            if (!(i != this.f4264b.f4253a) && !z) {
                break;
            }
        } while (!z);
        return lVar.f4251a;
    }

    private l b() throws d {
        o oVar;
        while (a(this.f4264b.f4253a)) {
            p b2 = b(this.f4264b.f4253a);
            this.f4264b.f4253a = b2.d;
            if (b2.a()) {
                if (b2.b()) {
                    oVar = new o(this.f4264b.f4253a, this.c.toString());
                } else {
                    oVar = new o(this.f4264b.f4253a, this.c.toString(), b2.f4260b);
                }
                return new l(oVar, true);
            }
            this.c.append(b2.f4259a);
            if (b2.b()) {
                return new l(new o(this.f4264b.f4253a, this.c.toString()), true);
            }
            this.c.append(b2.f4260b);
        }
        if (i(this.f4264b.f4253a)) {
            this.f4264b.f4254b = m.a.ALPHA$1376b33b;
            this.f4264b.a(4);
        }
        return new l();
    }

    private l c() throws d {
        while (c(this.f4264b.f4253a)) {
            n d = d(this.f4264b.f4253a);
            this.f4264b.f4253a = d.d;
            if (d.a()) {
                return new l(new o(this.f4264b.f4253a, this.c.toString()), true);
            }
            this.c.append(d.f4256a);
        }
        if (h(this.f4264b.f4253a)) {
            this.f4264b.a(3);
            this.f4264b.f4254b = m.a.NUMERIC$1376b33b;
        } else if (g(this.f4264b.f4253a)) {
            if (this.f4264b.f4253a + 5 < this.f4263a.getSize()) {
                this.f4264b.a(5);
            } else {
                this.f4264b.f4253a = this.f4263a.getSize();
            }
            this.f4264b.f4254b = m.a.ALPHA$1376b33b;
        }
        return new l();
    }

    private l d() {
        while (e(this.f4264b.f4253a)) {
            n f = f(this.f4264b.f4253a);
            this.f4264b.f4253a = f.d;
            if (f.a()) {
                return new l(new o(this.f4264b.f4253a, this.c.toString()), true);
            }
            this.c.append(f.f4256a);
        }
        if (h(this.f4264b.f4253a)) {
            this.f4264b.a(3);
            this.f4264b.f4254b = m.a.NUMERIC$1376b33b;
        } else if (g(this.f4264b.f4253a)) {
            if (this.f4264b.f4253a + 5 < this.f4263a.getSize()) {
                this.f4264b.a(5);
            } else {
                this.f4264b.f4253a = this.f4263a.getSize();
            }
            this.f4264b.f4254b = m.a.ISO_IEC_646$1376b33b;
        }
        return new l();
    }

    private boolean c(int i) {
        if (i + 5 > this.f4263a.getSize()) {
            return false;
        }
        int a2 = a(i, 5);
        if (a2 >= 5 && a2 < 16) {
            return true;
        }
        if (i + 7 > this.f4263a.getSize()) {
            return false;
        }
        int a3 = a(i, 7);
        if (a3 >= 64 && a3 < 116) {
            return true;
        }
        if (i + 8 > this.f4263a.getSize()) {
            return false;
        }
        int a4 = a(i, 8);
        if (a4 < 232 || a4 >= 253) {
            return false;
        }
        return true;
    }

    private n d(int i) throws d {
        char c2;
        int a2 = a(i, 5);
        if (a2 == 15) {
            return new n(i + 5, '$');
        }
        if (a2 >= 5 && a2 < 15) {
            return new n(i + 5, (char) ((a2 + 48) - 5));
        }
        int a3 = a(i, 7);
        if (a3 >= 64 && a3 < 90) {
            return new n(i + 7, (char) (a3 + 1));
        }
        if (a3 >= 90 && a3 < 116) {
            return new n(i + 7, (char) (a3 + 7));
        }
        switch (a(i, 8)) {
            case 232:
                c2 = '!';
                break;
            case 233:
                c2 = '\"';
                break;
            case 234:
                c2 = '%';
                break;
            case 235:
                c2 = '&';
                break;
            case 236:
                c2 = '\'';
                break;
            case 237:
                c2 = '(';
                break;
            case 238:
                c2 = ')';
                break;
            case 239:
                c2 = '*';
                break;
            case 240:
                c2 = '+';
                break;
            case 241:
                c2 = ',';
                break;
            case 242:
                c2 = '-';
                break;
            case 243:
                c2 = '.';
                break;
            case 244:
                c2 = '/';
                break;
            case 245:
                c2 = ':';
                break;
            case 246:
                c2 = ';';
                break;
            case 247:
                c2 = '<';
                break;
            case 248:
                c2 = '=';
                break;
            case 249:
                c2 = '>';
                break;
            case 250:
                c2 = '?';
                break;
            case 251:
                c2 = '_';
                break;
            case 252:
                c2 = ' ';
                break;
            default:
                throw d.getFormatInstance();
        }
        return new n(i + 8, c2);
    }

    private boolean e(int i) {
        if (i + 5 > this.f4263a.getSize()) {
            return false;
        }
        int a2 = a(i, 5);
        if (a2 >= 5 && a2 < 16) {
            return true;
        }
        if (i + 6 > this.f4263a.getSize()) {
            return false;
        }
        int a3 = a(i, 6);
        if (a3 < 16 || a3 >= 63) {
            return false;
        }
        return true;
    }

    private n f(int i) {
        char c2;
        int a2 = a(i, 5);
        if (a2 == 15) {
            return new n(i + 5, '$');
        }
        if (a2 >= 5 && a2 < 15) {
            return new n(i + 5, (char) ((a2 + 48) - 5));
        }
        int a3 = a(i, 6);
        if (a3 >= 32 && a3 < 58) {
            return new n(i + 6, (char) (a3 + 33));
        }
        switch (a3) {
            case 58:
                c2 = '*';
                break;
            case 59:
                c2 = ',';
                break;
            case 60:
                c2 = '-';
                break;
            case 61:
                c2 = '.';
                break;
            case 62:
                c2 = '/';
                break;
            default:
                throw new IllegalStateException("Decoding invalid alphanumeric value: ".concat(String.valueOf(a3)));
        }
        return new n(i + 6, c2);
    }

    private boolean g(int i) {
        if (i + 1 > this.f4263a.getSize()) {
            return false;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = i2 + i;
            if (i3 >= this.f4263a.getSize()) {
                break;
            }
            if (i2 == 2) {
                if (!this.f4263a.get(i + 2)) {
                    return false;
                }
            } else if (this.f4263a.get(i3)) {
                return false;
            }
        }
        return true;
    }

    private boolean h(int i) {
        int i2 = i + 3;
        if (i2 > this.f4263a.getSize()) {
            return false;
        }
        while (i < i2) {
            if (this.f4263a.get(i)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private boolean i(int i) {
        if (i + 1 > this.f4263a.getSize()) {
            return false;
        }
        int i2 = 0;
        while (i2 < 4) {
            int i3 = i2 + i;
            if (i3 >= this.f4263a.getSize()) {
                break;
            } else if (this.f4263a.get(i3)) {
                return false;
            } else {
                i2++;
            }
        }
        return true;
    }
}
