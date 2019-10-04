package c.e.a.b.b.a.b.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import c.e.a.b.d.d.r;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Lock f9787a = new ReentrantLock();

    /* renamed from: b  reason: collision with root package name */
    public static b f9788b;

    /* renamed from: c  reason: collision with root package name */
    public final Lock f9789c = new ReentrantLock();

    /* renamed from: d  reason: collision with root package name */
    public final SharedPreferences f9790d;

    public b(Context context) {
        this.f9790d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static b a(Context context) {
        r.a(context);
        f9787a.lock();
        try {
            if (f9788b == null) {
                f9788b = new b(context.getApplicationContext());
            }
            return f9788b;
        } finally {
            f9787a.unlock();
        }
    }

    public final String b(String str) {
        this.f9789c.lock();
        try {
            return this.f9790d.getString(str, null);
        } finally {
            this.f9789c.unlock();
        }
    }

    public GoogleSignInAccount a() {
        return a(b("defaultGoogleSignInAccount"));
    }

    public final GoogleSignInAccount a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String b2 = b(a("googleSignInAccount", str));
        if (b2 != null) {
            try {
                return GoogleSignInAccount.e(b2);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }
}
