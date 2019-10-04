package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.a.b;

public final class x {

    /* renamed from: a  reason: collision with root package name */
    private static final Lock f2678a = new ReentrantLock();

    /* renamed from: b  reason: collision with root package name */
    private static x f2679b;
    private final Lock c = new ReentrantLock();
    private final SharedPreferences d;

    private x(Context context) {
        this.d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    private final GoogleSignInAccount a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String c2 = c(b("googleSignInAccount", str));
        if (c2 != null) {
            try {
                return GoogleSignInAccount.zzeu(c2);
            } catch (b unused) {
            }
        }
        return null;
    }

    private final GoogleSignInOptions b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String c2 = c(b("googleSignInOptions", str));
        if (c2 != null) {
            try {
                return GoogleSignInOptions.zzev(c2);
            } catch (b unused) {
            }
        }
        return null;
    }

    private static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + ":".length() + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    private final String c(String str) {
        this.c.lock();
        try {
            return this.d.getString(str, null);
        } finally {
            this.c.unlock();
        }
    }

    private final void d(String str) {
        this.c.lock();
        try {
            this.d.edit().remove(str).apply();
        } finally {
            this.c.unlock();
        }
    }

    public static x zzbt(Context context) {
        ap.checkNotNull(context);
        f2678a.lock();
        try {
            if (f2679b == null) {
                f2679b = new x(context.getApplicationContext());
            }
            return f2679b;
        } finally {
            f2678a.unlock();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        ap.checkNotNull(googleSignInAccount);
        ap.checkNotNull(googleSignInOptions);
        String zzaba = googleSignInAccount.zzaba();
        a(b("googleSignInAccount", zzaba), googleSignInAccount.zzabc());
        a(b("googleSignInOptions", zzaba), googleSignInOptions.zzabg());
    }

    /* access modifiers changed from: protected */
    public final void a(String str, String str2) {
        this.c.lock();
        try {
            this.d.edit().putString(str, str2).apply();
        } finally {
            this.c.unlock();
        }
    }

    public final void clear() {
        this.c.lock();
        try {
            this.d.edit().clear().apply();
        } finally {
            this.c.unlock();
        }
    }

    public final GoogleSignInAccount zzabt() {
        return a(c("defaultGoogleSignInAccount"));
    }

    public final GoogleSignInOptions zzabu() {
        return b(c("defaultGoogleSignInAccount"));
    }

    public final void zzabv() {
        String c2 = c("defaultGoogleSignInAccount");
        d("defaultGoogleSignInAccount");
        if (!TextUtils.isEmpty(c2)) {
            d(b("googleSignInAccount", c2));
            d(b("googleSignInOptions", c2));
        }
    }
}
