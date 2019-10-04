package c.e.a.b.h.b;

import android.text.TextUtils;
import c.e.a.b.d.d.r;
import c.e.a.b.g.f.C0803ba;
import c.e.a.b.g.f.C0807ca;
import c.e.a.b.g.f.C0811da;
import c.e.a.b.g.f.H;
import c.e.a.b.g.f.I;
import c.e.a.b.g.f.K;
import c.e.a.b.g.f.L;
import c.e.a.b.g.f.M;
import c.e.a.b.g.f.N;
import c.e.a.b.g.f.Qc;
import c.e.a.b.g.f.T;
import c.e.a.b.g.f.U;
import c.e.a.b.g.f.W;
import c.e.a.b.g.f.X;
import c.e.a.b.g.f.Y;
import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.google.android.gms.internal.measurement.zzbl$zza$zzb;
import com.google.android.gms.internal.measurement.zzbl$zzb$zzb;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzm;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public final class Zb extends Sb {
    public Zb(Tb tb) {
        super(tb);
    }

    public static Object b(C0803ba baVar, String str) {
        K a2 = a(baVar, str);
        if (a2 != null) {
            if (a2.s()) {
                return a2.t();
            }
            if (a2.v()) {
                return Long.valueOf(a2.w());
            }
            if (a2.y()) {
                return Double.valueOf(a2.z());
            }
        }
        return null;
    }

    public final void a(N.a aVar, Object obj) {
        r.a(obj);
        aVar.j();
        aVar.k();
        aVar.m();
        if (obj instanceof String) {
            aVar.b((String) obj);
        } else if (obj instanceof Long) {
            aVar.b(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            aVar.a(((Double) obj).doubleValue());
        } else {
            e().t().a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final byte[] c(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            e().t().a("Failed to gzip content", e2);
            throw e2;
        }
    }

    public final boolean u() {
        return false;
    }

    public final int[] v() {
        Map<String, String> a2 = C0931k.a(this.f10729b.b());
        if (a2 == null || a2.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int intValue = C0931k.aa.a(null).intValue();
        Iterator<Map.Entry<String, String>> it = a2.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry next = it.next();
            if (((String) next.getKey()).startsWith("measurement.id.")) {
                try {
                    int parseInt = Integer.parseInt((String) next.getValue());
                    if (parseInt != 0) {
                        arrayList.add(Integer.valueOf(parseInt));
                        if (arrayList.size() >= intValue) {
                            e().w().a("Too many experiment IDs. Number of IDs", Integer.valueOf(arrayList.size()));
                            break;
                        }
                    } else {
                        continue;
                    }
                } catch (NumberFormatException e2) {
                    e().w().a("Experiment ID NumberFormatException", e2);
                }
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            iArr[i3] = ((Integer) obj).intValue();
            i3++;
        }
        return iArr;
    }

    public final String b(C0807ca caVar) {
        C0811da[] daVarArr;
        C0803ba[] baVarArr;
        String str;
        C0803ba[] baVarArr2;
        String str2;
        int i2;
        C0811da[] daVarArr2;
        int i3;
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        C0811da[] daVarArr3 = caVar.f10357c;
        if (daVarArr3 != null) {
            int length = daVarArr3.length;
            int i4 = 0;
            while (i4 < length) {
                C0811da daVar = daVarArr3[i4];
                if (daVar == null || daVar == null) {
                    daVarArr = daVarArr3;
                } else {
                    a(sb, 1);
                    sb.append("bundle {\n");
                    a(sb, 1, "protocol_version", (Object) daVar.f10369d);
                    a(sb, 1, "platform", (Object) daVar.f10377l);
                    a(sb, 1, "gmp_version", (Object) daVar.t);
                    a(sb, 1, "uploading_gmp_version", (Object) daVar.u);
                    a(sb, 1, "dynamite_version", (Object) daVar.R);
                    a(sb, 1, "config_version", (Object) daVar.J);
                    a(sb, 1, "gmp_app_id", (Object) daVar.B);
                    a(sb, 1, "admob_app_id", (Object) daVar.O);
                    a(sb, 1, "app_id", (Object) daVar.r);
                    a(sb, 1, "app_version", (Object) daVar.s);
                    a(sb, 1, "app_version_major", (Object) daVar.F);
                    a(sb, 1, "firebase_instance_id", (Object) daVar.E);
                    a(sb, 1, "dev_cert_hash", (Object) daVar.y);
                    a(sb, 1, "app_store", (Object) daVar.q);
                    a(sb, 1, "upload_timestamp_millis", (Object) daVar.f10372g);
                    a(sb, 1, "start_timestamp_millis", (Object) daVar.f10373h);
                    a(sb, 1, "end_timestamp_millis", (Object) daVar.f10374i);
                    a(sb, 1, "previous_bundle_start_timestamp_millis", (Object) daVar.f10375j);
                    a(sb, 1, "previous_bundle_end_timestamp_millis", (Object) daVar.f10376k);
                    a(sb, 1, "app_instance_id", (Object) daVar.x);
                    a(sb, 1, "resettable_device_id", (Object) daVar.v);
                    a(sb, 1, "device_id", (Object) daVar.I);
                    a(sb, 1, "ds_id", (Object) daVar.L);
                    a(sb, 1, "limited_ad_tracking", (Object) daVar.w);
                    a(sb, 1, "os_version", (Object) daVar.m);
                    a(sb, 1, "device_model", (Object) daVar.n);
                    a(sb, 1, "user_default_language", (Object) daVar.o);
                    a(sb, 1, "time_zone_offset_minutes", (Object) daVar.p);
                    a(sb, 1, "bundle_sequential_index", (Object) daVar.z);
                    a(sb, 1, "service_upload", (Object) daVar.C);
                    a(sb, 1, "health_monitor", (Object) daVar.A);
                    Long l2 = daVar.K;
                    if (!(l2 == null || l2.longValue() == 0)) {
                        a(sb, 1, "android_id", (Object) daVar.K);
                    }
                    Integer num = daVar.N;
                    if (num != null) {
                        a(sb, 1, "retry_counter", (Object) num);
                    }
                    N[] nArr = daVar.f10371f;
                    String str4 = "string_value";
                    String str5 = DefaultAppMeasurementEventListenerRegistrar.NAME;
                    int i5 = 2;
                    if (nArr != null) {
                        for (N n : nArr) {
                            if (n != null) {
                                a(sb, 2);
                                sb.append("user_property {\n");
                                a(sb, 2, "set_timestamp_millis", (Object) n.B() ? Long.valueOf(n.C()) : null);
                                a(sb, 2, str5, (Object) f().c(n.q()));
                                a(sb, 2, str4, (Object) n.t());
                                a(sb, 2, "int_value", (Object) n.v() ? Long.valueOf(n.w()) : null);
                                a(sb, 2, "double_value", (Object) n.y() ? Double.valueOf(n.z()) : null);
                                a(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    H[] hArr = daVar.D;
                    String str6 = daVar.r;
                    if (hArr != null) {
                        int length2 = hArr.length;
                        int i6 = 0;
                        while (i6 < length2) {
                            H h2 = hArr[i6];
                            if (h2 != null) {
                                a(sb, i5);
                                sb.append("audience_membership {\n");
                                if (h2.r()) {
                                    i3 = i6;
                                    a(sb, i5, "audience_id", (Object) Integer.valueOf(h2.s()));
                                } else {
                                    i3 = i6;
                                }
                                if (h2.w()) {
                                    a(sb, i5, "new_audience", (Object) Boolean.valueOf(h2.x()));
                                }
                                StringBuilder sb2 = sb;
                                i2 = length2;
                                str2 = str5;
                                daVarArr2 = daVarArr3;
                                str3 = str4;
                                String str7 = str6;
                                a(sb2, 2, "current_data", h2.t(), str7);
                                a(sb2, 2, "previous_data", h2.v(), str7);
                                a(sb, 2);
                                sb.append("}\n");
                            } else {
                                i3 = i6;
                                i2 = length2;
                                str2 = str5;
                                daVarArr2 = daVarArr3;
                                str3 = str4;
                            }
                            i6 = i3 + 1;
                            str4 = str3;
                            daVarArr3 = daVarArr2;
                            length2 = i2;
                            str5 = str2;
                            i5 = 2;
                        }
                    }
                    String str8 = str5;
                    daVarArr = daVarArr3;
                    int i7 = 2;
                    String str9 = str4;
                    C0803ba[] baVarArr3 = daVar.f10370e;
                    if (baVarArr3 != null) {
                        int length3 = baVarArr3.length;
                        int i8 = 0;
                        while (i8 < length3) {
                            C0803ba baVar = baVarArr3[i8];
                            if (baVar != null) {
                                a(sb, i7);
                                sb.append("event {\n");
                                str = str8;
                                a(sb, i7, str, (Object) f().a(baVar.f10345e));
                                a(sb, i7, "timestamp_millis", (Object) baVar.f10346f);
                                a(sb, i7, "previous_timestamp_millis", (Object) baVar.f10347g);
                                a(sb, i7, "count", (Object) baVar.f10348h);
                                K[] kArr = baVar.f10344d;
                                if (kArr != null) {
                                    int length4 = kArr.length;
                                    int i9 = 0;
                                    while (i9 < length4) {
                                        K k2 = kArr[i9];
                                        if (k2 != null) {
                                            a(sb, 3);
                                            sb.append("param {\n");
                                            baVarArr2 = baVarArr3;
                                            a(sb, 3, str, (Object) f().b(k2.q()));
                                            a(sb, 3, str9, (Object) k2.t());
                                            a(sb, 3, "int_value", (Object) k2.v() ? Long.valueOf(k2.w()) : null);
                                            a(sb, 3, "double_value", (Object) k2.y() ? Double.valueOf(k2.z()) : null);
                                            a(sb, 3);
                                            sb.append("}\n");
                                        } else {
                                            baVarArr2 = baVarArr3;
                                        }
                                        i9++;
                                        baVarArr3 = baVarArr2;
                                        i7 = 2;
                                    }
                                }
                                baVarArr = baVarArr3;
                                a(sb, i7);
                                sb.append("}\n");
                            } else {
                                baVarArr = baVarArr3;
                                str = str8;
                            }
                            i8++;
                            str8 = str;
                            baVarArr3 = baVarArr;
                        }
                    }
                    a(sb, 1);
                    sb.append("}\n");
                }
                i4++;
                daVarArr3 = daVarArr;
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    public final void a(K.a aVar, Object obj) {
        r.a(obj);
        aVar.k();
        aVar.m();
        aVar.p();
        if (obj instanceof String) {
            aVar.b((String) obj);
        } else if (obj instanceof Long) {
            aVar.a(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            aVar.a(((Double) obj).doubleValue());
        } else {
            e().t().a("Ignoring invalid (type) event param value", obj);
        }
    }

    public final byte[] a(C0807ca caVar) {
        try {
            byte[] bArr = new byte[caVar.b()];
            Qc a2 = Qc.a(bArr, 0, bArr.length);
            caVar.a(a2);
            a2.a();
            return bArr;
        } catch (IOException e2) {
            e().t().a("Data loss. Failed to serialize batch", e2);
            return null;
        }
    }

    public static K a(C0803ba baVar, String str) {
        for (K k2 : baVar.f10344d) {
            if (k2.q().equals(str)) {
                return k2;
            }
        }
        return null;
    }

    public static K[] a(K[] kArr, String str, Object obj) {
        for (int i2 = 0; i2 < kArr.length; i2++) {
            K.a aVar = (K.a) kArr[i2].k();
            if (str.equals(aVar.j())) {
                aVar.m();
                aVar.k();
                aVar.p();
                if (obj instanceof Long) {
                    aVar.a(((Long) obj).longValue());
                } else if (obj instanceof String) {
                    aVar.b((String) obj);
                } else if (obj instanceof Double) {
                    aVar.a(((Double) obj).doubleValue());
                }
                kArr[i2] = (K) aVar.o();
                return kArr;
            }
        }
        K[] kArr2 = new K[(kArr.length + 1)];
        System.arraycopy(kArr, 0, kArr2, 0, kArr.length);
        K.a B = K.B();
        B.a(str);
        if (obj instanceof Long) {
            B.a(((Long) obj).longValue());
        } else if (obj instanceof String) {
            B.b((String) obj);
        } else if (obj instanceof Double) {
            B.a(((Double) obj).doubleValue());
        }
        kArr2[kArr.length] = (K) B.o();
        return kArr2;
    }

    public final String a(T t) {
        if (t == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        a(sb, 0, "filter_id", (Object) t.f10222d);
        a(sb, 0, "event_name", (Object) f().a(t.f10223e));
        a(sb, 1, "event_count_filter", t.f10226h);
        sb.append("  filters {\n");
        for (U a2 : t.f10224f) {
            a(sb, 2, a2);
        }
        a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    public final String a(X x) {
        if (x == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        a(sb, 0, "filter_id", (Object) x.f10277d);
        a(sb, 0, "property_name", (Object) f().c(x.f10278e));
        a(sb, 1, x.f10279f);
        sb.append("}\n");
        return sb.toString();
    }

    public final void a(StringBuilder sb, int i2, String str, L l2, String str2) {
        if (l2 != null) {
            a(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            if (l2.t() != 0) {
                a(sb, 4);
                sb.append("results: ");
                int i3 = 0;
                for (Long next : l2.s()) {
                    int i4 = i3 + 1;
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(next);
                    i3 = i4;
                }
                sb.append(10);
            }
            if (l2.r() != 0) {
                a(sb, 4);
                sb.append("status: ");
                int i5 = 0;
                for (Long next2 : l2.q()) {
                    int i6 = i5 + 1;
                    if (i5 != 0) {
                        sb.append(", ");
                    }
                    sb.append(next2);
                    i5 = i6;
                }
                sb.append(10);
            }
            if (i().o(str2)) {
                if (l2.v() != 0) {
                    a(sb, 4);
                    sb.append("dynamic_filter_timestamps: {");
                    int i7 = 0;
                    for (I next3 : l2.u()) {
                        int i8 = i7 + 1;
                        if (i7 != 0) {
                            sb.append(", ");
                        }
                        sb.append(next3.r() ? Integer.valueOf(next3.q()) : null);
                        sb.append(":");
                        sb.append(next3.s() ? Long.valueOf(next3.t()) : null);
                        i7 = i8;
                    }
                    sb.append("}\n");
                }
                if (l2.x() != 0) {
                    a(sb, 4);
                    sb.append("sequence_filter_timestamps: {");
                    int i9 = 0;
                    for (M next4 : l2.w()) {
                        int i10 = i9 + 1;
                        if (i9 != 0) {
                            sb.append(", ");
                        }
                        sb.append(next4.r() ? Integer.valueOf(next4.q()) : null);
                        sb.append(": [");
                        int i11 = 0;
                        for (Long longValue : next4.s()) {
                            long longValue2 = longValue.longValue();
                            int i12 = i11 + 1;
                            if (i11 != 0) {
                                sb.append(", ");
                            }
                            sb.append(longValue2);
                            i11 = i12;
                        }
                        sb.append("]");
                        i9 = i10;
                    }
                    sb.append("}\n");
                }
            }
            a(sb, 3);
            sb.append("}\n");
        }
    }

    public final byte[] b(byte[] bArr) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e2) {
            e().t().a("Failed to ungzip content", e2);
            throw e2;
        }
    }

    public final void a(StringBuilder sb, int i2, String str, W w) {
        if (w != null) {
            a(sb, i2);
            sb.append(str);
            sb.append(" {\n");
            zzbl$zza$zzb zzbl_zza_zzb = w.f10251c;
            if (zzbl_zza_zzb != null) {
                a(sb, i2, "comparison_type", (Object) zzbl_zza_zzb.name());
            }
            a(sb, i2, "match_as_float", (Object) w.f10252d);
            a(sb, i2, "comparison_value", (Object) w.f10253e);
            a(sb, i2, "min_comparison_value", (Object) w.f10254f);
            a(sb, i2, "max_comparison_value", (Object) w.f10255g);
            a(sb, i2);
            sb.append("}\n");
        }
    }

    public final void a(StringBuilder sb, int i2, U u) {
        if (u != null) {
            a(sb, i2);
            sb.append("filter {\n");
            a(sb, i2, "complement", (Object) u.f10237f);
            a(sb, i2, "param_name", (Object) f().b(u.f10238g));
            int i3 = i2 + 1;
            Y y = u.f10235d;
            if (y != null) {
                a(sb, i3);
                sb.append("string_filter");
                sb.append(" {\n");
                zzbl$zzb$zzb zzbl_zzb_zzb = y.f10290c;
                if (zzbl_zzb_zzb != null) {
                    a(sb, i3, "match_type", (Object) zzbl_zzb_zzb.name());
                }
                a(sb, i3, "expression", (Object) y.f10291d);
                a(sb, i3, "case_sensitive", (Object) y.f10292e);
                if (y.f10293f.length > 0) {
                    a(sb, i3 + 1);
                    sb.append("expression_list {\n");
                    for (String append : y.f10293f) {
                        a(sb, i3 + 2);
                        sb.append(append);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                a(sb, i3);
                sb.append("}\n");
            }
            a(sb, i3, "number_filter", u.f10236e);
            a(sb, i2);
            sb.append("}\n");
        }
    }

    public static void a(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append("  ");
        }
    }

    public static void a(StringBuilder sb, int i2, String str, Object obj) {
        if (obj != null) {
            a(sb, i2 + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append(10);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:?, code lost:
        e().t().a("Failed to load parcelable from buffer");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002c, code lost:
        return null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002d, code lost:
        r1.recycle();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0030, code lost:
        throw r5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001a, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x001c */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final <T extends android.os.Parcelable> T a(byte[] r5, android.os.Parcelable.Creator<T> r6) {
        /*
            r4 = this;
            r0 = 0
            if (r5 != 0) goto L_0x0004
            return r0
        L_0x0004:
            android.os.Parcel r1 = android.os.Parcel.obtain()
            int r2 = r5.length     // Catch:{ ParseException -> 0x001c }
            r3 = 0
            r1.unmarshall(r5, r3, r2)     // Catch:{ ParseException -> 0x001c }
            r1.setDataPosition(r3)     // Catch:{ ParseException -> 0x001c }
            java.lang.Object r5 = r6.createFromParcel(r1)     // Catch:{ ParseException -> 0x001c }
            android.os.Parcelable r5 = (android.os.Parcelable) r5     // Catch:{ ParseException -> 0x001c }
            r1.recycle()
            return r5
        L_0x001a:
            r5 = move-exception
            goto L_0x002d
        L_0x001c:
            c.e.a.b.h.b.t r5 = r4.e()     // Catch:{ all -> 0x001a }
            c.e.a.b.h.b.v r5 = r5.t()     // Catch:{ all -> 0x001a }
            java.lang.String r6 = "Failed to load parcelable from buffer"
            r5.a(r6)     // Catch:{ all -> 0x001a }
            r1.recycle()
            return r0
        L_0x002d:
            r1.recycle()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.Zb.a(byte[], android.os.Parcelable$Creator):android.os.Parcelable");
    }

    public final boolean a(zzaj zzaj, zzm zzm) {
        r.a(zzaj);
        r.a(zzm);
        if (!TextUtils.isEmpty(zzm.f13245b) || !TextUtils.isEmpty(zzm.r)) {
            return true;
        }
        a();
        return false;
    }

    public static boolean a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static boolean a(List<Long> list, int i2) {
        if (i2 < (list.size() << 6)) {
            if (((1 << (i2 % 64)) & list.get(i2 / 64).longValue()) != 0) {
                return true;
            }
        }
        return false;
    }

    public static List<Long> a(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            long j2 = 0;
            for (int i3 = 0; i3 < 64; i3++) {
                int i4 = (i2 << 6) + i3;
                if (i4 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i4)) {
                    j2 |= 1 << i3;
                }
            }
            arrayList.add(Long.valueOf(j2));
        }
        return arrayList;
    }

    public final boolean a(long j2, long j3) {
        return j2 == 0 || j3 <= 0 || Math.abs(c().c() - j2) > j3;
    }

    public final long a(byte[] bArr) {
        r.a(bArr);
        g().l();
        MessageDigest t = cc.t();
        if (t != null) {
            return cc.a(t.digest(bArr));
        }
        e().t().a("Failed to get MD5");
        return 0;
    }
}
