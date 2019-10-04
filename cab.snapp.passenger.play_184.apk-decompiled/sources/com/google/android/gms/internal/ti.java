package com.google.android.gms.internal;

import java.io.IOException;

public final class ti extends sr<ti> {
    public long zzghq = 0;
    public String zzpri = "";
    public String zzprj = "";
    public long zzprk = 0;
    public String zzprl = "";
    public long zzprm = 0;
    public String zzprn = "";
    public String zzpro = "";
    public String zzprp = "";
    public String zzprq = "";
    public String zzprr = "";
    public int zzprs = 0;
    public th[] zzprt = th.zzdbd();

    public ti() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static ti zzbi(byte[] bArr) throws sw {
        return (ti) sx.zza(new ti(), bArr);
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        String str = this.zzpri;
        if (str != null && !str.equals("")) {
            a2 += sp.zzo(1, this.zzpri);
        }
        String str2 = this.zzprj;
        if (str2 != null && !str2.equals("")) {
            a2 += sp.zzo(2, this.zzprj);
        }
        long j = this.zzprk;
        if (j != 0) {
            a2 += sp.zzc(3, j);
        }
        String str3 = this.zzprl;
        if (str3 != null && !str3.equals("")) {
            a2 += sp.zzo(4, this.zzprl);
        }
        long j2 = this.zzprm;
        if (j2 != 0) {
            a2 += sp.zzc(5, j2);
        }
        long j3 = this.zzghq;
        if (j3 != 0) {
            a2 += sp.zzc(6, j3);
        }
        String str4 = this.zzprn;
        if (str4 != null && !str4.equals("")) {
            a2 += sp.zzo(7, this.zzprn);
        }
        String str5 = this.zzpro;
        if (str5 != null && !str5.equals("")) {
            a2 += sp.zzo(8, this.zzpro);
        }
        String str6 = this.zzprp;
        if (str6 != null && !str6.equals("")) {
            a2 += sp.zzo(9, this.zzprp);
        }
        String str7 = this.zzprq;
        if (str7 != null && !str7.equals("")) {
            a2 += sp.zzo(10, this.zzprq);
        }
        String str8 = this.zzprr;
        if (str8 != null && !str8.equals("")) {
            a2 += sp.zzo(11, this.zzprr);
        }
        int i = this.zzprs;
        if (i != 0) {
            a2 += sp.zzad(12, i);
        }
        th[] thVarArr = this.zzprt;
        if (thVarArr != null && thVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                th[] thVarArr2 = this.zzprt;
                if (i2 >= thVarArr2.length) {
                    break;
                }
                th thVar = thVarArr2[i2];
                if (thVar != null) {
                    a2 += sp.zzb(13, (sx) thVar);
                }
                i2++;
            }
        }
        return a2;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            switch (zzcvt) {
                case 0:
                    return this;
                case 10:
                    this.zzpri = soVar.readString();
                    break;
                case 18:
                    this.zzprj = soVar.readString();
                    break;
                case 24:
                    this.zzprk = soVar.zzcvv();
                    break;
                case 34:
                    this.zzprl = soVar.readString();
                    break;
                case 40:
                    this.zzprm = soVar.zzcvv();
                    break;
                case 48:
                    this.zzghq = soVar.zzcvv();
                    break;
                case 58:
                    this.zzprn = soVar.readString();
                    break;
                case 66:
                    this.zzpro = soVar.readString();
                    break;
                case 74:
                    this.zzprp = soVar.readString();
                    break;
                case 82:
                    this.zzprq = soVar.readString();
                    break;
                case 90:
                    this.zzprr = soVar.readString();
                    break;
                case 96:
                    this.zzprs = soVar.zzcvw();
                    break;
                case 106:
                    int zzb = ta.zzb(soVar, 106);
                    th[] thVarArr = this.zzprt;
                    int length = thVarArr == null ? 0 : thVarArr.length;
                    th[] thVarArr2 = new th[(zzb + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzprt, 0, thVarArr2, 0, length);
                    }
                    while (length < thVarArr2.length - 1) {
                        thVarArr2[length] = new th();
                        soVar.zza(thVarArr2[length]);
                        soVar.zzcvt();
                        length++;
                    }
                    thVarArr2[length] = new th();
                    soVar.zza(thVarArr2[length]);
                    this.zzprt = thVarArr2;
                    break;
                default:
                    if (super.a(soVar, zzcvt)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        String str = this.zzpri;
        if (str != null && !str.equals("")) {
            spVar.zzn(1, this.zzpri);
        }
        String str2 = this.zzprj;
        if (str2 != null && !str2.equals("")) {
            spVar.zzn(2, this.zzprj);
        }
        long j = this.zzprk;
        if (j != 0) {
            spVar.zzf(3, j);
        }
        String str3 = this.zzprl;
        if (str3 != null && !str3.equals("")) {
            spVar.zzn(4, this.zzprl);
        }
        long j2 = this.zzprm;
        if (j2 != 0) {
            spVar.zzf(5, j2);
        }
        long j3 = this.zzghq;
        if (j3 != 0) {
            spVar.zzf(6, j3);
        }
        String str4 = this.zzprn;
        if (str4 != null && !str4.equals("")) {
            spVar.zzn(7, this.zzprn);
        }
        String str5 = this.zzpro;
        if (str5 != null && !str5.equals("")) {
            spVar.zzn(8, this.zzpro);
        }
        String str6 = this.zzprp;
        if (str6 != null && !str6.equals("")) {
            spVar.zzn(9, this.zzprp);
        }
        String str7 = this.zzprq;
        if (str7 != null && !str7.equals("")) {
            spVar.zzn(10, this.zzprq);
        }
        String str8 = this.zzprr;
        if (str8 != null && !str8.equals("")) {
            spVar.zzn(11, this.zzprr);
        }
        int i = this.zzprs;
        if (i != 0) {
            spVar.zzaa(12, i);
        }
        th[] thVarArr = this.zzprt;
        if (thVarArr != null && thVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                th[] thVarArr2 = this.zzprt;
                if (i2 >= thVarArr2.length) {
                    break;
                }
                th thVar = thVarArr2[i2];
                if (thVar != null) {
                    spVar.zza(13, (sx) thVar);
                }
                i2++;
            }
        }
        super.zza(spVar);
    }
}
