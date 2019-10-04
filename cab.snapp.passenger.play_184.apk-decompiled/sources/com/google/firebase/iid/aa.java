package com.google.firebase.iid;

import android.text.TextUtils;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.concurrent.TimeUnit;
import org.a.b;
import org.a.c;

final class aa {

    /* renamed from: b  reason: collision with root package name */
    private static final long f4054b = TimeUnit.DAYS.toMillis(7);

    /* renamed from: a  reason: collision with root package name */
    final String f4055a;
    private String c;
    private long d;

    private aa(String str, String str2, long j) {
        this.f4055a = str;
        this.c = str2;
        this.d = j;
    }

    static aa a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new aa(str, null, 0);
        }
        try {
            c cVar = new c(str);
            return new aa(cVar.getString("token"), cVar.getString("appVersion"), cVar.getLong(AppMeasurement.d.TIMESTAMP));
        } catch (b e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to parse token: ");
            sb.append(valueOf);
            return null;
        }
    }

    static String a(String str, String str2, long j) {
        try {
            c cVar = new c();
            cVar.put("token", (Object) str);
            cVar.put("appVersion", (Object) str2);
            cVar.put(AppMeasurement.d.TIMESTAMP, j);
            return cVar.toString();
        } catch (b e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
            sb.append("Failed to encode token: ");
            sb.append(valueOf);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean b(String str) {
        return System.currentTimeMillis() > this.d + f4054b || !str.equals(this.c);
    }
}
