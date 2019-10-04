package b.u;

import android.media.session.MediaSessionManager;
import android.os.Build;

/* compiled from: MediaSessionManager */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public f f3229a;

    public e(String str, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f3229a = new g(str, i2, i3);
        } else {
            this.f3229a = new h(str, i2, i3);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        return this.f3229a.equals(((e) obj).f3229a);
    }

    public int hashCode() {
        return this.f3229a.hashCode();
    }

    public e(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.f3229a = new g(remoteUserInfo);
    }
}
