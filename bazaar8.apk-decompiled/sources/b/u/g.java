package b.u;

import android.media.session.MediaSessionManager;
import b.i.j.c;

/* compiled from: MediaSessionManagerImplApi28 */
public final class g implements f {

    /* renamed from: a  reason: collision with root package name */
    public final MediaSessionManager.RemoteUserInfo f3230a;

    public g(String str, int i2, int i3) {
        this.f3230a = new MediaSessionManager.RemoteUserInfo(str, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        return this.f3230a.equals(((g) obj).f3230a);
    }

    public int hashCode() {
        return c.a(this.f3230a);
    }

    public g(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.f3230a = remoteUserInfo;
    }
}
