package e.a.a.a.a.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import e.a.a.a.l;

/* compiled from: PreferenceStoreImpl */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f13771a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13772b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f13773c;

    public d(Context context, String str) {
        if (context != null) {
            this.f13773c = context;
            this.f13772b = str;
            this.f13771a = this.f13773c.getSharedPreferences(this.f13772b, 0);
            return;
        }
        throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }

    @TargetApi(9)
    public boolean a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT < 9) {
            return editor.commit();
        }
        editor.apply();
        return true;
    }

    public SharedPreferences.Editor edit() {
        return this.f13771a.edit();
    }

    public SharedPreferences get() {
        return this.f13771a;
    }

    @Deprecated
    public d(l lVar) {
        this(lVar.getContext(), lVar.getClass().getName());
    }
}
