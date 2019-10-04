package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import c.e.a.b.d.d.a.a;
import c.e.a.b.d.d.r;
import c.e.a.b.d.e.b.e;
import c.e.a.b.d.g.b;
import c.e.a.b.d.g.c;
import c.e.a.b.d.g.l;
import c.e.a.b.d.g.m;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    public final int f13112a;

    /* renamed from: b  reason: collision with root package name */
    public final Parcel f13113b;

    /* renamed from: c  reason: collision with root package name */
    public final int f13114c = 2;

    /* renamed from: d  reason: collision with root package name */
    public final zak f13115d;

    /* renamed from: e  reason: collision with root package name */
    public final String f13116e;

    /* renamed from: f  reason: collision with root package name */
    public int f13117f;

    /* renamed from: g  reason: collision with root package name */
    public int f13118g;

    public SafeParcelResponse(int i2, Parcel parcel, zak zak) {
        this.f13112a = i2;
        r.a(parcel);
        this.f13113b = parcel;
        this.f13115d = zak;
        zak zak2 = this.f13115d;
        if (zak2 == null) {
            this.f13116e = null;
        } else {
            this.f13116e = zak2.y();
        }
        this.f13117f = 2;
    }

    public Map<String, FastJsonResponse.Field<?, ?>> a() {
        zak zak = this.f13115d;
        if (zak == null) {
            return null;
        }
        return zak.e(this.f13116e);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0005, code lost:
        if (r0 != 1) goto L_0x001a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.os.Parcel b() {
        /*
            r2 = this;
            int r0 = r2.f13117f
            if (r0 == 0) goto L_0x0008
            r1 = 1
            if (r0 == r1) goto L_0x0010
            goto L_0x001a
        L_0x0008:
            android.os.Parcel r0 = r2.f13113b
            int r0 = c.e.a.b.d.d.a.a.a(r0)
            r2.f13118g = r0
        L_0x0010:
            android.os.Parcel r0 = r2.f13113b
            int r1 = r2.f13118g
            c.e.a.b.d.d.a.a.a(r0, r1)
            r0 = 2
            r2.f13117f = r0
        L_0x001a:
            android.os.Parcel r0 = r2.f13113b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.SafeParcelResponse.b():android.os.Parcel");
    }

    public String toString() {
        r.a(this.f13115d, (Object) "Cannot convert to JSON on client side.");
        Parcel b2 = b();
        b2.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        a(sb, this.f13115d.e(this.f13116e), b2);
        return sb.toString();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        zak zak;
        int a2 = a.a(parcel);
        a.a(parcel, 1, this.f13112a);
        a.a(parcel, 2, b(), false);
        int i3 = this.f13114c;
        if (i3 == 0) {
            zak = null;
        } else if (i3 == 1) {
            zak = this.f13115d;
        } else if (i3 == 2) {
            zak = this.f13115d;
        } else {
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid creation type: ");
            sb.append(i3);
            throw new IllegalStateException(sb.toString());
        }
        a.a(parcel, 3, (Parcelable) zak, i2, false);
        a.a(parcel, a2);
    }

    public Object a(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final void a(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry next : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) next.getValue()).x(), next);
        }
        sb.append('{');
        int b2 = SafeParcelReader.b(parcel);
        boolean z = false;
        while (parcel.dataPosition() < b2) {
            int a2 = SafeParcelReader.a(parcel);
            Map.Entry entry = (Map.Entry) sparseArray.get(SafeParcelReader.a(a2));
            if (entry != null) {
                if (z) {
                    sb.append(",");
                }
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry.getValue();
                sb.append("\"");
                sb.append((String) entry.getKey());
                sb.append("\":");
                if (field.z()) {
                    int i2 = field.f13104d;
                    switch (i2) {
                        case 0:
                            b(sb, field, FastJsonResponse.a(field, Integer.valueOf(SafeParcelReader.y(parcel, a2))));
                            break;
                        case 1:
                            b(sb, field, FastJsonResponse.a(field, SafeParcelReader.c(parcel, a2)));
                            break;
                        case 2:
                            b(sb, field, FastJsonResponse.a(field, Long.valueOf(SafeParcelReader.A(parcel, a2))));
                            break;
                        case 3:
                            b(sb, field, FastJsonResponse.a(field, Float.valueOf(SafeParcelReader.v(parcel, a2))));
                            break;
                        case 4:
                            b(sb, field, FastJsonResponse.a(field, Double.valueOf(SafeParcelReader.t(parcel, a2))));
                            break;
                        case 5:
                            b(sb, field, FastJsonResponse.a(field, SafeParcelReader.a(parcel, a2)));
                            break;
                        case 6:
                            b(sb, field, FastJsonResponse.a(field, Boolean.valueOf(SafeParcelReader.r(parcel, a2))));
                            break;
                        case 7:
                            b(sb, field, FastJsonResponse.a(field, SafeParcelReader.n(parcel, a2)));
                            break;
                        case 8:
                        case 9:
                            b(sb, field, FastJsonResponse.a(field, SafeParcelReader.g(parcel, a2)));
                            break;
                        case 10:
                            Bundle f2 = SafeParcelReader.f(parcel, a2);
                            HashMap hashMap = new HashMap();
                            for (String str : f2.keySet()) {
                                hashMap.put(str, f2.getString(str));
                            }
                            b(sb, field, FastJsonResponse.a(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i2);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.f13105e) {
                    sb.append("[");
                    switch (field.f13104d) {
                        case 0:
                            b.a(sb, SafeParcelReader.j(parcel, a2));
                            break;
                        case 1:
                            b.a(sb, (T[]) SafeParcelReader.d(parcel, a2));
                            break;
                        case 2:
                            b.a(sb, SafeParcelReader.k(parcel, a2));
                            break;
                        case 3:
                            b.a(sb, SafeParcelReader.i(parcel, a2));
                            break;
                        case 4:
                            b.a(sb, SafeParcelReader.h(parcel, a2));
                            break;
                        case 5:
                            b.a(sb, (T[]) SafeParcelReader.b(parcel, a2));
                            break;
                        case 6:
                            b.a(sb, SafeParcelReader.e(parcel, a2));
                            break;
                        case 7:
                            b.a(sb, SafeParcelReader.o(parcel, a2));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] m = SafeParcelReader.m(parcel, a2);
                            int length = m.length;
                            for (int i3 = 0; i3 < length; i3++) {
                                if (i3 > 0) {
                                    sb.append(",");
                                }
                                m[i3].setDataPosition(0);
                                a(sb, field.B(), m[i3]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.f13104d) {
                        case 0:
                            sb.append(SafeParcelReader.y(parcel, a2));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.c(parcel, a2));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.A(parcel, a2));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.v(parcel, a2));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.t(parcel, a2));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.a(parcel, a2));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.r(parcel, a2));
                            break;
                        case 7:
                            String n = SafeParcelReader.n(parcel, a2);
                            sb.append("\"");
                            sb.append(l.a(n));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] g2 = SafeParcelReader.g(parcel, a2);
                            sb.append("\"");
                            sb.append(c.a(g2));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] g3 = SafeParcelReader.g(parcel, a2);
                            sb.append("\"");
                            sb.append(c.b(g3));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle f3 = SafeParcelReader.f(parcel, a2);
                            Set<String> keySet = f3.keySet();
                            keySet.size();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str2 : keySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str2);
                                sb.append("\"");
                                sb.append(":");
                                sb.append("\"");
                                sb.append(l.a(f3.getString(str2)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel l2 = SafeParcelReader.l(parcel, a2);
                            l2.setDataPosition(0);
                            a(sb, field.B(), l2);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == b2) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(b2);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    public boolean b(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public final void b(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.f13103c) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (i2 != 0) {
                    sb.append(",");
                }
                a(sb, field.f13102b, arrayList.get(i2));
            }
            sb.append("]");
            return;
        }
        a(sb, field.f13102b, obj);
    }

    public static void a(StringBuilder sb, int i2, Object obj) {
        switch (i2) {
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
                sb.append(l.a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(c.a((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(c.b((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                m.a(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i2);
                throw new IllegalArgumentException(sb2.toString());
        }
    }
}
