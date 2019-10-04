package com.google.android.gms.internal;

import androidx.appcompat.widget.ActivityChooserView;
import com.pusher.java_websocket.drafts.c;
import java.io.IOException;
import org.eclipse.paho.a.a.a.a.u;

public final class so {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f3516a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3517b;
    private final int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int i;
    private int j = 64;
    private int k = 67108864;

    private so(byte[] bArr, int i2) {
        this.f3516a = bArr;
        this.f3517b = 0;
        int i3 = i2 + 0;
        this.d = i3;
        this.c = i3;
        this.f = 0;
    }

    private final void a() {
        this.d += this.e;
        int i2 = this.d;
        int i3 = this.h;
        if (i2 > i3) {
            this.e = i2 - i3;
            this.d = i2 - this.e;
            return;
        }
        this.e = 0;
    }

    private final void a(int i2) throws IOException {
        if (i2 >= 0) {
            int i3 = this.f;
            int i4 = i3 + i2;
            int i5 = this.h;
            if (i4 > i5) {
                a(i5 - i3);
                throw sw.a();
            } else if (i2 <= this.d - i3) {
                this.f = i3 + i2;
            } else {
                throw sw.a();
            }
        } else {
            throw sw.b();
        }
    }

    private final byte b() throws IOException {
        int i2 = this.f;
        if (i2 != this.d) {
            byte[] bArr = this.f3516a;
            this.f = i2 + 1;
            return bArr[i2];
        }
        throw sw.a();
    }

    public static so zzbe(byte[] bArr) {
        return zzn(bArr, 0, bArr.length);
    }

    public static so zzn(byte[] bArr, int i2, int i3) {
        return new so(bArr, i3);
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, int i3) {
        int i4 = this.f;
        int i5 = this.f3517b;
        if (i2 > i4 - i5) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i2);
            sb.append(" is beyond current ");
            sb.append(i4 - i5);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 >= 0) {
            this.f = i5 + i2;
            this.g = i3;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final int getPosition() {
        return this.f - this.f3517b;
    }

    public final byte[] readBytes() throws IOException {
        int zzcwi = zzcwi();
        if (zzcwi < 0) {
            throw sw.b();
        } else if (zzcwi == 0) {
            return ta.zzpnv;
        } else {
            int i2 = this.d;
            int i3 = this.f;
            if (zzcwi <= i2 - i3) {
                byte[] bArr = new byte[zzcwi];
                System.arraycopy(this.f3516a, i3, bArr, 0, zzcwi);
                this.f += zzcwi;
                return bArr;
            }
            throw sw.a();
        }
    }

    public final String readString() throws IOException {
        int zzcwi = zzcwi();
        if (zzcwi >= 0) {
            int i2 = this.d;
            int i3 = this.f;
            if (zzcwi <= i2 - i3) {
                String str = new String(this.f3516a, i3, zzcwi, sv.f3526a);
                this.f += zzcwi;
                return str;
            }
            throw sw.a();
        }
        throw sw.b();
    }

    public final void zza(sx sxVar) throws IOException {
        int zzcwi = zzcwi();
        if (this.i < this.j) {
            int zzks = zzks(zzcwi);
            this.i++;
            sxVar.zza(this);
            zzkp(0);
            this.i--;
            zzkt(zzks);
            return;
        }
        throw sw.d();
    }

    public final void zza(sx sxVar, int i2) throws IOException {
        int i3 = this.i;
        if (i3 < this.j) {
            this.i = i3 + 1;
            sxVar.zza(this);
            zzkp((i2 << 3) | 4);
            this.i--;
            return;
        }
        throw sw.d();
    }

    public final byte[] zzal(int i2, int i3) {
        if (i3 == 0) {
            return ta.zzpnv;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.f3516a, this.f3517b + i2, bArr, 0, i3);
        return bArr;
    }

    public final int zzcvt() throws IOException {
        if (this.f == this.d) {
            this.g = 0;
            return 0;
        }
        this.g = zzcwi();
        int i2 = this.g;
        if (i2 != 0) {
            return i2;
        }
        throw new sw("Protocol message contained an invalid tag (zero).");
    }

    public final long zzcvv() throws IOException {
        return zzcwn();
    }

    public final int zzcvw() throws IOException {
        return zzcwi();
    }

    public final boolean zzcvz() throws IOException {
        return zzcwi() != 0;
    }

    public final long zzcwh() throws IOException {
        long zzcwn = zzcwn();
        return (-(zzcwn & 1)) ^ (zzcwn >>> 1);
    }

    public final int zzcwi() throws IOException {
        byte b2;
        int i2;
        byte b3 = b();
        if (b3 >= 0) {
            return b3;
        }
        byte b4 = b3 & Byte.MAX_VALUE;
        byte b5 = b();
        if (b5 >= 0) {
            i2 = b5 << 7;
        } else {
            b4 |= (b5 & Byte.MAX_VALUE) << 7;
            byte b6 = b();
            if (b6 >= 0) {
                i2 = b6 << u.MESSAGE_TYPE_DISCONNECT;
            } else {
                b4 |= (b6 & Byte.MAX_VALUE) << u.MESSAGE_TYPE_DISCONNECT;
                byte b7 = b();
                if (b7 >= 0) {
                    i2 = b7 << 21;
                } else {
                    byte b8 = b4 | ((b7 & Byte.MAX_VALUE) << 21);
                    byte b9 = b();
                    b2 = b8 | (b9 << 28);
                    if (b9 < 0) {
                        for (int i3 = 0; i3 < 5; i3++) {
                            if (b() >= 0) {
                                return b2;
                            }
                        }
                        throw sw.c();
                    }
                    return b2;
                }
            }
        }
        b2 = b4 | i2;
        return b2;
    }

    public final int zzcwk() {
        int i2 = this.h;
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2 - this.f;
    }

    public final long zzcwn() throws IOException {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            byte b2 = b();
            j2 |= ((long) (b2 & Byte.MAX_VALUE)) << i2;
            if ((b2 & 128) == 0) {
                return j2;
            }
        }
        throw sw.c();
    }

    public final int zzcwo() throws IOException {
        return (b() & c.END_OF_FRAME) | ((b() & c.END_OF_FRAME) << 8) | ((b() & c.END_OF_FRAME) << 16) | ((b() & c.END_OF_FRAME) << 24);
    }

    public final long zzcwp() throws IOException {
        byte b2 = b();
        byte b3 = b();
        return ((((long) b3) & 255) << 8) | (((long) b2) & 255) | ((((long) b()) & 255) << 16) | ((((long) b()) & 255) << 24) | ((((long) b()) & 255) << 32) | ((((long) b()) & 255) << 40) | ((((long) b()) & 255) << 48) | ((((long) b()) & 255) << 56);
    }

    public final void zzkp(int i2) throws sw {
        if (this.g != i2) {
            throw new sw("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzkq(int i2) throws IOException {
        int zzcvt;
        int i3 = i2 & 7;
        if (i3 == 0) {
            zzcwi();
            return true;
        } else if (i3 == 1) {
            zzcwp();
            return true;
        } else if (i3 == 2) {
            a(zzcwi());
            return true;
        } else if (i3 == 3) {
            do {
                zzcvt = zzcvt();
                if (zzcvt == 0) {
                    break;
                }
            } while (zzkq(zzcvt));
            zzkp(((i2 >>> 3) << 3) | 4);
            return true;
        } else if (i3 == 4) {
            return false;
        } else {
            if (i3 == 5) {
                zzcwo();
                return true;
            }
            throw new sw("Protocol message tag had invalid wire type.");
        }
    }

    public final int zzks(int i2) throws sw {
        if (i2 >= 0) {
            int i3 = i2 + this.f;
            int i4 = this.h;
            if (i3 <= i4) {
                this.h = i3;
                a();
                return i4;
            }
            throw sw.a();
        }
        throw sw.b();
    }

    public final void zzkt(int i2) {
        this.h = i2;
        a();
    }

    public final void zzmg(int i2) {
        a(i2, this.g);
    }
}
