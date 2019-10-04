package com.google.android.gms.internal;

import cab.snapp.passenger.c;
import java.io.IOException;

public final class no extends sr<no> {
    private static volatile no[] c;
    private Integer d = null;
    private Integer e = null;
    public String zzcn = null;
    public String zzdb = null;
    public Long zzfkk = null;
    public String zzifm = null;
    public String zzixs = null;
    public String zzixt = null;
    public String zzixw = null;
    public String zziya = null;
    public Integer zzjlo = null;
    public nl[] zzjlp = nl.zzbbh();
    public nq[] zzjlq = nq.zzbbk();
    public Long zzjlr = null;
    public Long zzjls = null;
    public Long zzjlt = null;
    public Long zzjlu = null;
    public Long zzjlv = null;
    public String zzjlw = null;
    public String zzjlx = null;
    public String zzjly = null;
    public Integer zzjlz = null;
    public Long zzjma = null;
    public Long zzjmb = null;
    public String zzjmc = null;
    public Boolean zzjmd = null;
    public String zzjme = null;
    public Long zzjmf = null;
    public Integer zzjmg = null;
    public Boolean zzjmh = null;
    public nk[] zzjmi = nk.zzbbg();
    public Integer zzjmj = null;
    public String zzjmm = null;
    public Long zzjmn = null;
    public String zzjmo = null;

    public no() {
        this.f3519a = null;
        this.f3528b = -1;
    }

    public static no[] zzbbj() {
        if (c == null) {
            synchronized (sv.zzpnk) {
                if (c == null) {
                    c = new no[0];
                }
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final int a() {
        int a2 = super.a();
        Integer num = this.zzjlo;
        if (num != null) {
            a2 += sp.zzad(1, num.intValue());
        }
        nl[] nlVarArr = this.zzjlp;
        int i = 0;
        if (nlVarArr != null && nlVarArr.length > 0) {
            int i2 = a2;
            int i3 = 0;
            while (true) {
                nl[] nlVarArr2 = this.zzjlp;
                if (i3 >= nlVarArr2.length) {
                    break;
                }
                nl nlVar = nlVarArr2[i3];
                if (nlVar != null) {
                    i2 += sp.zzb(2, (sx) nlVar);
                }
                i3++;
            }
            a2 = i2;
        }
        nq[] nqVarArr = this.zzjlq;
        if (nqVarArr != null && nqVarArr.length > 0) {
            int i4 = a2;
            int i5 = 0;
            while (true) {
                nq[] nqVarArr2 = this.zzjlq;
                if (i5 >= nqVarArr2.length) {
                    break;
                }
                nq nqVar = nqVarArr2[i5];
                if (nqVar != null) {
                    i4 += sp.zzb(3, (sx) nqVar);
                }
                i5++;
            }
            a2 = i4;
        }
        Long l = this.zzjlr;
        if (l != null) {
            a2 += sp.zzc(4, l.longValue());
        }
        Long l2 = this.zzjls;
        if (l2 != null) {
            a2 += sp.zzc(5, l2.longValue());
        }
        Long l3 = this.zzjlt;
        if (l3 != null) {
            a2 += sp.zzc(6, l3.longValue());
        }
        Long l4 = this.zzjlv;
        if (l4 != null) {
            a2 += sp.zzc(7, l4.longValue());
        }
        String str = this.zzjlw;
        if (str != null) {
            a2 += sp.zzo(8, str);
        }
        String str2 = this.zzdb;
        if (str2 != null) {
            a2 += sp.zzo(9, str2);
        }
        String str3 = this.zzjlx;
        if (str3 != null) {
            a2 += sp.zzo(10, str3);
        }
        String str4 = this.zzjly;
        if (str4 != null) {
            a2 += sp.zzo(11, str4);
        }
        Integer num2 = this.zzjlz;
        if (num2 != null) {
            a2 += sp.zzad(12, num2.intValue());
        }
        String str5 = this.zzixt;
        if (str5 != null) {
            a2 += sp.zzo(13, str5);
        }
        String str6 = this.zzcn;
        if (str6 != null) {
            a2 += sp.zzo(14, str6);
        }
        String str7 = this.zzifm;
        if (str7 != null) {
            a2 += sp.zzo(16, str7);
        }
        Long l5 = this.zzjma;
        if (l5 != null) {
            a2 += sp.zzc(17, l5.longValue());
        }
        Long l6 = this.zzjmb;
        if (l6 != null) {
            a2 += sp.zzc(18, l6.longValue());
        }
        String str8 = this.zzjmc;
        if (str8 != null) {
            a2 += sp.zzo(19, str8);
        }
        Boolean bool = this.zzjmd;
        if (bool != null) {
            bool.booleanValue();
            a2 += sp.zzlg(20) + 1;
        }
        String str9 = this.zzjme;
        if (str9 != null) {
            a2 += sp.zzo(21, str9);
        }
        Long l7 = this.zzjmf;
        if (l7 != null) {
            a2 += sp.zzc(22, l7.longValue());
        }
        Integer num3 = this.zzjmg;
        if (num3 != null) {
            a2 += sp.zzad(23, num3.intValue());
        }
        String str10 = this.zzixw;
        if (str10 != null) {
            a2 += sp.zzo(24, str10);
        }
        String str11 = this.zzixs;
        if (str11 != null) {
            a2 += sp.zzo(25, str11);
        }
        Long l8 = this.zzjlu;
        if (l8 != null) {
            a2 += sp.zzc(26, l8.longValue());
        }
        Boolean bool2 = this.zzjmh;
        if (bool2 != null) {
            bool2.booleanValue();
            a2 += sp.zzlg(28) + 1;
        }
        nk[] nkVarArr = this.zzjmi;
        if (nkVarArr != null && nkVarArr.length > 0) {
            while (true) {
                nk[] nkVarArr2 = this.zzjmi;
                if (i >= nkVarArr2.length) {
                    break;
                }
                nk nkVar = nkVarArr2[i];
                if (nkVar != null) {
                    a2 += sp.zzb(29, (sx) nkVar);
                }
                i++;
            }
        }
        String str12 = this.zziya;
        if (str12 != null) {
            a2 += sp.zzo(30, str12);
        }
        Integer num4 = this.zzjmj;
        if (num4 != null) {
            a2 += sp.zzad(31, num4.intValue());
        }
        Integer num5 = this.d;
        if (num5 != null) {
            a2 += sp.zzad(32, num5.intValue());
        }
        Integer num6 = this.e;
        if (num6 != null) {
            a2 += sp.zzad(33, num6.intValue());
        }
        String str13 = this.zzjmm;
        if (str13 != null) {
            a2 += sp.zzo(34, str13);
        }
        Long l9 = this.zzjmn;
        if (l9 != null) {
            a2 += sp.zzc(35, l9.longValue());
        }
        Long l10 = this.zzfkk;
        if (l10 != null) {
            a2 += sp.zzc(36, l10.longValue());
        }
        String str14 = this.zzjmo;
        return str14 != null ? a2 + sp.zzo(37, str14) : a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof no)) {
            return false;
        }
        no noVar = (no) obj;
        Integer num = this.zzjlo;
        if (num == null) {
            if (noVar.zzjlo != null) {
                return false;
            }
        } else if (!num.equals(noVar.zzjlo)) {
            return false;
        }
        if (!sv.equals((Object[]) this.zzjlp, (Object[]) noVar.zzjlp) || !sv.equals((Object[]) this.zzjlq, (Object[]) noVar.zzjlq)) {
            return false;
        }
        Long l = this.zzjlr;
        if (l == null) {
            if (noVar.zzjlr != null) {
                return false;
            }
        } else if (!l.equals(noVar.zzjlr)) {
            return false;
        }
        Long l2 = this.zzjls;
        if (l2 == null) {
            if (noVar.zzjls != null) {
                return false;
            }
        } else if (!l2.equals(noVar.zzjls)) {
            return false;
        }
        Long l3 = this.zzjlt;
        if (l3 == null) {
            if (noVar.zzjlt != null) {
                return false;
            }
        } else if (!l3.equals(noVar.zzjlt)) {
            return false;
        }
        Long l4 = this.zzjlu;
        if (l4 == null) {
            if (noVar.zzjlu != null) {
                return false;
            }
        } else if (!l4.equals(noVar.zzjlu)) {
            return false;
        }
        Long l5 = this.zzjlv;
        if (l5 == null) {
            if (noVar.zzjlv != null) {
                return false;
            }
        } else if (!l5.equals(noVar.zzjlv)) {
            return false;
        }
        String str = this.zzjlw;
        if (str == null) {
            if (noVar.zzjlw != null) {
                return false;
            }
        } else if (!str.equals(noVar.zzjlw)) {
            return false;
        }
        String str2 = this.zzdb;
        if (str2 == null) {
            if (noVar.zzdb != null) {
                return false;
            }
        } else if (!str2.equals(noVar.zzdb)) {
            return false;
        }
        String str3 = this.zzjlx;
        if (str3 == null) {
            if (noVar.zzjlx != null) {
                return false;
            }
        } else if (!str3.equals(noVar.zzjlx)) {
            return false;
        }
        String str4 = this.zzjly;
        if (str4 == null) {
            if (noVar.zzjly != null) {
                return false;
            }
        } else if (!str4.equals(noVar.zzjly)) {
            return false;
        }
        Integer num2 = this.zzjlz;
        if (num2 == null) {
            if (noVar.zzjlz != null) {
                return false;
            }
        } else if (!num2.equals(noVar.zzjlz)) {
            return false;
        }
        String str5 = this.zzixt;
        if (str5 == null) {
            if (noVar.zzixt != null) {
                return false;
            }
        } else if (!str5.equals(noVar.zzixt)) {
            return false;
        }
        String str6 = this.zzcn;
        if (str6 == null) {
            if (noVar.zzcn != null) {
                return false;
            }
        } else if (!str6.equals(noVar.zzcn)) {
            return false;
        }
        String str7 = this.zzifm;
        if (str7 == null) {
            if (noVar.zzifm != null) {
                return false;
            }
        } else if (!str7.equals(noVar.zzifm)) {
            return false;
        }
        Long l6 = this.zzjma;
        if (l6 == null) {
            if (noVar.zzjma != null) {
                return false;
            }
        } else if (!l6.equals(noVar.zzjma)) {
            return false;
        }
        Long l7 = this.zzjmb;
        if (l7 == null) {
            if (noVar.zzjmb != null) {
                return false;
            }
        } else if (!l7.equals(noVar.zzjmb)) {
            return false;
        }
        String str8 = this.zzjmc;
        if (str8 == null) {
            if (noVar.zzjmc != null) {
                return false;
            }
        } else if (!str8.equals(noVar.zzjmc)) {
            return false;
        }
        Boolean bool = this.zzjmd;
        if (bool == null) {
            if (noVar.zzjmd != null) {
                return false;
            }
        } else if (!bool.equals(noVar.zzjmd)) {
            return false;
        }
        String str9 = this.zzjme;
        if (str9 == null) {
            if (noVar.zzjme != null) {
                return false;
            }
        } else if (!str9.equals(noVar.zzjme)) {
            return false;
        }
        Long l8 = this.zzjmf;
        if (l8 == null) {
            if (noVar.zzjmf != null) {
                return false;
            }
        } else if (!l8.equals(noVar.zzjmf)) {
            return false;
        }
        Integer num3 = this.zzjmg;
        if (num3 == null) {
            if (noVar.zzjmg != null) {
                return false;
            }
        } else if (!num3.equals(noVar.zzjmg)) {
            return false;
        }
        String str10 = this.zzixw;
        if (str10 == null) {
            if (noVar.zzixw != null) {
                return false;
            }
        } else if (!str10.equals(noVar.zzixw)) {
            return false;
        }
        String str11 = this.zzixs;
        if (str11 == null) {
            if (noVar.zzixs != null) {
                return false;
            }
        } else if (!str11.equals(noVar.zzixs)) {
            return false;
        }
        Boolean bool2 = this.zzjmh;
        if (bool2 == null) {
            if (noVar.zzjmh != null) {
                return false;
            }
        } else if (!bool2.equals(noVar.zzjmh)) {
            return false;
        }
        if (!sv.equals((Object[]) this.zzjmi, (Object[]) noVar.zzjmi)) {
            return false;
        }
        String str12 = this.zziya;
        if (str12 == null) {
            if (noVar.zziya != null) {
                return false;
            }
        } else if (!str12.equals(noVar.zziya)) {
            return false;
        }
        Integer num4 = this.zzjmj;
        if (num4 == null) {
            if (noVar.zzjmj != null) {
                return false;
            }
        } else if (!num4.equals(noVar.zzjmj)) {
            return false;
        }
        Integer num5 = this.d;
        if (num5 == null) {
            if (noVar.d != null) {
                return false;
            }
        } else if (!num5.equals(noVar.d)) {
            return false;
        }
        Integer num6 = this.e;
        if (num6 == null) {
            if (noVar.e != null) {
                return false;
            }
        } else if (!num6.equals(noVar.e)) {
            return false;
        }
        String str13 = this.zzjmm;
        if (str13 == null) {
            if (noVar.zzjmm != null) {
                return false;
            }
        } else if (!str13.equals(noVar.zzjmm)) {
            return false;
        }
        Long l9 = this.zzjmn;
        if (l9 == null) {
            if (noVar.zzjmn != null) {
                return false;
            }
        } else if (!l9.equals(noVar.zzjmn)) {
            return false;
        }
        Long l10 = this.zzfkk;
        if (l10 == null) {
            if (noVar.zzfkk != null) {
                return false;
            }
        } else if (!l10.equals(noVar.zzfkk)) {
            return false;
        }
        String str14 = this.zzjmo;
        if (str14 == null) {
            if (noVar.zzjmo != null) {
                return false;
            }
        } else if (!str14.equals(noVar.zzjmo)) {
            return false;
        }
        return (this.f3519a == null || this.f3519a.isEmpty()) ? noVar.f3519a == null || noVar.f3519a.isEmpty() : this.f3519a.equals(noVar.f3519a);
    }

    public final int hashCode() {
        int hashCode = (getClass().getName().hashCode() + 527) * 31;
        Integer num = this.zzjlo;
        int i = 0;
        int hashCode2 = (((((hashCode + (num == null ? 0 : num.hashCode())) * 31) + sv.hashCode((Object[]) this.zzjlp)) * 31) + sv.hashCode((Object[]) this.zzjlq)) * 31;
        Long l = this.zzjlr;
        int hashCode3 = (hashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.zzjls;
        int hashCode4 = (hashCode3 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.zzjlt;
        int hashCode5 = (hashCode4 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Long l4 = this.zzjlu;
        int hashCode6 = (hashCode5 + (l4 == null ? 0 : l4.hashCode())) * 31;
        Long l5 = this.zzjlv;
        int hashCode7 = (hashCode6 + (l5 == null ? 0 : l5.hashCode())) * 31;
        String str = this.zzjlw;
        int hashCode8 = (hashCode7 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.zzdb;
        int hashCode9 = (hashCode8 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.zzjlx;
        int hashCode10 = (hashCode9 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.zzjly;
        int hashCode11 = (hashCode10 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num2 = this.zzjlz;
        int hashCode12 = (hashCode11 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.zzixt;
        int hashCode13 = (hashCode12 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.zzcn;
        int hashCode14 = (hashCode13 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.zzifm;
        int hashCode15 = (hashCode14 + (str7 == null ? 0 : str7.hashCode())) * 31;
        Long l6 = this.zzjma;
        int hashCode16 = (hashCode15 + (l6 == null ? 0 : l6.hashCode())) * 31;
        Long l7 = this.zzjmb;
        int hashCode17 = (hashCode16 + (l7 == null ? 0 : l7.hashCode())) * 31;
        String str8 = this.zzjmc;
        int hashCode18 = (hashCode17 + (str8 == null ? 0 : str8.hashCode())) * 31;
        Boolean bool = this.zzjmd;
        int hashCode19 = (hashCode18 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str9 = this.zzjme;
        int hashCode20 = (hashCode19 + (str9 == null ? 0 : str9.hashCode())) * 31;
        Long l8 = this.zzjmf;
        int hashCode21 = (hashCode20 + (l8 == null ? 0 : l8.hashCode())) * 31;
        Integer num3 = this.zzjmg;
        int hashCode22 = (hashCode21 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str10 = this.zzixw;
        int hashCode23 = (hashCode22 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.zzixs;
        int hashCode24 = (hashCode23 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Boolean bool2 = this.zzjmh;
        int hashCode25 = (((hashCode24 + (bool2 == null ? 0 : bool2.hashCode())) * 31) + sv.hashCode((Object[]) this.zzjmi)) * 31;
        String str12 = this.zziya;
        int hashCode26 = (hashCode25 + (str12 == null ? 0 : str12.hashCode())) * 31;
        Integer num4 = this.zzjmj;
        int hashCode27 = (hashCode26 + (num4 == null ? 0 : num4.hashCode())) * 31;
        Integer num5 = this.d;
        int hashCode28 = (hashCode27 + (num5 == null ? 0 : num5.hashCode())) * 31;
        Integer num6 = this.e;
        int hashCode29 = (hashCode28 + (num6 == null ? 0 : num6.hashCode())) * 31;
        String str13 = this.zzjmm;
        int hashCode30 = (hashCode29 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Long l9 = this.zzjmn;
        int hashCode31 = (hashCode30 + (l9 == null ? 0 : l9.hashCode())) * 31;
        Long l10 = this.zzfkk;
        int hashCode32 = (hashCode31 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str14 = this.zzjmo;
        int hashCode33 = (hashCode32 + (str14 == null ? 0 : str14.hashCode())) * 31;
        if (this.f3519a != null && !this.f3519a.isEmpty()) {
            i = this.f3519a.hashCode();
        }
        return hashCode33 + i;
    }

    public final /* synthetic */ sx zza(so soVar) throws IOException {
        while (true) {
            int zzcvt = soVar.zzcvt();
            switch (zzcvt) {
                case 0:
                    return this;
                case 8:
                    this.zzjlo = Integer.valueOf(soVar.zzcwi());
                    break;
                case 18:
                    int zzb = ta.zzb(soVar, 18);
                    nl[] nlVarArr = this.zzjlp;
                    int length = nlVarArr == null ? 0 : nlVarArr.length;
                    nl[] nlVarArr2 = new nl[(zzb + length)];
                    if (length != 0) {
                        System.arraycopy(this.zzjlp, 0, nlVarArr2, 0, length);
                    }
                    while (length < nlVarArr2.length - 1) {
                        nlVarArr2[length] = new nl();
                        soVar.zza(nlVarArr2[length]);
                        soVar.zzcvt();
                        length++;
                    }
                    nlVarArr2[length] = new nl();
                    soVar.zza(nlVarArr2[length]);
                    this.zzjlp = nlVarArr2;
                    break;
                case 26:
                    int zzb2 = ta.zzb(soVar, 26);
                    nq[] nqVarArr = this.zzjlq;
                    int length2 = nqVarArr == null ? 0 : nqVarArr.length;
                    nq[] nqVarArr2 = new nq[(zzb2 + length2)];
                    if (length2 != 0) {
                        System.arraycopy(this.zzjlq, 0, nqVarArr2, 0, length2);
                    }
                    while (length2 < nqVarArr2.length - 1) {
                        nqVarArr2[length2] = new nq();
                        soVar.zza(nqVarArr2[length2]);
                        soVar.zzcvt();
                        length2++;
                    }
                    nqVarArr2[length2] = new nq();
                    soVar.zza(nqVarArr2[length2]);
                    this.zzjlq = nqVarArr2;
                    break;
                case 32:
                    this.zzjlr = Long.valueOf(soVar.zzcwn());
                    break;
                case 40:
                    this.zzjls = Long.valueOf(soVar.zzcwn());
                    break;
                case 48:
                    this.zzjlt = Long.valueOf(soVar.zzcwn());
                    break;
                case 56:
                    this.zzjlv = Long.valueOf(soVar.zzcwn());
                    break;
                case 66:
                    this.zzjlw = soVar.readString();
                    break;
                case 74:
                    this.zzdb = soVar.readString();
                    break;
                case 82:
                    this.zzjlx = soVar.readString();
                    break;
                case 90:
                    this.zzjly = soVar.readString();
                    break;
                case 96:
                    this.zzjlz = Integer.valueOf(soVar.zzcwi());
                    break;
                case 106:
                    this.zzixt = soVar.readString();
                    break;
                case 114:
                    this.zzcn = soVar.readString();
                    break;
                case 130:
                    this.zzifm = soVar.readString();
                    break;
                case 136:
                    this.zzjma = Long.valueOf(soVar.zzcwn());
                    break;
                case 144:
                    this.zzjmb = Long.valueOf(soVar.zzcwn());
                    break;
                case 154:
                    this.zzjmc = soVar.readString();
                    break;
                case 160:
                    this.zzjmd = Boolean.valueOf(soVar.zzcvz());
                    break;
                case 170:
                    this.zzjme = soVar.readString();
                    break;
                case 176:
                    this.zzjmf = Long.valueOf(soVar.zzcwn());
                    break;
                case c.VERSION_CODE:
                    this.zzjmg = Integer.valueOf(soVar.zzcwi());
                    break;
                case 194:
                    this.zzixw = soVar.readString();
                    break;
                case 202:
                    this.zzixs = soVar.readString();
                    break;
                case 208:
                    this.zzjlu = Long.valueOf(soVar.zzcwn());
                    break;
                case 224:
                    this.zzjmh = Boolean.valueOf(soVar.zzcvz());
                    break;
                case 234:
                    int zzb3 = ta.zzb(soVar, 234);
                    nk[] nkVarArr = this.zzjmi;
                    int length3 = nkVarArr == null ? 0 : nkVarArr.length;
                    nk[] nkVarArr2 = new nk[(zzb3 + length3)];
                    if (length3 != 0) {
                        System.arraycopy(this.zzjmi, 0, nkVarArr2, 0, length3);
                    }
                    while (length3 < nkVarArr2.length - 1) {
                        nkVarArr2[length3] = new nk();
                        soVar.zza(nkVarArr2[length3]);
                        soVar.zzcvt();
                        length3++;
                    }
                    nkVarArr2[length3] = new nk();
                    soVar.zza(nkVarArr2[length3]);
                    this.zzjmi = nkVarArr2;
                    break;
                case 242:
                    this.zziya = soVar.readString();
                    break;
                case 248:
                    this.zzjmj = Integer.valueOf(soVar.zzcwi());
                    break;
                case 256:
                    this.d = Integer.valueOf(soVar.zzcwi());
                    break;
                case 264:
                    this.e = Integer.valueOf(soVar.zzcwi());
                    break;
                case 274:
                    this.zzjmm = soVar.readString();
                    break;
                case 280:
                    this.zzjmn = Long.valueOf(soVar.zzcwn());
                    break;
                case 288:
                    this.zzfkk = Long.valueOf(soVar.zzcwn());
                    break;
                case 298:
                    this.zzjmo = soVar.readString();
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
        Integer num = this.zzjlo;
        if (num != null) {
            spVar.zzaa(1, num.intValue());
        }
        nl[] nlVarArr = this.zzjlp;
        int i = 0;
        if (nlVarArr != null && nlVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                nl[] nlVarArr2 = this.zzjlp;
                if (i2 >= nlVarArr2.length) {
                    break;
                }
                nl nlVar = nlVarArr2[i2];
                if (nlVar != null) {
                    spVar.zza(2, (sx) nlVar);
                }
                i2++;
            }
        }
        nq[] nqVarArr = this.zzjlq;
        if (nqVarArr != null && nqVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                nq[] nqVarArr2 = this.zzjlq;
                if (i3 >= nqVarArr2.length) {
                    break;
                }
                nq nqVar = nqVarArr2[i3];
                if (nqVar != null) {
                    spVar.zza(3, (sx) nqVar);
                }
                i3++;
            }
        }
        Long l = this.zzjlr;
        if (l != null) {
            spVar.zzf(4, l.longValue());
        }
        Long l2 = this.zzjls;
        if (l2 != null) {
            spVar.zzf(5, l2.longValue());
        }
        Long l3 = this.zzjlt;
        if (l3 != null) {
            spVar.zzf(6, l3.longValue());
        }
        Long l4 = this.zzjlv;
        if (l4 != null) {
            spVar.zzf(7, l4.longValue());
        }
        String str = this.zzjlw;
        if (str != null) {
            spVar.zzn(8, str);
        }
        String str2 = this.zzdb;
        if (str2 != null) {
            spVar.zzn(9, str2);
        }
        String str3 = this.zzjlx;
        if (str3 != null) {
            spVar.zzn(10, str3);
        }
        String str4 = this.zzjly;
        if (str4 != null) {
            spVar.zzn(11, str4);
        }
        Integer num2 = this.zzjlz;
        if (num2 != null) {
            spVar.zzaa(12, num2.intValue());
        }
        String str5 = this.zzixt;
        if (str5 != null) {
            spVar.zzn(13, str5);
        }
        String str6 = this.zzcn;
        if (str6 != null) {
            spVar.zzn(14, str6);
        }
        String str7 = this.zzifm;
        if (str7 != null) {
            spVar.zzn(16, str7);
        }
        Long l5 = this.zzjma;
        if (l5 != null) {
            spVar.zzf(17, l5.longValue());
        }
        Long l6 = this.zzjmb;
        if (l6 != null) {
            spVar.zzf(18, l6.longValue());
        }
        String str8 = this.zzjmc;
        if (str8 != null) {
            spVar.zzn(19, str8);
        }
        Boolean bool = this.zzjmd;
        if (bool != null) {
            spVar.zzl(20, bool.booleanValue());
        }
        String str9 = this.zzjme;
        if (str9 != null) {
            spVar.zzn(21, str9);
        }
        Long l7 = this.zzjmf;
        if (l7 != null) {
            spVar.zzf(22, l7.longValue());
        }
        Integer num3 = this.zzjmg;
        if (num3 != null) {
            spVar.zzaa(23, num3.intValue());
        }
        String str10 = this.zzixw;
        if (str10 != null) {
            spVar.zzn(24, str10);
        }
        String str11 = this.zzixs;
        if (str11 != null) {
            spVar.zzn(25, str11);
        }
        Long l8 = this.zzjlu;
        if (l8 != null) {
            spVar.zzf(26, l8.longValue());
        }
        Boolean bool2 = this.zzjmh;
        if (bool2 != null) {
            spVar.zzl(28, bool2.booleanValue());
        }
        nk[] nkVarArr = this.zzjmi;
        if (nkVarArr != null && nkVarArr.length > 0) {
            while (true) {
                nk[] nkVarArr2 = this.zzjmi;
                if (i >= nkVarArr2.length) {
                    break;
                }
                nk nkVar = nkVarArr2[i];
                if (nkVar != null) {
                    spVar.zza(29, (sx) nkVar);
                }
                i++;
            }
        }
        String str12 = this.zziya;
        if (str12 != null) {
            spVar.zzn(30, str12);
        }
        Integer num4 = this.zzjmj;
        if (num4 != null) {
            spVar.zzaa(31, num4.intValue());
        }
        Integer num5 = this.d;
        if (num5 != null) {
            spVar.zzaa(32, num5.intValue());
        }
        Integer num6 = this.e;
        if (num6 != null) {
            spVar.zzaa(33, num6.intValue());
        }
        String str13 = this.zzjmm;
        if (str13 != null) {
            spVar.zzn(34, str13);
        }
        Long l9 = this.zzjmn;
        if (l9 != null) {
            spVar.zzf(35, l9.longValue());
        }
        Long l10 = this.zzfkk;
        if (l10 != null) {
            spVar.zzf(36, l10.longValue());
        }
        String str14 = this.zzjmo;
        if (str14 != null) {
            spVar.zzn(37, str14);
        }
        super.zza(spVar);
    }
}
