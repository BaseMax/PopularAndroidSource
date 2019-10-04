package c.e.a.a.h;

import android.net.Uri;
import c.e.a.a.h.b;
import c.e.a.a.n.y;
import com.google.android.exoplayer2.offline.StreamKey;
import java.io.InputStream;
import java.util.List;

/* compiled from: FilteringManifestParser */
public final class c<T extends b<T>> implements y.a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final y.a<? extends T> f8362a;

    /* renamed from: b  reason: collision with root package name */
    public final List<StreamKey> f8363b;

    public c(y.a<? extends T> aVar, List<StreamKey> list) {
        this.f8362a = aVar;
        this.f8363b = list;
    }

    public T a(Uri uri, InputStream inputStream) {
        T t = (b) this.f8362a.a(uri, inputStream);
        List<StreamKey> list = this.f8363b;
        return (list == null || list.isEmpty()) ? t : (b) t.a(this.f8363b);
    }
}
