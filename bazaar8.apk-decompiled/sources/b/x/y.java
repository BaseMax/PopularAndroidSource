package b.x;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;

/* compiled from: PreferenceManager */
public class y {

    /* renamed from: a  reason: collision with root package name */
    public Context f3393a;

    /* renamed from: b  reason: collision with root package name */
    public long f3394b = 0;

    /* renamed from: c  reason: collision with root package name */
    public SharedPreferences f3395c;

    /* renamed from: d  reason: collision with root package name */
    public n f3396d;

    /* renamed from: e  reason: collision with root package name */
    public SharedPreferences.Editor f3397e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3398f;

    /* renamed from: g  reason: collision with root package name */
    public String f3399g;

    /* renamed from: h  reason: collision with root package name */
    public int f3400h;

    /* renamed from: i  reason: collision with root package name */
    public int f3401i = 0;

    /* renamed from: j  reason: collision with root package name */
    public PreferenceScreen f3402j;

    /* renamed from: k  reason: collision with root package name */
    public d f3403k;

    /* renamed from: l  reason: collision with root package name */
    public c f3404l;
    public a m;
    public b n;

    /* compiled from: PreferenceManager */
    public interface a {
        void a(Preference preference);
    }

    /* compiled from: PreferenceManager */
    public interface b {
        void a(PreferenceScreen preferenceScreen);
    }

    /* compiled from: PreferenceManager */
    public interface c {
        boolean b(Preference preference);
    }

    /* compiled from: PreferenceManager */
    public static abstract class d {
        public abstract boolean a(Preference preference, Preference preference2);

        public abstract boolean b(Preference preference, Preference preference2);
    }

    public y(Context context) {
        this.f3393a = context;
        a(a(context));
    }

    public PreferenceScreen a(Context context, int i2, PreferenceScreen preferenceScreen) {
        a(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new x(context, this).a(i2, (PreferenceGroup) preferenceScreen);
        preferenceScreen2.a(this);
        a(false);
        return preferenceScreen2;
    }

    public long b() {
        long j2;
        synchronized (this) {
            j2 = this.f3394b;
            this.f3394b = 1 + j2;
        }
        return j2;
    }

    public b c() {
        return this.n;
    }

    public c d() {
        return this.f3404l;
    }

    public d e() {
        return this.f3403k;
    }

    public n f() {
        return this.f3396d;
    }

    public PreferenceScreen g() {
        return this.f3402j;
    }

    public SharedPreferences h() {
        Context context;
        if (f() != null) {
            return null;
        }
        if (this.f3395c == null) {
            if (this.f3401i != 1) {
                context = this.f3393a;
            } else {
                context = b.i.b.a.a(this.f3393a);
            }
            this.f3395c = context.getSharedPreferences(this.f3399g, this.f3400h);
        }
        return this.f3395c;
    }

    public boolean i() {
        return !this.f3398f;
    }

    public void a(String str) {
        this.f3399g = str;
        this.f3395c = null;
    }

    public static String a(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public boolean a(PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2 = this.f3402j;
        if (preferenceScreen == preferenceScreen2) {
            return false;
        }
        if (preferenceScreen2 != null) {
            preferenceScreen2.E();
        }
        this.f3402j = preferenceScreen;
        return true;
    }

    public Preference a(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f3402j;
        if (preferenceScreen == null) {
            return null;
        }
        return preferenceScreen.c(charSequence);
    }

    public SharedPreferences.Editor a() {
        if (this.f3396d != null) {
            return null;
        }
        if (!this.f3398f) {
            return h().edit();
        }
        if (this.f3397e == null) {
            this.f3397e = h().edit();
        }
        return this.f3397e;
    }

    public final void a(boolean z) {
        if (!z) {
            SharedPreferences.Editor editor = this.f3397e;
            if (editor != null) {
                editor.apply();
            }
        }
        this.f3398f = z;
    }

    public void a(a aVar) {
        this.m = aVar;
    }

    public void a(Preference preference) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.a(preference);
        }
    }

    public void a(c cVar) {
        this.f3404l = cVar;
    }

    public void a(b bVar) {
        this.n = bVar;
    }
}
