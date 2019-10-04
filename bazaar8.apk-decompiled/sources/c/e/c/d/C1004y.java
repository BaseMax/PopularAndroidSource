package c.e.c.d;

import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: c.e.c.d.y  reason: case insensitive filesystem */
public final class C1004y {

    /* renamed from: a  reason: collision with root package name */
    public static final long f11690a = TimeUnit.DAYS.toMillis(7);

    /* renamed from: b  reason: collision with root package name */
    public final String f11691b;

    /* renamed from: c  reason: collision with root package name */
    public final String f11692c;

    /* renamed from: d  reason: collision with root package name */
    public final long f11693d;

    public C1004y(String str, String str2, long j2) {
        this.f11691b = str;
        this.f11692c = str2;
        this.f11693d = j2;
    }

    public static C1004y a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new C1004y(str, null, 0);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new C1004y(jSONObject.getString("token"), jSONObject.getString("appVersion"), jSONObject.getLong("timestamp"));
        } catch (JSONException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 23);
            sb.append("Failed to parse token: ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    public final boolean b(String str) {
        return System.currentTimeMillis() > this.f11693d + f11690a || !str.equals(this.f11692c);
    }

    public static String a(String str, String str2, long j2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put("appVersion", str2);
            jSONObject.put("timestamp", j2);
            return jSONObject.toString();
        } catch (JSONException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 24);
            sb.append("Failed to encode token: ");
            sb.append(valueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    public static String a(C1004y yVar) {
        if (yVar == null) {
            return null;
        }
        return yVar.f11691b;
    }
}
