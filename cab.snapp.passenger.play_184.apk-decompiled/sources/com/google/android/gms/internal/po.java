package com.google.android.gms.internal;

import com.google.android.gms.internal.pq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class po<FieldDescriptorType extends pq<FieldDescriptorType>> {
    private static final po d = new po((byte) 0);

    /* renamed from: a  reason: collision with root package name */
    private final ri<FieldDescriptorType, Object> f3445a = ri.a(16);

    /* renamed from: b  reason: collision with root package name */
    private boolean f3446b;
    private boolean c = false;

    private po() {
    }

    private po(byte b2) {
        if (!this.f3446b) {
            this.f3445a.zzbiy();
            this.f3446b = true;
        }
    }

    private static int a(zzfiy zzfiy, int i, Object obj) {
        int zzlg = ph.zzlg(i);
        if (zzfiy == zzfiy.GROUP) {
            pu.a();
            zzlg <<= 1;
        }
        return zzlg + b(zzfiy, obj);
    }

    private static int a(Map.Entry<FieldDescriptorType, Object> entry) {
        pq pqVar = (pq) entry.getKey();
        Object value = entry.getValue();
        if (pqVar.zzcxi() != zzfjd.MESSAGE || pqVar.zzcxj() || pqVar.zzcxk()) {
            return b((pq<?>) pqVar, value);
        }
        boolean z = value instanceof qa;
        int zzhq = ((pq) entry.getKey()).zzhq();
        return z ? ph.zzb(zzhq, (qd) (qa) value) : ph.zzd(zzhq, (qr) value);
    }

    private void a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.zzcxj()) {
            a(fielddescriptortype.zzcxh(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList2.get(i);
                i++;
                a(fielddescriptortype.zzcxh(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof qa) {
            this.c = true;
        }
        this.f3445a.put(fielddescriptortype, obj);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0026, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        if ((r3 instanceof byte[]) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001b, code lost:
        if ((r3 instanceof com.google.android.gms.internal.qa) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0024, code lost:
        if ((r3 instanceof com.google.android.gms.internal.pv) == false) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(com.google.android.gms.internal.zzfiy r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.pu.a(r3)
            int[] r0 = com.google.android.gms.internal.pp.f3447a
            com.google.android.gms.internal.zzfjd r2 = r2.zzdad()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L_0x0040;
                case 2: goto L_0x003d;
                case 3: goto L_0x003a;
                case 4: goto L_0x0037;
                case 5: goto L_0x0034;
                case 6: goto L_0x0031;
                case 7: goto L_0x0028;
                case 8: goto L_0x001e;
                case 9: goto L_0x0015;
                default: goto L_0x0014;
            }
        L_0x0014:
            goto L_0x0043
        L_0x0015:
            boolean r2 = r3 instanceof com.google.android.gms.internal.qr
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof com.google.android.gms.internal.qa
            if (r2 == 0) goto L_0x0043
            goto L_0x0026
        L_0x001e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof com.google.android.gms.internal.pv
            if (r2 == 0) goto L_0x0043
        L_0x0026:
            r1 = 1
            goto L_0x0043
        L_0x0028:
            boolean r2 = r3 instanceof com.google.android.gms.internal.ou
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L_0x0043
            goto L_0x0026
        L_0x0031:
            boolean r0 = r3 instanceof java.lang.String
            goto L_0x0042
        L_0x0034:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L_0x0042
        L_0x0037:
            boolean r0 = r3 instanceof java.lang.Double
            goto L_0x0042
        L_0x003a:
            boolean r0 = r3 instanceof java.lang.Float
            goto L_0x0042
        L_0x003d:
            boolean r0 = r3 instanceof java.lang.Long
            goto L_0x0042
        L_0x0040:
            boolean r0 = r3 instanceof java.lang.Integer
        L_0x0042:
            r1 = r0
        L_0x0043:
            if (r1 == 0) goto L_0x0046
            return
        L_0x0046:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            goto L_0x004f
        L_0x004e:
            throw r2
        L_0x004f:
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.po.a(com.google.android.gms.internal.zzfiy, java.lang.Object):void");
    }

    private static int b(pq<?> pqVar, Object obj) {
        zzfiy zzcxh = pqVar.zzcxh();
        int zzhq = pqVar.zzhq();
        if (!pqVar.zzcxj()) {
            return a(zzcxh, zzhq, obj);
        }
        int i = 0;
        List<Object> list = (List) obj;
        if (pqVar.zzcxk()) {
            for (Object b2 : list) {
                i += b(zzcxh, b2);
            }
            return ph.zzlg(zzhq) + i + ph.zzlp(i);
        }
        for (Object a2 : list) {
            i += a(zzcxh, zzhq, a2);
        }
        return i;
    }

    private static int b(zzfiy zzfiy, Object obj) {
        switch (pp.f3448b[zzfiy.ordinal()]) {
            case 1:
                return ph.zzo(((Double) obj).doubleValue());
            case 2:
                return ph.zzg(((Float) obj).floatValue());
            case 3:
                return ph.zzcw(((Long) obj).longValue());
            case 4:
                return ph.zzcx(((Long) obj).longValue());
            case 5:
                return ph.zzlh(((Integer) obj).intValue());
            case 6:
                return ph.zzcz(((Long) obj).longValue());
            case 7:
                return ph.zzlk(((Integer) obj).intValue());
            case 8:
                return ph.zzde(((Boolean) obj).booleanValue());
            case 9:
                return ph.zzg((qr) obj);
            case 10:
                return obj instanceof qa ? ph.zza((qa) obj) : ph.zzf((qr) obj);
            case 11:
                return obj instanceof ou ? ph.zzaz((ou) obj) : ph.zztt((String) obj);
            case 12:
                return obj instanceof ou ? ph.zzaz((ou) obj) : ph.zzbd((byte[]) obj);
            case 13:
                return ph.zzli(((Integer) obj).intValue());
            case 14:
                return ph.zzll(((Integer) obj).intValue());
            case 15:
                return ph.zzda(((Long) obj).longValue());
            case 16:
                return ph.zzlj(((Integer) obj).intValue());
            case 17:
                return ph.zzcy(((Long) obj).longValue());
            case 18:
                return obj instanceof pv ? ph.zzlm(((pv) obj).zzhq()) : ph.zzlm(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static Object zza(pd pdVar, zzfiy zzfiy, boolean z) throws IOException {
        sj sjVar = sj.zzpmw;
        switch (se.f3513a[zzfiy.ordinal()]) {
            case 1:
                return Double.valueOf(pdVar.readDouble());
            case 2:
                return Float.valueOf(pdVar.readFloat());
            case 3:
                return Long.valueOf(pdVar.zzcvv());
            case 4:
                return Long.valueOf(pdVar.zzcvu());
            case 5:
                return Integer.valueOf(pdVar.zzcvw());
            case 6:
                return Long.valueOf(pdVar.zzcvx());
            case 7:
                return Integer.valueOf(pdVar.zzcvy());
            case 8:
                return Boolean.valueOf(pdVar.zzcvz());
            case 9:
                return pdVar.zzcwb();
            case 10:
                return Integer.valueOf(pdVar.zzcwc());
            case 11:
                return Integer.valueOf(pdVar.zzcwe());
            case 12:
                return Long.valueOf(pdVar.zzcwf());
            case 13:
                return Integer.valueOf(pdVar.zzcwg());
            case 14:
                return Long.valueOf(pdVar.zzcwh());
            case 15:
                return sjVar.a(pdVar);
            case 16:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle nested groups.");
            case 17:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle embedded messages.");
            case 18:
                throw new IllegalArgumentException("readPrimitiveField() cannot handle enums.");
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static <T extends pq<T>> po<T> zzcxf() {
        return new po<>();
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        po poVar = new po();
        for (int i = 0; i < this.f3445a.zzczj(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzmb = this.f3445a.zzmb(i);
            poVar.a((pq) zzmb.getKey(), zzmb.getValue());
        }
        for (Map.Entry next : this.f3445a.zzczk()) {
            poVar.a((pq) next.getKey(), next.getValue());
        }
        poVar.c = this.c;
        return poVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof po)) {
            return false;
        }
        return this.f3445a.equals(((po) obj).f3445a);
    }

    public final int hashCode() {
        return this.f3445a.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        return this.c ? new qc(this.f3445a.entrySet().iterator()) : this.f3445a.entrySet().iterator();
    }

    public final int zzcxg() {
        int i = 0;
        for (int i2 = 0; i2 < this.f3445a.zzczj(); i2++) {
            i += a(this.f3445a.zzmb(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> a2 : this.f3445a.zzczk()) {
            i += a(a2);
        }
        return i;
    }
}
