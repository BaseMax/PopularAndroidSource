package com.google.android.gms.internal;

import java.io.IOException;

public final class tg extends sr<tg> implements Cloneable {
    private int c = -1;
    private int d = 0;

    public tg() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: a */
    public final tg zza(so soVar) throws IOException {
        int i;
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 8) {
                i = soVar.getPosition();
                int zzcvw = soVar.zzcvw();
                switch (zzcvw) {
                    case -1:
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                        this.c = zzcvw;
                        break;
                    default:
                        StringBuilder sb = new StringBuilder(43);
                        sb.append(zzcvw);
                        sb.append(" is not a valid enum NetworkType");
                        throw new IllegalArgumentException(sb.toString());
                }
            } else if (zzcvt == 16) {
                i = soVar.getPosition();
                try {
                    int zzcvw2 = soVar.zzcvw();
                    if (zzcvw2 != 100) {
                        switch (zzcvw2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                                break;
                            default:
                                StringBuilder sb2 = new StringBuilder(45);
                                sb2.append(zzcvw2);
                                sb2.append(" is not a valid enum MobileSubtype");
                                throw new IllegalArgumentException(sb2.toString());
                        }
                    }
                    this.d = zzcvw2;
                } catch (IllegalArgumentException unused) {
                    soVar.zzmg(i);
                    a(soVar, zzcvt);
                }
            } else if (!super.a(soVar, zzcvt)) {
                return this;
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public tg clone() {
        try {
            return (tg) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        int i = this.c;
        if (i != -1) {
            a2 += sp.zzad(1, i);
        }
        int i2 = this.d;
        return i2 != 0 ? a2 + sp.zzad(2, i2) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tg)) {
            return false;
        }
        tg tgVar = (tg) obj;
        if (this.c == tgVar.c && this.d == tgVar.d) {
            return (this.f3519a == null || this.f3519a.isEmpty()) ? tgVar.f3519a == null || tgVar.f3519a.isEmpty() : this.f3519a.equals(tgVar.f3519a);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((getClass().getName().hashCode() + 527) * 31) + this.c) * 31) + this.d) * 31) + ((this.f3519a == null || this.f3519a.isEmpty()) ? 0 : this.f3519a.hashCode());
    }

    public final void zza(sp spVar) throws IOException {
        int i = this.c;
        if (i != -1) {
            spVar.zzaa(1, i);
        }
        int i2 = this.d;
        if (i2 != 0) {
            spVar.zzaa(2, i2);
        }
        super.zza(spVar);
    }

    public final /* synthetic */ sr zzdaf() throws CloneNotSupportedException {
        return (tg) clone();
    }

    public final /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (tg) clone();
    }
}
