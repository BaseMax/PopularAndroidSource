package b.A;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* compiled from: SavedStateRegistry */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public b.c.a.b.b<String, b> f1045a = new b.c.a.b.b<>();

    /* renamed from: b  reason: collision with root package name */
    public Bundle f1046b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1047c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1048d = true;

    /* renamed from: b.A.a$a  reason: collision with other inner class name */
    /* compiled from: SavedStateRegistry */
    public interface C0014a {
        void a(c cVar);
    }

    /* compiled from: SavedStateRegistry */
    public interface b {
        Bundle a();
    }

    public Bundle a(String str) {
        if (this.f1047c) {
            Bundle bundle = this.f1046b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f1046b.remove(str);
            if (this.f1046b.isEmpty()) {
                this.f1046b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    public void a(Lifecycle lifecycle, Bundle bundle) {
        if (!this.f1047c) {
            if (bundle != null) {
                this.f1046b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            lifecycle.a(new SavedStateRegistry$1(this));
            this.f1047c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    public void a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f1046b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        b.c.a.b.b<K, V>.d b2 = this.f1045a.b();
        while (b2.hasNext()) {
            Map.Entry entry = (Map.Entry) b2.next();
            bundle2.putBundle((String) entry.getKey(), ((b) entry.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}
