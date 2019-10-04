package b.D;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TransitionValues */
public class M {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Object> f1108a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public View f1109b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<E> f1110c = new ArrayList<>();

    public boolean equals(Object obj) {
        if (obj instanceof M) {
            M m = (M) obj;
            if (this.f1109b == m.f1109b && this.f1108a.equals(m.f1108a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (this.f1109b.hashCode() * 31) + this.f1108a.hashCode();
    }

    public String toString() {
        String str = "TransitionValues@" + Integer.toHexString(hashCode()) + ":\n";
        String str2 = str + "    view = " + this.f1109b + "\n";
        String str3 = str2 + "    values:";
        for (String next : this.f1108a.keySet()) {
            str3 = str3 + "    " + next + ": " + this.f1108a.get(next) + "\n";
        }
        return str3;
    }
}
