package b.D;

import android.os.IBinder;

/* compiled from: WindowIdApi14 */
public class ia implements ka {

    /* renamed from: a  reason: collision with root package name */
    public final IBinder f1166a;

    public ia(IBinder iBinder) {
        this.f1166a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ia) && ((ia) obj).f1166a.equals(this.f1166a);
    }

    public int hashCode() {
        return this.f1166a.hashCode();
    }
}
