package c.e.a.b.h.b;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.content.Context;
import android.content.pm.PackageManager;
import b.i.b.a;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* renamed from: c.e.a.b.h.b.e  reason: case insensitive filesystem */
public final class C0913e extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public long f10862c;

    /* renamed from: d  reason: collision with root package name */
    public String f10863d;

    /* renamed from: e  reason: collision with root package name */
    public Boolean f10864e;

    /* renamed from: f  reason: collision with root package name */
    public AccountManager f10865f;

    /* renamed from: g  reason: collision with root package name */
    public Boolean f10866g;

    /* renamed from: h  reason: collision with root package name */
    public long f10867h;

    public C0913e(Y y) {
        super(y);
    }

    public final boolean a(Context context) {
        if (this.f10864e == null) {
            a();
            this.f10864e = false;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    packageManager.getPackageInfo("com.google.android.gms", 128);
                    this.f10864e = true;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return this.f10864e.booleanValue();
    }

    public final boolean r() {
        Calendar instance = Calendar.getInstance();
        this.f10862c = TimeUnit.MINUTES.convert((long) (instance.get(15) + instance.get(16)), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String lowerCase = locale.getLanguage().toLowerCase(Locale.ENGLISH);
        String lowerCase2 = locale.getCountry().toLowerCase(Locale.ENGLISH);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f10863d = sb.toString();
        return false;
    }

    public final long t() {
        o();
        return this.f10862c;
    }

    public final String u() {
        o();
        return this.f10863d;
    }

    public final long v() {
        l();
        return this.f10867h;
    }

    public final void w() {
        l();
        this.f10866g = null;
        this.f10867h = 0;
    }

    public final boolean x() {
        l();
        long c2 = c().c();
        if (c2 - this.f10867h > 86400000) {
            this.f10866g = null;
        }
        Boolean bool = this.f10866g;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (a.a(b(), "android.permission.GET_ACCOUNTS") != 0) {
            e().x().a("Permission error checking for dasher/unicorn accounts");
            this.f10867h = c2;
            this.f10866g = false;
            return false;
        }
        if (this.f10865f == null) {
            this.f10865f = AccountManager.get(b());
        }
        try {
            Account[] result = this.f10865f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            if (result == null || result.length <= 0) {
                Account[] result2 = this.f10865f.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
                if (result2 != null && result2.length > 0) {
                    this.f10866g = true;
                    this.f10867h = c2;
                    return true;
                }
                this.f10867h = c2;
                this.f10866g = false;
                return false;
            }
            this.f10866g = true;
            this.f10867h = c2;
            return true;
        } catch (AuthenticatorException | OperationCanceledException | IOException e2) {
            e().u().a("Exception checking account types", e2);
        }
    }
}
