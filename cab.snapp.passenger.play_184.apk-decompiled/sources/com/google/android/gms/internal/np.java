package com.google.android.gms.internal;

import java.io.IOException;

public final class np extends sr<np> {
    public long[] zzjmp = ta.zzpnq;
    public long[] zzjmq = ta.zzpnq;

    public np() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        long[] jArr;
        int a2 = super.a();
        long[] jArr2 = this.zzjmp;
        int i = 0;
        if (jArr2 != null && jArr2.length > 0) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                jArr = this.zzjmp;
                if (i2 >= jArr.length) {
                    break;
                }
                i3 += sp.zzdi(jArr[i2]);
                i2++;
            }
            a2 = a2 + i3 + (jArr.length * 1);
        }
        long[] jArr3 = this.zzjmq;
        if (jArr3 == null || jArr3.length <= 0) {
            return a2;
        }
        int i4 = 0;
        while (true) {
            long[] jArr4 = this.zzjmq;
            if (i >= jArr4.length) {
                return a2 + i4 + (jArr4.length * 1);
            }
            i4 += sp.zzdi(jArr4[i]);
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof np)) {
            return false;
        }
        np npVar = (np) obj;
        if (sv.equals(this.zzjmp, npVar.zzjmp) && sv.equals(this.zzjmq, npVar.zzjmq)) {
            return (this.f3519a == null || this.f3519a.isEmpty()) ? npVar.f3519a == null || npVar.f3519a.isEmpty() : this.f3519a.equals(npVar.f3519a);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((getClass().getName().hashCode() + 527) * 31) + sv.hashCode(this.zzjmp)) * 31) + sv.hashCode(this.zzjmq)) * 31) + ((this.f3519a == null || this.f3519a.isEmpty()) ? 0 : this.f3519a.hashCode());
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        int i;
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt != 8) {
                if (zzcvt == 10) {
                    i = soVar.zzks(soVar.zzcwi());
                    int position = soVar.getPosition();
                    int i2 = 0;
                    while (soVar.zzcwk() > 0) {
                        soVar.zzcwn();
                        i2++;
                    }
                    soVar.zzmg(position);
                    long[] jArr = this.zzjmp;
                    int length = jArr == null ? 0 : jArr.length;
                    long[] jArr2 = new long[(i2 + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzjmp, 0, jArr2, 0, length);
                    }
                    while (length < jArr2.length) {
                        jArr2[length] = soVar.zzcwn();
                        length++;
                    }
                    this.zzjmp = jArr2;
                } else if (zzcvt == 16) {
                    int zzb = ta.zzb(soVar, 16);
                    long[] jArr3 = this.zzjmq;
                    int length2 = jArr3 == null ? 0 : jArr3.length;
                    long[] jArr4 = new long[(zzb + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.zzjmq, 0, jArr4, 0, length2);
                    }
                    while (length2 < jArr4.length - 1) {
                        jArr4[length2] = soVar.zzcwn();
                        soVar.zzcvt();
                        length2++;
                    }
                    jArr4[length2] = soVar.zzcwn();
                    this.zzjmq = jArr4;
                } else if (zzcvt == 18) {
                    i = soVar.zzks(soVar.zzcwi());
                    int position2 = soVar.getPosition();
                    int i3 = 0;
                    while (soVar.zzcwk() > 0) {
                        soVar.zzcwn();
                        i3++;
                    }
                    soVar.zzmg(position2);
                    long[] jArr5 = this.zzjmq;
                    int length3 = jArr5 == null ? 0 : jArr5.length;
                    long[] jArr6 = new long[(i3 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.zzjmq, 0, jArr6, 0, length3);
                    }
                    while (length3 < jArr6.length) {
                        jArr6[length3] = soVar.zzcwn();
                        length3++;
                    }
                    this.zzjmq = jArr6;
                } else if (!super.a(soVar, zzcvt)) {
                    return this;
                }
                soVar.zzkt(i);
            } else {
                int zzb2 = ta.zzb(soVar, 8);
                long[] jArr7 = this.zzjmp;
                int length4 = jArr7 == null ? 0 : jArr7.length;
                long[] jArr8 = new long[(zzb2 + length4)];
                if (length4 != 0) {
                    System.arraycopy(this.zzjmp, 0, jArr8, 0, length4);
                }
                while (length4 < jArr8.length - 1) {
                    jArr8[length4] = soVar.zzcwn();
                    soVar.zzcvt();
                    length4++;
                }
                jArr8[length4] = soVar.zzcwn();
                this.zzjmp = jArr8;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        long[] jArr = this.zzjmp;
        int i = 0;
        if (jArr != null && jArr.length > 0) {
            int i2 = 0;
            while (true) {
                long[] jArr2 = this.zzjmp;
                if (i2 >= jArr2.length) {
                    break;
                }
                spVar.zza(1, jArr2[i2]);
                i2++;
            }
        }
        long[] jArr3 = this.zzjmq;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.zzjmq;
                if (i >= jArr4.length) {
                    break;
                }
                spVar.zza(2, jArr4[i]);
                i++;
            }
        }
        super.zza(spVar);
    }
}
