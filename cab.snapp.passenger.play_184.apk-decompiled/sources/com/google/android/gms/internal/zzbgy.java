package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.b;
import com.google.android.gms.common.util.k;
import com.google.android.gms.common.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class zzbgy extends zzbgq {
    public static final Parcelable.Creator<zzbgy> CREATOR = new fl();

    /* renamed from: a  reason: collision with root package name */
    private final int f3583a;

    /* renamed from: b  reason: collision with root package name */
    private final Parcel f3584b;
    private final int c = 2;
    private final zzbgt d;
    private final String e;
    private int f;
    private int g;

    zzbgy(int i, Parcel parcel, zzbgt zzbgt) {
        this.f3583a = i;
        this.f3584b = (Parcel) ap.checkNotNull(parcel);
        this.d = zzbgt;
        zzbgt zzbgt2 = this.d;
        this.e = zzbgt2 == null ? null : zzbgt2.zzalz();
        this.f = 2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0005, code lost:
        if (r0 != 1) goto L_0x001a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.os.Parcel a() {
        /*
            r2 = this;
            int r0 = r2.f
            if (r0 == 0) goto L_0x0008
            r1 = 1
            if (r0 == r1) goto L_0x0010
            goto L_0x001a
        L_0x0008:
            android.os.Parcel r0 = r2.f3584b
            int r0 = com.google.android.gms.internal.el.zze(r0)
            r2.g = r0
        L_0x0010:
            android.os.Parcel r0 = r2.f3584b
            int r1 = r2.g
            com.google.android.gms.internal.el.zzai(r0, r1)
            r0 = 2
            r2.f = r0
        L_0x001a:
            android.os.Parcel r0 = r2.f3584b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbgy.a():android.os.Parcel");
    }

    private static HashMap<String, String> a(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap<>();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    private static void a(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(k.zzgr(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(b.zzk((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(b.zzl((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                l.zza(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v2, resolved type: java.lang.Object[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: double[]} */
    /* JADX WARNING: type inference failed for: r3v1 */
    /* JADX WARNING: type inference failed for: r3v8 */
    /* JADX WARNING: type inference failed for: r3v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void a(java.lang.StringBuilder r6, com.google.android.gms.internal.zzbgo<?, ?> r7, android.os.Parcel r8, int r9) {
        /*
            r5 = this;
            boolean r0 = r7.d
            java.lang.String r1 = ","
            r2 = 0
            if (r0 == 0) goto L_0x00c9
            java.lang.String r0 = "["
            r6.append(r0)
            int r0 = r7.c
            r3 = 0
            switch(r0) {
                case 0: goto L_0x00ab;
                case 1: goto L_0x0082;
                case 2: goto L_0x007a;
                case 3: goto L_0x0072;
                case 4: goto L_0x005b;
                case 5: goto L_0x0052;
                case 6: goto L_0x0049;
                case 7: goto L_0x0040;
                case 8: goto L_0x0038;
                case 9: goto L_0x0038;
                case 10: goto L_0x0038;
                case 11: goto L_0x001a;
                default: goto L_0x0012;
            }
        L_0x0012:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Unknown field type out."
            r6.<init>(r7)
            throw r6
        L_0x001a:
            android.os.Parcel[] r8 = com.google.android.gms.internal.ej.zzae(r8, r9)
            int r9 = r8.length
            r0 = 0
        L_0x0020:
            if (r0 >= r9) goto L_0x00c3
            if (r0 <= 0) goto L_0x0027
            r6.append(r1)
        L_0x0027:
            r3 = r8[r0]
            r3.setDataPosition(r2)
            java.util.Map r3 = r7.zzalx()
            r4 = r8[r0]
            r5.a((java.lang.StringBuilder) r6, (java.util.Map<java.lang.String, com.google.android.gms.internal.zzbgo<?, ?>>) r3, (android.os.Parcel) r4)
            int r0 = r0 + 1
            goto L_0x0020
        L_0x0038:
            java.lang.UnsupportedOperationException r6 = new java.lang.UnsupportedOperationException
            java.lang.String r7 = "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"
            r6.<init>(r7)
            throw r6
        L_0x0040:
            java.lang.String[] r7 = com.google.android.gms.internal.ej.zzaa(r8, r9)
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (java.lang.String[]) r7)
            goto L_0x00c3
        L_0x0049:
            boolean[] r7 = com.google.android.gms.internal.ej.zzv(r8, r9)
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (boolean[]) r7)
            goto L_0x00c3
        L_0x0052:
            java.math.BigDecimal[] r7 = com.google.android.gms.internal.ej.zzz(r8, r9)
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (T[]) r7)
            goto L_0x00c3
        L_0x005b:
            int r7 = com.google.android.gms.internal.ej.zza(r8, r9)
            int r9 = r8.dataPosition()
            if (r7 != 0) goto L_0x0066
            goto L_0x006e
        L_0x0066:
            double[] r3 = r8.createDoubleArray()
            int r9 = r9 + r7
            r8.setDataPosition(r9)
        L_0x006e:
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (double[]) r3)
            goto L_0x00c3
        L_0x0072:
            float[] r7 = com.google.android.gms.internal.ej.zzy(r8, r9)
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (float[]) r7)
            goto L_0x00c3
        L_0x007a:
            long[] r7 = com.google.android.gms.internal.ej.zzx(r8, r9)
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (long[]) r7)
            goto L_0x00c3
        L_0x0082:
            int r7 = com.google.android.gms.internal.ej.zza(r8, r9)
            int r9 = r8.dataPosition()
            if (r7 != 0) goto L_0x008d
            goto L_0x00a7
        L_0x008d:
            int r0 = r8.readInt()
            java.math.BigInteger[] r3 = new java.math.BigInteger[r0]
        L_0x0093:
            if (r2 >= r0) goto L_0x00a3
            java.math.BigInteger r1 = new java.math.BigInteger
            byte[] r4 = r8.createByteArray()
            r1.<init>(r4)
            r3[r2] = r1
            int r2 = r2 + 1
            goto L_0x0093
        L_0x00a3:
            int r9 = r9 + r7
            r8.setDataPosition(r9)
        L_0x00a7:
            com.google.android.gms.common.util.a.zza((java.lang.StringBuilder) r6, (T[]) r3)
            goto L_0x00c3
        L_0x00ab:
            int[] r7 = com.google.android.gms.internal.ej.zzw(r8, r9)
            int r8 = r7.length
        L_0x00b0:
            if (r2 >= r8) goto L_0x00c3
            if (r2 == 0) goto L_0x00b7
            r6.append(r1)
        L_0x00b7:
            r9 = r7[r2]
            java.lang.String r9 = java.lang.Integer.toString(r9)
            r6.append(r9)
            int r2 = r2 + 1
            goto L_0x00b0
        L_0x00c3:
            java.lang.String r7 = "]"
            r6.append(r7)
            return
        L_0x00c9:
            int r0 = r7.c
            java.lang.String r3 = "\""
            switch(r0) {
                case 0: goto L_0x019a;
                case 1: goto L_0x0192;
                case 2: goto L_0x018a;
                case 3: goto L_0x0182;
                case 4: goto L_0x017a;
                case 5: goto L_0x0172;
                case 6: goto L_0x016a;
                case 7: goto L_0x0158;
                case 8: goto L_0x0146;
                case 9: goto L_0x0134;
                case 10: goto L_0x00e7;
                case 11: goto L_0x00d8;
                default: goto L_0x00d0;
            }
        L_0x00d0:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Unknown field type out"
            r6.<init>(r7)
            throw r6
        L_0x00d8:
            android.os.Parcel r8 = com.google.android.gms.internal.ej.zzad(r8, r9)
            r8.setDataPosition(r2)
            java.util.Map r7 = r7.zzalx()
            r5.a((java.lang.StringBuilder) r6, (java.util.Map<java.lang.String, com.google.android.gms.internal.zzbgo<?, ?>>) r7, (android.os.Parcel) r8)
            return
        L_0x00e7:
            android.os.Bundle r7 = com.google.android.gms.internal.ej.zzs(r8, r9)
            java.util.Set r8 = r7.keySet()
            r8.size()
            java.lang.String r9 = "{"
            r6.append(r9)
            java.util.Iterator r8 = r8.iterator()
            r9 = 1
        L_0x00fc:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto L_0x012e
            java.lang.Object r0 = r8.next()
            java.lang.String r0 = (java.lang.String) r0
            if (r9 != 0) goto L_0x010d
            r6.append(r1)
        L_0x010d:
            r6.append(r3)
            r6.append(r0)
            r6.append(r3)
            java.lang.String r9 = ":"
            r6.append(r9)
            r6.append(r3)
            java.lang.String r9 = r7.getString(r0)
            java.lang.String r9 = com.google.android.gms.common.util.k.zzgr(r9)
            r6.append(r9)
            r6.append(r3)
            r9 = 0
            goto L_0x00fc
        L_0x012e:
            java.lang.String r7 = "}"
            r6.append(r7)
            return
        L_0x0134:
            byte[] r7 = com.google.android.gms.internal.ej.zzt(r8, r9)
            r6.append(r3)
            java.lang.String r7 = com.google.android.gms.common.util.b.zzl(r7)
            r6.append(r7)
            r6.append(r3)
            return
        L_0x0146:
            byte[] r7 = com.google.android.gms.internal.ej.zzt(r8, r9)
            r6.append(r3)
            java.lang.String r7 = com.google.android.gms.common.util.b.zzk(r7)
            r6.append(r7)
            r6.append(r3)
            return
        L_0x0158:
            java.lang.String r7 = com.google.android.gms.internal.ej.zzq(r8, r9)
            r6.append(r3)
            java.lang.String r7 = com.google.android.gms.common.util.k.zzgr(r7)
            r6.append(r7)
            r6.append(r3)
            return
        L_0x016a:
            boolean r7 = com.google.android.gms.internal.ej.zzc(r8, r9)
            r6.append(r7)
            return
        L_0x0172:
            java.math.BigDecimal r7 = com.google.android.gms.internal.ej.zzp(r8, r9)
            r6.append(r7)
            return
        L_0x017a:
            double r7 = com.google.android.gms.internal.ej.zzn(r8, r9)
            r6.append(r7)
            return
        L_0x0182:
            float r7 = com.google.android.gms.internal.ej.zzl(r8, r9)
            r6.append(r7)
            return
        L_0x018a:
            long r7 = com.google.android.gms.internal.ej.zzi(r8, r9)
            r6.append(r7)
            return
        L_0x0192:
            java.math.BigInteger r7 = com.google.android.gms.internal.ej.zzk(r8, r9)
            r6.append(r7)
            return
        L_0x019a:
            int r7 = com.google.android.gms.internal.ej.zzg(r8, r9)
            r6.append(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbgy.a(java.lang.StringBuilder, com.google.android.gms.internal.zzbgo, android.os.Parcel, int):void");
    }

    private static void a(StringBuilder sb, zzbgo<?, ?> zzbgo, Object obj) {
        if (zzbgo.f3576b) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (i != 0) {
                    sb.append(",");
                }
                a(sb, zzbgo.f3575a, arrayList.get(i));
            }
            sb.append("]");
            return;
        }
        a(sb, zzbgo.f3575a, obj);
    }

    private final void a(StringBuilder sb, Map<String, zzbgo<?, ?>> map, Parcel parcel) {
        Object obj;
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry next : map.entrySet()) {
            sparseArray.put(((zzbgo) next.getValue()).f, next);
        }
        sb.append('{');
        int zzd = ej.zzd(parcel);
        boolean z = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            Map.Entry entry = (Map.Entry) sparseArray.get(65535 & readInt);
            if (entry != null) {
                if (z) {
                    sb.append(",");
                }
                zzbgo zzbgo = (zzbgo) entry.getValue();
                sb.append("\"");
                sb.append((String) entry.getKey());
                sb.append("\":");
                if (zzbgo.zzalw()) {
                    switch (zzbgo.c) {
                        case 0:
                            obj = Integer.valueOf(ej.zzg(parcel, readInt));
                            break;
                        case 1:
                            obj = ej.zzk(parcel, readInt);
                            break;
                        case 2:
                            obj = Long.valueOf(ej.zzi(parcel, readInt));
                            break;
                        case 3:
                            obj = Float.valueOf(ej.zzl(parcel, readInt));
                            break;
                        case 4:
                            obj = Double.valueOf(ej.zzn(parcel, readInt));
                            break;
                        case 5:
                            obj = ej.zzp(parcel, readInt);
                            break;
                        case 6:
                            obj = Boolean.valueOf(ej.zzc(parcel, readInt));
                            break;
                        case 7:
                            obj = ej.zzq(parcel, readInt);
                            break;
                        case 8:
                        case 9:
                            obj = ej.zzt(parcel, readInt);
                            break;
                        case 10:
                            obj = a(ej.zzs(parcel, readInt));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            int i = zzbgo.c;
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                    a(sb, (zzbgo<?, ?>) zzbgo, a(zzbgo, obj));
                } else {
                    a(sb, zzbgo, parcel, readInt);
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == zzd) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(zzd);
        throw new ek(sb3.toString(), parcel);
    }

    public String toString() {
        ap.checkNotNull(this.d, "Cannot convert to JSON on client side.");
        Parcel a2 = a();
        a2.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        a(sb, this.d.zzgq(this.e), a2);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzbgt zzbgt;
        int zze = el.zze(parcel);
        el.zzc(parcel, 1, this.f3583a);
        el.zza(parcel, 2, a(), false);
        int i2 = this.c;
        if (i2 == 0) {
            zzbgt = null;
        } else if (i2 == 1 || i2 == 2) {
            zzbgt = this.d;
        } else {
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i2);
            throw new IllegalStateException(sb.toString());
        }
        el.zza(parcel, 3, (Parcelable) zzbgt, i, false);
        el.zzai(parcel, zze);
    }

    public final Map<String, zzbgo<?, ?>> zzaav() {
        zzbgt zzbgt = this.d;
        if (zzbgt == null) {
            return null;
        }
        return zzbgt.zzgq(this.e);
    }

    public final Object zzgo(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final boolean zzgp(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }
}
