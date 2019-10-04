package c.e.a.b.g.f;

import c.e.a.b.g.f.C0832ib;
import com.google.android.gms.internal.measurement.zzdp;
import com.google.android.gms.internal.measurement.zzeg;
import com.google.android.gms.internal.measurement.zzif;
import com.google.android.gms.internal.measurement.zzik;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: c.e.a.b.g.f.gb  reason: case insensitive filesystem */
public final class C0824gb<FieldDescriptorType extends C0832ib<FieldDescriptorType>> {

    /* renamed from: a  reason: collision with root package name */
    public static final C0824gb f10413a = new C0824gb(true);

    /* renamed from: b  reason: collision with root package name */
    public final C0845lc<FieldDescriptorType, Object> f10414b = C0845lc.a(16);

    /* renamed from: c  reason: collision with root package name */
    public boolean f10415c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10416d = false;

    public C0824gb() {
    }

    public static <T extends C0832ib<T>> C0824gb<T> g() {
        return f10413a;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> a() {
        if (this.f10416d) {
            return new C0899zb(this.f10414b.e().iterator());
        }
        return this.f10414b.e().iterator();
    }

    public final boolean b() {
        return this.f10414b.isEmpty();
    }

    public final boolean c() {
        return this.f10415c;
    }

    public final /* synthetic */ Object clone() {
        C0824gb gbVar = new C0824gb();
        for (int i2 = 0; i2 < this.f10414b.c(); i2++) {
            Map.Entry<FieldDescriptorType, Object> b2 = this.f10414b.b(i2);
            gbVar.a((C0832ib) b2.getKey(), b2.getValue());
        }
        for (Map.Entry next : this.f10414b.d()) {
            gbVar.a((C0832ib) next.getKey(), next.getValue());
        }
        gbVar.f10416d = this.f10416d;
        return gbVar;
    }

    public final boolean d() {
        for (int i2 = 0; i2 < this.f10414b.c(); i2++) {
            if (!a(this.f10414b.b(i2))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> a2 : this.f10414b.d()) {
            if (!a(a2)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> e() {
        if (this.f10416d) {
            return new C0899zb(this.f10414b.entrySet().iterator());
        }
        return this.f10414b.entrySet().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0824gb)) {
            return false;
        }
        return this.f10414b.equals(((C0824gb) obj).f10414b);
    }

    public final void f() {
        if (!this.f10415c) {
            this.f10414b.b();
            this.f10415c = true;
        }
    }

    public final int h() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f10414b.c(); i3++) {
            Map.Entry<FieldDescriptorType, Object> b2 = this.f10414b.b(i3);
            i2 += b((C0832ib<?>) (C0832ib) b2.getKey(), b2.getValue());
        }
        for (Map.Entry next : this.f10414b.d()) {
            i2 += b((C0832ib<?>) (C0832ib) next.getKey(), next.getValue());
        }
        return i2;
    }

    public final int hashCode() {
        return this.f10414b.hashCode();
    }

    public final int i() {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f10414b.c(); i3++) {
            i2 += c(this.f10414b.b(i3));
        }
        for (Map.Entry<FieldDescriptorType, Object> c2 : this.f10414b.d()) {
            i2 += c(c2);
        }
        return i2;
    }

    public static int c(Map.Entry<FieldDescriptorType, Object> entry) {
        C0832ib ibVar = (C0832ib) entry.getKey();
        Object value = entry.getValue();
        if (ibVar.b() != zzik.MESSAGE || ibVar.c() || ibVar.e()) {
            return b((C0832ib<?>) ibVar, value);
        }
        if (value instanceof C0887wb) {
            return zzeg.b(((C0832ib) entry.getKey()).a(), (Ab) (C0887wb) value);
        }
        return zzeg.d(((C0832ib) entry.getKey()).a(), (Sb) value);
    }

    public final void b(Map.Entry<FieldDescriptorType, Object> entry) {
        Object obj;
        C0832ib ibVar = (C0832ib) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof C0887wb) {
            C0887wb.c();
            throw null;
        } else if (ibVar.c()) {
            Object a2 = a(ibVar);
            if (a2 == null) {
                a2 = new ArrayList();
            }
            for (Object a3 : (List) value) {
                ((List) a2).add(a(a3));
            }
            this.f10414b.put(ibVar, a2);
        } else if (ibVar.b() == zzik.MESSAGE) {
            Object a4 = a(ibVar);
            if (a4 == null) {
                this.f10414b.put(ibVar, a(value));
                return;
            }
            if (a4 instanceof Yb) {
                obj = ibVar.a((Yb) a4, (Yb) value);
            } else {
                obj = ibVar.a(((Sb) a4).e(), (Sb) value).o();
            }
            this.f10414b.put(ibVar, obj);
        } else {
            this.f10414b.put(ibVar, a(value));
        }
    }

    public C0824gb(boolean z) {
        f();
    }

    public final Object a(FieldDescriptorType fielddescriptortype) {
        Object obj = this.f10414b.get(fielddescriptortype);
        if (!(obj instanceof C0887wb)) {
            return obj;
        }
        C0887wb.c();
        throw null;
    }

    public final void a(FieldDescriptorType fielddescriptortype, Object obj) {
        if (!fielddescriptortype.c()) {
            a(fielddescriptortype.d(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj2 = arrayList.get(i2);
                i2++;
                a(fielddescriptortype.d(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof C0887wb) {
            this.f10416d = true;
        }
        this.f10414b.put(fielddescriptortype, obj);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0026, code lost:
        r1 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        if ((r3 instanceof byte[]) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001b, code lost:
        if ((r3 instanceof c.e.a.b.g.f.C0887wb) == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0024, code lost:
        if ((r3 instanceof c.e.a.b.g.f.C0867rb) == false) goto L_0x0043;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(com.google.android.gms.internal.measurement.zzif r2, java.lang.Object r3) {
        /*
            c.e.a.b.g.f.C0864qb.a(r3)
            int[] r0 = c.e.a.b.g.f.C0828hb.f10426a
            com.google.android.gms.internal.measurement.zzik r2 = r2.f()
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
            boolean r2 = r3 instanceof c.e.a.b.g.f.Sb
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof c.e.a.b.g.f.C0887wb
            if (r2 == 0) goto L_0x0043
            goto L_0x0026
        L_0x001e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L_0x0026
            boolean r2 = r3 instanceof c.e.a.b.g.f.C0867rb
            if (r2 == 0) goto L_0x0043
        L_0x0026:
            r1 = 1
            goto L_0x0043
        L_0x0028:
            boolean r2 = r3 instanceof com.google.android.gms.internal.measurement.zzdp
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
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.C0824gb.a(com.google.android.gms.internal.measurement.zzif, java.lang.Object):void");
    }

    public static int b(zzif zzif, Object obj) {
        switch (C0828hb.f10427b[zzif.ordinal()]) {
            case 1:
                return zzeg.b(((Double) obj).doubleValue());
            case 2:
                return zzeg.b(((Float) obj).floatValue());
            case 3:
                return zzeg.d(((Long) obj).longValue());
            case 4:
                return zzeg.e(((Long) obj).longValue());
            case 5:
                return zzeg.f(((Integer) obj).intValue());
            case 6:
                return zzeg.g(((Long) obj).longValue());
            case 7:
                return zzeg.i(((Integer) obj).intValue());
            case 8:
                return zzeg.b(((Boolean) obj).booleanValue());
            case 9:
                return zzeg.b((Sb) obj);
            case 10:
                if (obj instanceof C0887wb) {
                    return zzeg.a((Ab) (C0887wb) obj);
                }
                return zzeg.a((Sb) obj);
            case 11:
                if (obj instanceof zzdp) {
                    return zzeg.a((zzdp) obj);
                }
                return zzeg.a((String) obj);
            case 12:
                if (obj instanceof zzdp) {
                    return zzeg.a((zzdp) obj);
                }
                return zzeg.b((byte[]) obj);
            case 13:
                return zzeg.g(((Integer) obj).intValue());
            case 14:
                return zzeg.j(((Integer) obj).intValue());
            case 15:
                return zzeg.h(((Long) obj).longValue());
            case 16:
                return zzeg.h(((Integer) obj).intValue());
            case 17:
                return zzeg.f(((Long) obj).longValue());
            case 18:
                if (obj instanceof C0867rb) {
                    return zzeg.k(((C0867rb) obj).a());
                }
                return zzeg.k(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static boolean a(Map.Entry<FieldDescriptorType, Object> entry) {
        C0832ib ibVar = (C0832ib) entry.getKey();
        if (ibVar.b() == zzik.MESSAGE) {
            if (ibVar.c()) {
                for (Sb b2 : (List) entry.getValue()) {
                    if (!b2.b()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof Sb) {
                    if (!((Sb) value).b()) {
                        return false;
                    }
                } else if (value instanceof C0887wb) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void a(C0824gb<FieldDescriptorType> gbVar) {
        for (int i2 = 0; i2 < gbVar.f10414b.c(); i2++) {
            b(gbVar.f10414b.b(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> b2 : gbVar.f10414b.d()) {
            b(b2);
        }
    }

    public static Object a(Object obj) {
        if (obj instanceof Yb) {
            return ((Yb) obj).l();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int a(zzif zzif, int i2, Object obj) {
        int e2 = zzeg.e(i2);
        if (zzif == zzif.GROUP) {
            C0864qb.a((Sb) obj);
            e2 <<= 1;
        }
        return e2 + b(zzif, obj);
    }

    public static int b(C0832ib<?> ibVar, Object obj) {
        zzif d2 = ibVar.d();
        int a2 = ibVar.a();
        if (!ibVar.c()) {
            return a(d2, a2, obj);
        }
        int i2 = 0;
        if (ibVar.e()) {
            for (Object b2 : (List) obj) {
                i2 += b(d2, b2);
            }
            return zzeg.e(a2) + i2 + zzeg.m(i2);
        }
        for (Object a3 : (List) obj) {
            i2 += a(d2, a2, a3);
        }
        return i2;
    }
}
