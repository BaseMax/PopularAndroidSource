package c.e.a.b.i.a;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import c.e.a.b.b.a.b.a.b;
import c.e.a.b.d.a.d;
import c.e.a.b.d.d.C0781d;
import c.e.a.b.d.d.C0782e;
import c.e.a.b.d.d.C0785h;
import c.e.a.b.d.d.r;
import c.e.a.b.i.e;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.signin.internal.zah;
import com.google.android.gms.signin.internal.zaj;

public class a extends C0785h<f> implements e {
    public final boolean G;
    public final C0782e H;
    public final Bundle I;
    public Integer J;

    public a(Context context, Looper looper, boolean z, C0782e eVar, Bundle bundle, d.a aVar, d.b bVar) {
        super(context, looper, 44, eVar, aVar, bVar);
        this.G = true;
        this.H = eVar;
        this.I = bundle;
        this.J = eVar.d();
    }

    public final void a(d dVar) {
        r.a(dVar, (Object) "Expecting a valid ISignInCallbacks");
        try {
            Account b2 = this.H.b();
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(b2.name)) {
                googleSignInAccount = b.a(n()).a();
            }
            ((f) r()).a(new zah(new ResolveAccountRequest(b2, this.J.intValue(), googleSignInAccount)), dVar);
        } catch (RemoteException e2) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                dVar.a(new zaj(8));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e2);
            }
        }
    }

    public final void connect() {
        a((C0781d.c) new C0781d.C0125d());
    }

    public int e() {
        return c.e.a.b.d.e.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public boolean g() {
        return this.G;
    }

    public Bundle o() {
        if (!n().getPackageName().equals(this.H.f())) {
            this.I.putString("com.google.android.gms.signin.internal.realClientPackageName", this.H.f());
        }
        return this.I;
    }

    public String s() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    public String t() {
        return "com.google.android.gms.signin.service.START";
    }

    public a(Context context, Looper looper, boolean z, C0782e eVar, c.e.a.b.i.a aVar, d.a aVar2, d.b bVar) {
        this(context, looper, true, eVar, a(eVar), aVar2, bVar);
    }

    public static Bundle a(C0782e eVar) {
        c.e.a.b.i.a h2 = eVar.h();
        Integer d2 = eVar.d();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", eVar.a());
        if (d2 != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", d2.intValue());
        }
        if (h2 != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", h2.g());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", h2.f());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", h2.d());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", h2.e());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", h2.b());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", h2.h());
            if (h2.a() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", h2.a().longValue());
            }
            if (h2.c() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", h2.c().longValue());
            }
        }
        return bundle;
    }

    public /* synthetic */ IInterface a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        if (queryLocalInterface instanceof f) {
            return (f) queryLocalInterface;
        }
        return new g(iBinder);
    }
}
