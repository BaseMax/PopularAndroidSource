package io.fabric.sdk.android.services.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import io.fabric.sdk.android.i;

public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f6577a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6578b;
    private final Context c;

    public d(Context context, String str) {
        if (context != null) {
            this.c = context;
            this.f6578b = str;
            this.f6577a = this.c.getSharedPreferences(this.f6578b, 0);
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @Deprecated
    public d(i iVar) {
        this(iVar.getContext(), iVar.getClass().getName());
    }

    public final SharedPreferences get() {
        return this.f6577a;
    }

    public final SharedPreferences.Editor edit() {
        return this.f6577a.edit();
    }

    public final boolean save(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }
}
