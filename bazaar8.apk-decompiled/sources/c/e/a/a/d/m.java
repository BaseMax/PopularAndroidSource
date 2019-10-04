package c.e.a.a.d;

import c.e.a.a.d.n;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.drm.DrmSession;
import java.util.Map;

/* compiled from: ErrorStateDrmSession */
public final class m<T extends n> implements DrmSession<T> {

    /* renamed from: a  reason: collision with root package name */
    public final DrmSession.DrmSessionException f7584a;

    public m(DrmSession.DrmSessionException drmSessionException) {
        C0737e.a(drmSessionException);
        this.f7584a = drmSessionException;
    }

    public Map<String, String> a() {
        return null;
    }

    public T b() {
        return null;
    }

    public DrmSession.DrmSessionException c() {
        return this.f7584a;
    }

    public int getState() {
        return 1;
    }
}
