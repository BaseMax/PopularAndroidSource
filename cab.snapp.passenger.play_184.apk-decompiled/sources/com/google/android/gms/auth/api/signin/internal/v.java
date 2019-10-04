package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.f;

public final class v extends q {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2677a;

    public v(Context context) {
        this.f2677a = context;
    }

    private final void a() {
        if (!GooglePlayServicesUtil.zzf(this.f2677a, Binder.getCallingUid())) {
            int callingUid = Binder.getCallingUid();
            StringBuilder sb = new StringBuilder(52);
            sb.append("Calling UID ");
            sb.append(callingUid);
            sb.append(" is not Google Play services.");
            throw new SecurityException(sb.toString());
        }
    }

    public final void zzabo() {
        a();
        x zzbt = x.zzbt(this.f2677a);
        GoogleSignInAccount zzabt = zzbt.zzabt();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.DEFAULT_SIGN_IN;
        if (zzabt != null) {
            googleSignInOptions = zzbt.zzabu();
        }
        f build = new f.a(this.f2677a).addApi(a.GOOGLE_SIGN_IN_API, googleSignInOptions).build();
        try {
            if (build.blockingConnect().isSuccess()) {
                if (zzabt != null) {
                    a.GoogleSignInApi.revokeAccess(build);
                } else {
                    build.clearDefaultAccountAndReconnect();
                }
            }
        } finally {
            build.disconnect();
        }
    }

    public final void zzabp() {
        a();
        n.zzbr(this.f2677a).clear();
    }
}
