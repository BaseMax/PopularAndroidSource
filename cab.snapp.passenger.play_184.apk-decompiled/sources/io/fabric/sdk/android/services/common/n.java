package io.fabric.sdk.android.services.common;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.a.b;
import io.fabric.sdk.android.services.a.d;

public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final d<String> f6605a = new d<String>() {
        public final String load(Context context) throws Exception {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            return installerPackageName == null ? "" : installerPackageName;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final b<String> f6606b = new b<>();

    public final String getInstallerPackageName(Context context) {
        try {
            String str = this.f6606b.get(context, this.f6605a);
            if ("".equals(str)) {
                return null;
            }
            return str;
        } catch (Exception e) {
            c.getLogger().e(c.TAG, "Failed to determine installer package name", e);
            return null;
        }
    }
}
