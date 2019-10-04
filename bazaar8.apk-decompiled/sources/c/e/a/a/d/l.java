package c.e.a.a.d;

import android.os.Looper;
import c.e.a.a.d.n;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;

/* compiled from: DrmSessionManager */
public interface l<T extends n> {
    DrmSession<T> a(Looper looper, DrmInitData drmInitData);

    void a(DrmSession<T> drmSession);

    boolean a(DrmInitData drmInitData);
}
