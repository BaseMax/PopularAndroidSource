package c.e.a.b.g.f;

import android.content.Context;
import android.util.Log;
import b.i.b.b;

/* renamed from: c.e.a.b.g.f.oa  reason: case insensitive filesystem */
public final class C0855oa implements C0843la {

    /* renamed from: a  reason: collision with root package name */
    public static C0855oa f10493a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f10494b;

    public C0855oa(Context context) {
        this.f10494b = context;
        this.f10494b.getContentResolver().registerContentObserver(C0815ea.f10385a, true, new C0863qa(this, null));
    }

    public static C0855oa a(Context context) {
        C0855oa oaVar;
        synchronized (C0855oa.class) {
            if (f10493a == null) {
                f10493a = b.a(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new C0855oa(context) : new C0855oa();
            }
            oaVar = f10493a;
        }
        return oaVar;
    }

    /* renamed from: b */
    public final String a(String str) {
        if (this.f10494b == null) {
            return null;
        }
        try {
            return (String) C0847ma.a(new C0859pa(this, str));
        } catch (SecurityException e2) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e2);
            return null;
        }
    }

    public final /* synthetic */ String c(String str) {
        return C0815ea.a(this.f10494b.getContentResolver(), str, (String) null);
    }

    public C0855oa() {
        this.f10494b = null;
    }
}
