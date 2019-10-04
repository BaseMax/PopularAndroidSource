package b.D;

import android.view.View;
import android.view.WindowId;

/* compiled from: WindowIdApi18 */
public class ja implements ka {

    /* renamed from: a  reason: collision with root package name */
    public final WindowId f1169a;

    public ja(View view) {
        this.f1169a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof ja) && ((ja) obj).f1169a.equals(this.f1169a);
    }

    public int hashCode() {
        return this.f1169a.hashCode();
    }
}
