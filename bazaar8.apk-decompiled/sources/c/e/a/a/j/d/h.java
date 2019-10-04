package c.e.a.a.j.d;

import android.net.Uri;
import c.e.a.a.e.g;
import c.e.a.a.o.F;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.List;
import java.util.Map;

/* compiled from: HlsExtractorFactory */
public interface h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f8796a = new f();

    /* compiled from: HlsExtractorFactory */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final g f8797a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f8798b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f8799c;

        public a(g gVar, boolean z, boolean z2) {
            this.f8797a = gVar;
            this.f8798b = z;
            this.f8799c = z2;
        }
    }

    a a(g gVar, Uri uri, Format format, List<Format> list, DrmInitData drmInitData, F f2, Map<String, List<String>> map, c.e.a.a.e.h hVar);
}
