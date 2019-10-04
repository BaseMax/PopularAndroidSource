package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;

public final class te extends sr<te> implements Cloneable {
    private long c = 0;
    private String d = "";
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private tf[] h = tf.zzdba();
    private byte[] i = ta.zzpnv;
    private tc j = null;
    private String k = "";
    private String l = "";
    private tb m = null;
    private String n = "";
    private td o = null;
    private String p = "";
    private int q = 0;
    private int[] r = ta.zzpnp;
    private long s = 0;
    private tg t = null;
    public long zzpql = 0;
    public long zzpqm = 0;
    public byte[] zzpqs = ta.zzpnv;
    public long zzpqx = 180000;
    public byte[] zzpqz = ta.zzpnv;

    public te() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public final te zza(so soVar) throws IOException {
        sx sxVar;
        while (true) {
            int zzcvt = soVar.zzcvt();
            switch (zzcvt) {
                case 0:
                    return this;
                case 8:
                    this.zzpql = soVar.zzcvv();
                    continue;
                case 18:
                    this.d = soVar.readString();
                    continue;
                case 26:
                    int zzb = ta.zzb(soVar, 26);
                    tf[] tfVarArr = this.h;
                    int length = tfVarArr == null ? 0 : tfVarArr.length;
                    tf[] tfVarArr2 = new tf[(zzb + length)];
                    if (length != 0) {
                        System.arraycopy(this.h, 0, tfVarArr2, 0, length);
                    }
                    while (length < tfVarArr2.length - 1) {
                        tfVarArr2[length] = new tf();
                        soVar.zza(tfVarArr2[length]);
                        soVar.zzcvt();
                        length++;
                    }
                    tfVarArr2[length] = new tf();
                    soVar.zza(tfVarArr2[length]);
                    this.h = tfVarArr2;
                    continue;
                case 34:
                    this.i = soVar.readBytes();
                    continue;
                case 50:
                    this.zzpqs = soVar.readBytes();
                    continue;
                case 58:
                    if (this.m == null) {
                        this.m = new tb();
                    }
                    sxVar = this.m;
                    break;
                case 66:
                    this.k = soVar.readString();
                    continue;
                case 74:
                    if (this.j == null) {
                        this.j = new tc();
                    }
                    sxVar = this.j;
                    break;
                case 80:
                    this.g = soVar.zzcvz();
                    continue;
                case 88:
                    this.e = soVar.zzcvw();
                    continue;
                case 96:
                    this.f = soVar.zzcvw();
                    continue;
                case 106:
                    this.l = soVar.readString();
                    continue;
                case 114:
                    this.n = soVar.readString();
                    continue;
                case 120:
                    this.zzpqx = soVar.zzcwh();
                    continue;
                case 130:
                    if (this.o == null) {
                        this.o = new td();
                    }
                    sxVar = this.o;
                    break;
                case 136:
                    this.zzpqm = soVar.zzcvv();
                    continue;
                case 146:
                    this.zzpqz = soVar.readBytes();
                    continue;
                case 152:
                    try {
                        int zzcvw = soVar.zzcvw();
                        if (!(zzcvw == 0 || zzcvw == 1)) {
                            if (zzcvw != 2) {
                                StringBuilder sb = new StringBuilder(45);
                                sb.append(zzcvw);
                                sb.append(" is not a valid enum InternalEvent");
                                throw new IllegalArgumentException(sb.toString());
                            }
                        }
                        this.q = zzcvw;
                        continue;
                    } catch (IllegalArgumentException unused) {
                        soVar.zzmg(soVar.getPosition());
                        a(soVar, zzcvt);
                        break;
                    }
                case 160:
                    int zzb2 = ta.zzb(soVar, 160);
                    int[] iArr = this.r;
                    int length2 = iArr == null ? 0 : iArr.length;
                    int[] iArr2 = new int[(zzb2 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.r, 0, iArr2, 0, length2);
                    }
                    while (length2 < iArr2.length - 1) {
                        iArr2[length2] = soVar.zzcvw();
                        soVar.zzcvt();
                        length2++;
                    }
                    iArr2[length2] = soVar.zzcvw();
                    this.r = iArr2;
                    continue;
                case 162:
                    int zzks = soVar.zzks(soVar.zzcwi());
                    int position = soVar.getPosition();
                    int i2 = 0;
                    while (soVar.zzcwk() > 0) {
                        soVar.zzcvw();
                        i2++;
                    }
                    soVar.zzmg(position);
                    int[] iArr3 = this.r;
                    int length3 = iArr3 == null ? 0 : iArr3.length;
                    int[] iArr4 = new int[(i2 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.r, 0, iArr4, 0, length3);
                    }
                    while (length3 < iArr4.length) {
                        iArr4[length3] = soVar.zzcvw();
                        length3++;
                    }
                    this.r = iArr4;
                    soVar.zzkt(zzks);
                    continue;
                case 168:
                    this.c = soVar.zzcvv();
                    continue;
                case 176:
                    this.s = soVar.zzcvv();
                    continue;
                case 186:
                    if (this.t == null) {
                        this.t = new tg();
                    }
                    sxVar = this.t;
                    break;
                case 194:
                    this.p = soVar.readString();
                    continue;
                default:
                    if (!super.a(soVar, zzcvt)) {
                        return this;
                    }
                    continue;
            }
            soVar.zza(sxVar);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public final te clone() {
        try {
            te teVar = (te) super.clone();
            tf[] tfVarArr = this.h;
            if (tfVarArr != null && tfVarArr.length > 0) {
                teVar.h = new tf[tfVarArr.length];
                int i2 = 0;
                while (true) {
                    tf[] tfVarArr2 = this.h;
                    if (i2 >= tfVarArr2.length) {
                        break;
                    }
                    if (tfVarArr2[i2] != null) {
                        teVar.h[i2] = (tf) tfVarArr2[i2].clone();
                    }
                    i2++;
                }
            }
            tc tcVar = this.j;
            if (tcVar != null) {
                teVar.j = (tc) tcVar.clone();
            }
            tb tbVar = this.m;
            if (tbVar != null) {
                teVar.m = (tb) tbVar.clone();
            }
            td tdVar = this.o;
            if (tdVar != null) {
                teVar.o = (td) tdVar.clone();
            }
            int[] iArr = this.r;
            if (iArr != null && iArr.length > 0) {
                teVar.r = (int[]) iArr.clone();
            }
            tg tgVar = this.t;
            if (tgVar != null) {
                teVar.t = (tg) tgVar.clone();
            }
            return teVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int[] iArr;
        int a2 = super.a();
        long j2 = this.zzpql;
        if (j2 != 0) {
            a2 += sp.zzc(1, j2);
        }
        String str = this.d;
        if (str != null && !str.equals("")) {
            a2 += sp.zzo(2, this.d);
        }
        tf[] tfVarArr = this.h;
        int i2 = 0;
        if (tfVarArr != null && tfVarArr.length > 0) {
            int i3 = a2;
            int i4 = 0;
            while (true) {
                tf[] tfVarArr2 = this.h;
                if (i4 >= tfVarArr2.length) {
                    break;
                }
                tf tfVar = tfVarArr2[i4];
                if (tfVar != null) {
                    i3 += sp.zzb(3, (sx) tfVar);
                }
                i4++;
            }
            a2 = i3;
        }
        if (!Arrays.equals(this.i, ta.zzpnv)) {
            a2 += sp.zzd(4, this.i);
        }
        if (!Arrays.equals(this.zzpqs, ta.zzpnv)) {
            a2 += sp.zzd(6, this.zzpqs);
        }
        tb tbVar = this.m;
        if (tbVar != null) {
            a2 += sp.zzb(7, (sx) tbVar);
        }
        String str2 = this.k;
        if (str2 != null && !str2.equals("")) {
            a2 += sp.zzo(8, this.k);
        }
        tc tcVar = this.j;
        if (tcVar != null) {
            a2 += sp.zzb(9, (sx) tcVar);
        }
        if (this.g) {
            a2 += sp.zzlg(10) + 1;
        }
        int i5 = this.e;
        if (i5 != 0) {
            a2 += sp.zzad(11, i5);
        }
        int i6 = this.f;
        if (i6 != 0) {
            a2 += sp.zzad(12, i6);
        }
        String str3 = this.l;
        if (str3 != null && !str3.equals("")) {
            a2 += sp.zzo(13, this.l);
        }
        String str4 = this.n;
        if (str4 != null && !str4.equals("")) {
            a2 += sp.zzo(14, this.n);
        }
        long j3 = this.zzpqx;
        if (j3 != 180000) {
            a2 += sp.zzh(15, j3);
        }
        td tdVar = this.o;
        if (tdVar != null) {
            a2 += sp.zzb(16, (sx) tdVar);
        }
        long j4 = this.zzpqm;
        if (j4 != 0) {
            a2 += sp.zzc(17, j4);
        }
        if (!Arrays.equals(this.zzpqz, ta.zzpnv)) {
            a2 += sp.zzd(18, this.zzpqz);
        }
        int i7 = this.q;
        if (i7 != 0) {
            a2 += sp.zzad(19, i7);
        }
        int[] iArr2 = this.r;
        if (iArr2 != null && iArr2.length > 0) {
            int i8 = 0;
            while (true) {
                iArr = this.r;
                if (i2 >= iArr.length) {
                    break;
                }
                i8 += sp.zzlh(iArr[i2]);
                i2++;
            }
            a2 = a2 + i8 + (iArr.length * 2);
        }
        long j5 = this.c;
        if (j5 != 0) {
            a2 += sp.zzc(21, j5);
        }
        long j6 = this.s;
        if (j6 != 0) {
            a2 += sp.zzc(22, j6);
        }
        tg tgVar = this.t;
        if (tgVar != null) {
            a2 += sp.zzb(23, (sx) tgVar);
        }
        String str5 = this.p;
        return (str5 == null || str5.equals("")) ? a2 : a2 + sp.zzo(24, this.p);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof te)) {
            return false;
        }
        te teVar = (te) obj;
        if (this.zzpql != teVar.zzpql || this.zzpqm != teVar.zzpqm || this.c != teVar.c) {
            return false;
        }
        String str = this.d;
        if (str == null) {
            if (teVar.d != null) {
                return false;
            }
        } else if (!str.equals(teVar.d)) {
            return false;
        }
        if (this.e != teVar.e || this.f != teVar.f || this.g != teVar.g || !sv.equals((Object[]) this.h, (Object[]) teVar.h) || !Arrays.equals(this.i, teVar.i)) {
            return false;
        }
        tc tcVar = this.j;
        if (tcVar == null) {
            if (teVar.j != null) {
                return false;
            }
        } else if (!tcVar.equals(teVar.j)) {
            return false;
        }
        if (!Arrays.equals(this.zzpqs, teVar.zzpqs)) {
            return false;
        }
        String str2 = this.k;
        if (str2 == null) {
            if (teVar.k != null) {
                return false;
            }
        } else if (!str2.equals(teVar.k)) {
            return false;
        }
        String str3 = this.l;
        if (str3 == null) {
            if (teVar.l != null) {
                return false;
            }
        } else if (!str3.equals(teVar.l)) {
            return false;
        }
        tb tbVar = this.m;
        if (tbVar == null) {
            if (teVar.m != null) {
                return false;
            }
        } else if (!tbVar.equals(teVar.m)) {
            return false;
        }
        String str4 = this.n;
        if (str4 == null) {
            if (teVar.n != null) {
                return false;
            }
        } else if (!str4.equals(teVar.n)) {
            return false;
        }
        if (this.zzpqx != teVar.zzpqx) {
            return false;
        }
        td tdVar = this.o;
        if (tdVar == null) {
            if (teVar.o != null) {
                return false;
            }
        } else if (!tdVar.equals(teVar.o)) {
            return false;
        }
        if (!Arrays.equals(this.zzpqz, teVar.zzpqz)) {
            return false;
        }
        String str5 = this.p;
        if (str5 == null) {
            if (teVar.p != null) {
                return false;
            }
        } else if (!str5.equals(teVar.p)) {
            return false;
        }
        if (this.q != teVar.q || !sv.equals(this.r, teVar.r) || this.s != teVar.s) {
            return false;
        }
        tg tgVar = this.t;
        if (tgVar == null) {
            if (teVar.t != null) {
                return false;
            }
        } else if (!tgVar.equals(teVar.t)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? teVar.f3519a == null || teVar.f3519a.isEmpty() : this.f3519a.equals(teVar.f3519a);
    }

    public final int hashCode() {
        long j2 = this.zzpql;
        long j3 = this.zzpqm;
        long j4 = this.c;
        int hashCode = (((((((getClass().getName().hashCode() + 527) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        String str = this.d;
        int i2 = 0;
        int hashCode2 = ((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.e) * 31) + this.f) * 31) + (this.g ? 1231 : 1237)) * 31) + sv.hashCode((Object[]) this.h)) * 31) + Arrays.hashCode(this.i);
        tc tcVar = this.j;
        int hashCode3 = ((((hashCode2 * 31) + (tcVar == null ? 0 : tcVar.hashCode())) * 31) + Arrays.hashCode(this.zzpqs)) * 31;
        String str2 = this.k;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.l;
        int hashCode5 = hashCode4 + (str3 == null ? 0 : str3.hashCode());
        tb tbVar = this.m;
        int hashCode6 = ((hashCode5 * 31) + (tbVar == null ? 0 : tbVar.hashCode())) * 31;
        String str4 = this.n;
        int hashCode7 = str4 == null ? 0 : str4.hashCode();
        long j5 = this.zzpqx;
        int i3 = ((hashCode6 + hashCode7) * 31) + ((int) (j5 ^ (j5 >>> 32)));
        td tdVar = this.o;
        int hashCode8 = ((((i3 * 31) + (tdVar == null ? 0 : tdVar.hashCode())) * 31) + Arrays.hashCode(this.zzpqz)) * 31;
        String str5 = this.p;
        int hashCode9 = str5 == null ? 0 : str5.hashCode();
        long j6 = this.s;
        int hashCode10 = ((((((hashCode8 + hashCode9) * 31) + this.q) * 31) + sv.hashCode(this.r)) * 31) + ((int) (j6 ^ (j6 >>> 32)));
        tg tgVar = this.t;
        int hashCode11 = ((hashCode10 * 31) + (tgVar == null ? 0 : tgVar.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i2 = this.f3519a.hashCode();
        }
        return hashCode11 + i2;
    }

    public final void zza(sp spVar) throws IOException {
        long j2 = this.zzpql;
        if (j2 != 0) {
            spVar.zzf(1, j2);
        }
        String str = this.d;
        if (str != null && !str.equals("")) {
            spVar.zzn(2, this.d);
        }
        tf[] tfVarArr = this.h;
        int i2 = 0;
        if (tfVarArr != null && tfVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                tf[] tfVarArr2 = this.h;
                if (i3 >= tfVarArr2.length) {
                    break;
                }
                tf tfVar = tfVarArr2[i3];
                if (tfVar != null) {
                    spVar.zza(3, (sx) tfVar);
                }
                i3++;
            }
        }
        if (!Arrays.equals(this.i, ta.zzpnv)) {
            spVar.zzc(4, this.i);
        }
        if (!Arrays.equals(this.zzpqs, ta.zzpnv)) {
            spVar.zzc(6, this.zzpqs);
        }
        tb tbVar = this.m;
        if (tbVar != null) {
            spVar.zza(7, (sx) tbVar);
        }
        String str2 = this.k;
        if (str2 != null && !str2.equals("")) {
            spVar.zzn(8, this.k);
        }
        tc tcVar = this.j;
        if (tcVar != null) {
            spVar.zza(9, (sx) tcVar);
        }
        boolean z = this.g;
        if (z) {
            spVar.zzl(10, z);
        }
        int i4 = this.e;
        if (i4 != 0) {
            spVar.zzaa(11, i4);
        }
        int i5 = this.f;
        if (i5 != 0) {
            spVar.zzaa(12, i5);
        }
        String str3 = this.l;
        if (str3 != null && !str3.equals("")) {
            spVar.zzn(13, this.l);
        }
        String str4 = this.n;
        if (str4 != null && !str4.equals("")) {
            spVar.zzn(14, this.n);
        }
        long j3 = this.zzpqx;
        if (j3 != 180000) {
            spVar.zzg(15, j3);
        }
        td tdVar = this.o;
        if (tdVar != null) {
            spVar.zza(16, (sx) tdVar);
        }
        long j4 = this.zzpqm;
        if (j4 != 0) {
            spVar.zzf(17, j4);
        }
        if (!Arrays.equals(this.zzpqz, ta.zzpnv)) {
            spVar.zzc(18, this.zzpqz);
        }
        int i6 = this.q;
        if (i6 != 0) {
            spVar.zzaa(19, i6);
        }
        int[] iArr = this.r;
        if (iArr != null && iArr.length > 0) {
            while (true) {
                int[] iArr2 = this.r;
                if (i2 >= iArr2.length) {
                    break;
                }
                spVar.zzaa(20, iArr2[i2]);
                i2++;
            }
        }
        long j5 = this.c;
        if (j5 != 0) {
            spVar.zzf(21, j5);
        }
        long j6 = this.s;
        if (j6 != 0) {
            spVar.zzf(22, j6);
        }
        tg tgVar = this.t;
        if (tgVar != null) {
            spVar.zza(23, (sx) tgVar);
        }
        String str5 = this.p;
        if (str5 != null && !str5.equals("")) {
            spVar.zzn(24, this.p);
        }
        super.zza(spVar);
    }

    public final /* synthetic */ sr zzdaf() throws CloneNotSupportedException {
        return (te) clone();
    }

    public final /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (te) clone();
    }
}
