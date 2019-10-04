package c.e.a.b.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import c.e.a.b.d.e;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f9781a;

    public b(Context context) {
        try {
            Context remoteContext = e.getRemoteContext(context);
            this.f9781a = remoteContext == null ? null : remoteContext.getSharedPreferences("google_ads_flags", 0);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while getting SharedPreferences ", th);
            this.f9781a = null;
        }
    }

    public final float a(String str, float f2) {
        try {
            if (this.f9781a == null) {
                return 0.0f;
            }
            return this.f9781a.getFloat(str, 0.0f);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return 0.0f;
        }
    }

    public final String a(String str, String str2) {
        try {
            return this.f9781a == null ? str2 : this.f9781a.getString(str, str2);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return str2;
        }
    }

    public final boolean a(String str, boolean z) {
        try {
            if (this.f9781a == null) {
                return false;
            }
            return this.f9781a.getBoolean(str, false);
        } catch (Throwable th) {
            Log.w("GmscoreFlag", "Error while reading from SharedPreferences ", th);
            return false;
        }
    }
}
