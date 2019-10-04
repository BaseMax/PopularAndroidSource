package c.e.a.b.h.b;

import android.os.Build;
import javax.net.ssl.SSLSocketFactory;

public final class Za extends C0964va {

    /* renamed from: c  reason: collision with root package name */
    public final SSLSocketFactory f10808c;

    public Za(Y y) {
        super(y);
        this.f10808c = Build.VERSION.SDK_INT < 19 ? new dc() : null;
    }

    public final boolean r() {
        return false;
    }
}
