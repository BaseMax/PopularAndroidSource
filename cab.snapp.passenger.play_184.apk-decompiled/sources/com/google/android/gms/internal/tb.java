package com.google.android.gms.internal;

import java.io.IOException;

public final class tb extends sr<tb> implements Cloneable {
    private String[] c = ta.EMPTY_STRING_ARRAY;
    private String[] d = ta.EMPTY_STRING_ARRAY;
    private int[] e = ta.zzpnp;
    private long[] f = ta.zzpnq;
    private long[] g = ta.zzpnq;

    public tb() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    /* access modifiers changed from: private */
    /* renamed from: b */
    public tb clone() {
        try {
            tb tbVar = (tb) super.clone();
            String[] strArr = this.c;
            if (strArr != null && strArr.length > 0) {
                tbVar.c = (String[]) strArr.clone();
            }
            String[] strArr2 = this.d;
            if (strArr2 != null && strArr2.length > 0) {
                tbVar.d = (String[]) strArr2.clone();
            }
            int[] iArr = this.e;
            if (iArr != null && iArr.length > 0) {
                tbVar.e = (int[]) iArr.clone();
            }
            long[] jArr = this.f;
            if (jArr != null && jArr.length > 0) {
                tbVar.f = (long[]) jArr.clone();
            }
            long[] jArr2 = this.g;
            if (jArr2 != null && jArr2.length > 0) {
                tbVar.g = (long[]) jArr2.clone();
            }
            return tbVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    /* access modifiers changed from: protected */
    public final int a() {
        long[] jArr;
        int[] iArr;
        int a2 = super.a();
        String[] strArr = this.c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    i4++;
                    i3 += sp.zztt(str);
                }
                i2++;
            }
            a2 = a2 + i3 + (i4 * 1);
        }
        String[] strArr3 = this.d;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                String[] strArr4 = this.d;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i5];
                if (str2 != null) {
                    i7++;
                    i6 += sp.zztt(str2);
                }
                i5++;
            }
            a2 = a2 + i6 + (i7 * 1);
        }
        int[] iArr2 = this.e;
        if (iArr2 != null && iArr2.length > 0) {
            int i8 = 0;
            int i9 = 0;
            while (true) {
                iArr = this.e;
                if (i8 >= iArr.length) {
                    break;
                }
                i9 += sp.zzlh(iArr[i8]);
                i8++;
            }
            a2 = a2 + i9 + (iArr.length * 1);
        }
        long[] jArr2 = this.f;
        if (jArr2 != null && jArr2.length > 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                jArr = this.f;
                if (i10 >= jArr.length) {
                    break;
                }
                i11 += sp.zzdi(jArr[i10]);
                i10++;
            }
            a2 = a2 + i11 + (jArr.length * 1);
        }
        long[] jArr3 = this.g;
        if (jArr3 == null || jArr3.length <= 0) {
            return a2;
        }
        int i12 = 0;
        while (true) {
            long[] jArr4 = this.g;
            if (i >= jArr4.length) {
                return a2 + i12 + (jArr4.length * 1);
            }
            i12 += sp.zzdi(jArr4[i]);
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof tb)) {
            return false;
        }
        tb tbVar = (tb) obj;
        if (sv.equals((Object[]) this.c, (Object[]) tbVar.c) && sv.equals((Object[]) this.d, (Object[]) tbVar.d) && sv.equals(this.e, tbVar.e) && sv.equals(this.f, tbVar.f) && sv.equals(this.g, tbVar.g)) {
            return (this.f3519a == null || this.f3519a.isEmpty()) ? tbVar.f3519a == null || tbVar.f3519a.isEmpty() : this.f3519a.equals(tbVar.f3519a);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((getClass().getName().hashCode() + 527) * 31) + sv.hashCode((Object[]) this.c)) * 31) + sv.hashCode((Object[]) this.d)) * 31) + sv.hashCode(this.e)) * 31) + sv.hashCode(this.f)) * 31) + sv.hashCode(this.g)) * 31) + ((this.f3519a == null || this.f3519a.isEmpty()) ? 0 : this.f3519a.hashCode());
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        int i;
        while (true) {
            int zzcvt = soVar.zzcvt();
            if (zzcvt == 0) {
                return this;
            }
            if (zzcvt == 10) {
                int zzb = ta.zzb(soVar, 10);
                String[] strArr = this.c;
                int length = strArr == null ? 0 : strArr.length;
                String[] strArr2 = new String[(zzb + length)];
                if (length != 0) {
                    System.arraycopy(this.c, 0, strArr2, 0, length);
                }
                while (length < strArr2.length - 1) {
                    strArr2[length] = soVar.readString();
                    soVar.zzcvt();
                    length++;
                }
                strArr2[length] = soVar.readString();
                this.c = strArr2;
            } else if (zzcvt == 18) {
                int zzb2 = ta.zzb(soVar, 18);
                String[] strArr3 = this.d;
                int length2 = strArr3 == null ? 0 : strArr3.length;
                String[] strArr4 = new String[(zzb2 + length2)];
                if (length2 != 0) {
                    System.arraycopy(this.d, 0, strArr4, 0, length2);
                }
                while (length2 < strArr4.length - 1) {
                    strArr4[length2] = soVar.readString();
                    soVar.zzcvt();
                    length2++;
                }
                strArr4[length2] = soVar.readString();
                this.d = strArr4;
            } else if (zzcvt != 24) {
                if (zzcvt == 26) {
                    i = soVar.zzks(soVar.zzcwi());
                    int position = soVar.getPosition();
                    int i2 = 0;
                    while (soVar.zzcwk() > 0) {
                        soVar.zzcvw();
                        i2++;
                    }
                    soVar.zzmg(position);
                    int[] iArr = this.e;
                    int length3 = iArr == null ? 0 : iArr.length;
                    int[] iArr2 = new int[(i2 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.e, 0, iArr2, 0, length3);
                    }
                    while (length3 < iArr2.length) {
                        iArr2[length3] = soVar.zzcvw();
                        length3++;
                    }
                    this.e = iArr2;
                } else if (zzcvt == 32) {
                    int zzb3 = ta.zzb(soVar, 32);
                    long[] jArr = this.f;
                    int length4 = jArr == null ? 0 : jArr.length;
                    long[] jArr2 = new long[(zzb3 + length4)];
                    if (length4 != 0) {
                        System.arraycopy(this.f, 0, jArr2, 0, length4);
                    }
                    while (length4 < jArr2.length - 1) {
                        jArr2[length4] = soVar.zzcvv();
                        soVar.zzcvt();
                        length4++;
                    }
                    jArr2[length4] = soVar.zzcvv();
                    this.f = jArr2;
                } else if (zzcvt == 34) {
                    i = soVar.zzks(soVar.zzcwi());
                    int position2 = soVar.getPosition();
                    int i3 = 0;
                    while (soVar.zzcwk() > 0) {
                        soVar.zzcvv();
                        i3++;
                    }
                    soVar.zzmg(position2);
                    long[] jArr3 = this.f;
                    int length5 = jArr3 == null ? 0 : jArr3.length;
                    long[] jArr4 = new long[(i3 + length5)];
                    if (length5 != 0) {
                        System.arraycopy(this.f, 0, jArr4, 0, length5);
                    }
                    while (length5 < jArr4.length) {
                        jArr4[length5] = soVar.zzcvv();
                        length5++;
                    }
                    this.f = jArr4;
                } else if (zzcvt == 40) {
                    int zzb4 = ta.zzb(soVar, 40);
                    long[] jArr5 = this.g;
                    int length6 = jArr5 == null ? 0 : jArr5.length;
                    long[] jArr6 = new long[(zzb4 + length6)];
                    if (length6 != 0) {
                        System.arraycopy(this.g, 0, jArr6, 0, length6);
                    }
                    while (length6 < jArr6.length - 1) {
                        jArr6[length6] = soVar.zzcvv();
                        soVar.zzcvt();
                        length6++;
                    }
                    jArr6[length6] = soVar.zzcvv();
                    this.g = jArr6;
                } else if (zzcvt == 42) {
                    i = soVar.zzks(soVar.zzcwi());
                    int position3 = soVar.getPosition();
                    int i4 = 0;
                    while (soVar.zzcwk() > 0) {
                        soVar.zzcvv();
                        i4++;
                    }
                    soVar.zzmg(position3);
                    long[] jArr7 = this.g;
                    int length7 = jArr7 == null ? 0 : jArr7.length;
                    long[] jArr8 = new long[(i4 + length7)];
                    if (length7 != 0) {
                        System.arraycopy(this.g, 0, jArr8, 0, length7);
                    }
                    while (length7 < jArr8.length) {
                        jArr8[length7] = soVar.zzcvv();
                        length7++;
                    }
                    this.g = jArr8;
                } else if (!super.a(soVar, zzcvt)) {
                    return this;
                }
                soVar.zzkt(i);
            } else {
                int zzb5 = ta.zzb(soVar, 24);
                int[] iArr3 = this.e;
                int length8 = iArr3 == null ? 0 : iArr3.length;
                int[] iArr4 = new int[(zzb5 + length8)];
                if (length8 != 0) {
                    System.arraycopy(this.e, 0, iArr4, 0, length8);
                }
                while (length8 < iArr4.length - 1) {
                    iArr4[length8] = soVar.zzcvw();
                    soVar.zzcvt();
                    length8++;
                }
                iArr4[length8] = soVar.zzcvw();
                this.e = iArr4;
            }
        }
    }

    public final void zza(sp spVar) throws IOException {
        String[] strArr = this.c;
        int i = 0;
        if (strArr != null && strArr.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.c;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str = strArr2[i2];
                if (str != null) {
                    spVar.zzn(1, str);
                }
                i2++;
            }
        }
        String[] strArr3 = this.d;
        if (strArr3 != null && strArr3.length > 0) {
            int i3 = 0;
            while (true) {
                String[] strArr4 = this.d;
                if (i3 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i3];
                if (str2 != null) {
                    spVar.zzn(2, str2);
                }
                i3++;
            }
        }
        int[] iArr = this.e;
        if (iArr != null && iArr.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr2 = this.e;
                if (i4 >= iArr2.length) {
                    break;
                }
                spVar.zzaa(3, iArr2[i4]);
                i4++;
            }
        }
        long[] jArr = this.f;
        if (jArr != null && jArr.length > 0) {
            int i5 = 0;
            while (true) {
                long[] jArr2 = this.f;
                if (i5 >= jArr2.length) {
                    break;
                }
                spVar.zzf(4, jArr2[i5]);
                i5++;
            }
        }
        long[] jArr3 = this.g;
        if (jArr3 != null && jArr3.length > 0) {
            while (true) {
                long[] jArr4 = this.g;
                if (i >= jArr4.length) {
                    break;
                }
                spVar.zzf(5, jArr4[i]);
                i++;
            }
        }
        super.zza(spVar);
    }

    public final /* synthetic */ sr zzdaf() throws CloneNotSupportedException {
        return (tb) clone();
    }

    public final /* synthetic */ sx zzdag() throws CloneNotSupportedException {
        return (tb) clone();
    }
}
