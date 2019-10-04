package com.google.android.gms.b;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.j;
import com.google.android.gms.common.s;
import java.lang.reflect.Method;

public final class a {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final j f2682a = j.zzafy();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2683b = new Object();
    private static Method c = null;

    /* renamed from: com.google.android.gms.b.a$a  reason: collision with other inner class name */
    public interface C0064a {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    public static void installIfNeeded(Context context) throws d, c {
        ap.checkNotNull(context, "Context must not be null");
        j.zzcd(context);
        Context remoteContext = s.getRemoteContext(context);
        if (remoteContext != null) {
            synchronized (f2683b) {
                try {
                    if (c == null) {
                        c = remoteContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[]{Context.class});
                    }
                    c.invoke(null, new Object[]{remoteContext});
                } catch (Exception e) {
                    String valueOf = String.valueOf(e.getMessage());
                    if (valueOf.length() != 0) {
                        "Failed to install provider: ".concat(valueOf);
                    } else {
                        new String("Failed to install provider: ");
                    }
                    throw new c(8);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new c(8);
    }

    public static void installIfNeededAsync(Context context, C0064a aVar) {
        ap.checkNotNull(context, "Context must not be null");
        ap.checkNotNull(aVar, "Listener must not be null");
        ap.zzge("Must be called on the UI thread");
        new b(context, aVar).execute(new Void[0]);
    }
}
