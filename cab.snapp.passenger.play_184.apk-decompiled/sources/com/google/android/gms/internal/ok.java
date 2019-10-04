package com.google.android.gms.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.x;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bd;
import com.google.android.gms.common.internal.bg;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.zzbr;

public final class ok extends c<oi> implements ob {
    private final boolean g;
    private final bl h;
    private final Bundle i;
    private Integer j;

    private ok(Context context, Looper looper, bl blVar, Bundle bundle, f.b bVar, f.c cVar) {
        super(context, looper, 44, blVar, bVar, cVar);
        this.g = true;
        this.h = blVar;
        this.i = bundle;
        this.j = blVar.zzalc();
    }

    public ok(Context context, Looper looper, boolean z, bl blVar, oc ocVar, f.b bVar, f.c cVar) {
        this(context, looper, blVar, zza(blVar), bVar, cVar);
    }

    public static Bundle zza(bl blVar) {
        oc zzalb = blVar.zzalb();
        Integer zzalc = blVar.zzalc();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", blVar.getAccount());
        if (zzalc != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", zzalc.intValue());
        }
        if (zzalb != null) {
            bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", zzalb.zzbdc());
            bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", zzalb.isIdTokenRequested());
            bundle.putString("com.google.android.gms.signin.internal.serverClientId", zzalb.getServerClientId());
            bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
            bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", zzalb.zzbdd());
            bundle.putString("com.google.android.gms.signin.internal.hostedDomain", zzalb.zzbde());
            bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", zzalb.zzbdf());
            if (zzalb.zzbdg() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.authApiSignInModuleVersion", zzalb.zzbdg().longValue());
            }
            if (zzalb.zzbdh() != null) {
                bundle.putLong("com.google.android.gms.signin.internal.realClientLibraryVersion", zzalb.zzbdh().longValue());
            }
        }
        return bundle;
    }

    public final void connect() {
        zza((bd) new bg(this));
    }

    public final void zza(o oVar, boolean z) {
        try {
            ((oi) zzakn()).zza(oVar, this.j.intValue(), z);
        } catch (RemoteException unused) {
        }
    }

    public final void zza(og ogVar) {
        ap.checkNotNull(ogVar, "Expecting a valid ISignInCallbacks");
        try {
            Account zzakt = this.h.zzakt();
            GoogleSignInAccount googleSignInAccount = null;
            if ("<<default account>>".equals(zzakt.name)) {
                googleSignInAccount = x.zzbt(getContext()).zzabt();
            }
            ((oi) zzakn()).zza(new zzcxo(new zzbr(zzakt, this.j.intValue(), googleSignInAccount)), ogVar);
        } catch (RemoteException e) {
            try {
                ogVar.zzb(new zzcxq(8));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e);
            }
        }
    }

    public final Bundle zzaap() {
        if (!getContext().getPackageName().equals(this.h.zzaky())) {
            this.i.putString("com.google.android.gms.signin.internal.realClientPackageName", this.h.zzaky());
        }
        return this.i;
    }

    public final boolean zzaay() {
        return this.g;
    }

    public final void zzbdb() {
        try {
            ((oi) zzakn()).zzeh(this.j.intValue());
        } catch (RemoteException unused) {
        }
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof oi ? (oi) queryLocalInterface : new oj(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.gms.signin.service.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }
}
