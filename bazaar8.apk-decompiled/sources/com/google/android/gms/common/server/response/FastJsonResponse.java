package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import c.e.a.b.d.d.C0794q;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.c;
import c.e.a.b.d.g.l;
import c.e.a.b.d.g.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.converter.zaa;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final c.e.a.b.d.e.b.a CREATOR = new c.e.a.b.d.e.b.a();

        /* renamed from: a  reason: collision with root package name */
        public final int f13101a;

        /* renamed from: b  reason: collision with root package name */
        public final int f13102b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f13103c;

        /* renamed from: d  reason: collision with root package name */
        public final int f13104d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f13105e;

        /* renamed from: f  reason: collision with root package name */
        public final String f13106f;

        /* renamed from: g  reason: collision with root package name */
        public final int f13107g;

        /* renamed from: h  reason: collision with root package name */
        public final Class<? extends FastJsonResponse> f13108h;

        /* renamed from: i  reason: collision with root package name */
        public final String f13109i;

        /* renamed from: j  reason: collision with root package name */
        public zak f13110j;

        /* renamed from: k  reason: collision with root package name */
        public a<I, O> f13111k;

        public Field(int i2, int i3, boolean z, int i4, boolean z2, String str, int i5, String str2, zaa zaa) {
            this.f13101a = i2;
            this.f13102b = i3;
            this.f13103c = z;
            this.f13104d = i4;
            this.f13105e = z2;
            this.f13106f = str;
            this.f13107g = i5;
            if (str2 == null) {
                this.f13108h = null;
                this.f13109i = null;
            } else {
                this.f13108h = SafeParcelResponse.class;
                this.f13109i = str2;
            }
            if (zaa == null) {
                this.f13111k = null;
            } else {
                this.f13111k = zaa.x();
            }
        }

        public final zaa A() {
            a<I, O> aVar = this.f13111k;
            if (aVar == null) {
                return null;
            }
            return zaa.a(aVar);
        }

        public final Map<String, Field<?, ?>> B() {
            r.a(this.f13109i);
            r.a(this.f13110j);
            return this.f13110j.e(this.f13109i);
        }

        public final void a(zak zak) {
            this.f13110j = zak;
        }

        public String toString() {
            C0794q.a a2 = C0794q.a((Object) this);
            a2.a("versionCode", Integer.valueOf(this.f13101a));
            a2.a("typeIn", Integer.valueOf(this.f13102b));
            a2.a("typeInArray", Boolean.valueOf(this.f13103c));
            a2.a("typeOut", Integer.valueOf(this.f13104d));
            a2.a("typeOutArray", Boolean.valueOf(this.f13105e));
            a2.a("outputFieldName", this.f13106f);
            a2.a("safeParcelFieldId", Integer.valueOf(this.f13107g));
            a2.a("concreteTypeName", y());
            Class<? extends FastJsonResponse> cls = this.f13108h;
            if (cls != null) {
                a2.a("concreteType.class", cls.getCanonicalName());
            }
            a<I, O> aVar = this.f13111k;
            if (aVar != null) {
                a2.a("converterName", aVar.getClass().getCanonicalName());
            }
            return a2.toString();
        }

        public void writeToParcel(Parcel parcel, int i2) {
            int a2 = c.e.a.b.d.d.a.a.a(parcel);
            c.e.a.b.d.d.a.a.a(parcel, 1, this.f13101a);
            c.e.a.b.d.d.a.a.a(parcel, 2, this.f13102b);
            c.e.a.b.d.d.a.a.a(parcel, 3, this.f13103c);
            c.e.a.b.d.d.a.a.a(parcel, 4, this.f13104d);
            c.e.a.b.d.d.a.a.a(parcel, 5, this.f13105e);
            c.e.a.b.d.d.a.a.a(parcel, 6, this.f13106f, false);
            c.e.a.b.d.d.a.a.a(parcel, 7, x());
            c.e.a.b.d.d.a.a.a(parcel, 8, y(), false);
            c.e.a.b.d.d.a.a.a(parcel, 9, (Parcelable) A(), i2, false);
            c.e.a.b.d.d.a.a.a(parcel, a2);
        }

        public int x() {
            return this.f13107g;
        }

        public final String y() {
            String str = this.f13109i;
            if (str == null) {
                return null;
            }
            return str;
        }

        public final boolean z() {
            return this.f13111k != null;
        }

        public final I a(O o) {
            return this.f13111k.a(o);
        }
    }

    public interface a<I, O> {
        I a(O o);
    }

    public static <O, I> I a(Field<I, O> field, Object obj) {
        return field.f13111k != null ? field.a(obj) : obj;
    }

    public abstract Object a(String str);

    public abstract Map<String, Field<?, ?>> a();

    public boolean b(Field field) {
        if (field.f13104d != 11) {
            return b(field.f13106f);
        }
        if (field.f13105e) {
            String str = field.f13106f;
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        String str2 = field.f13106f;
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    public abstract boolean b(String str);

    public String toString() {
        Map<String, Field<?, ?>> a2 = a();
        StringBuilder sb = new StringBuilder(100);
        for (String next : a2.keySet()) {
            Field field = a2.get(next);
            if (b(field)) {
                Object a3 = a(field, a(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(next);
                sb.append("\":");
                if (a3 != null) {
                    switch (field.f13104d) {
                        case 8:
                            sb.append("\"");
                            sb.append(c.a((byte[]) a3));
                            sb.append("\"");
                            break;
                        case 9:
                            sb.append("\"");
                            sb.append(c.b((byte[]) a3));
                            sb.append("\"");
                            break;
                        case 10:
                            m.a(sb, (HashMap) a3);
                            break;
                        default:
                            if (!field.f13103c) {
                                a(sb, field, a3);
                                break;
                            } else {
                                ArrayList arrayList = (ArrayList) a3;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i2 = 0; i2 < size; i2++) {
                                    if (i2 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i2);
                                    if (obj != null) {
                                        a(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                break;
                            }
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    public Object a(Field field) {
        String str = field.f13106f;
        if (field.f13108h == null) {
            return a(str);
        }
        r.a(a(str) == null, "Concrete field shouldn't be value object: %s", field.f13106f);
        boolean z = field.f13105e;
        try {
            char upperCase = Character.toUpperCase(str.charAt(0));
            String substring = str.substring(1);
            StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
            sb.append("get");
            sb.append(upperCase);
            sb.append(substring);
            return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void a(StringBuilder sb, Field field, Object obj) {
        int i2 = field.f13102b;
        if (i2 == 11) {
            sb.append(((FastJsonResponse) field.f13108h.cast(obj)).toString());
        } else if (i2 == 7) {
            sb.append("\"");
            sb.append(l.a((String) obj));
            sb.append("\"");
        } else {
            sb.append(obj);
        }
    }
}
