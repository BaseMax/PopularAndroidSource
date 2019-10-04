package c.b.a.c.a;

import c.b.a.c.a.e;
import c.b.a.c.b.a.b;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;

/* compiled from: InputStreamRewinder */
public final class l implements e<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public final RecyclableBufferedInputStream f3801a;

    /* compiled from: InputStreamRewinder */
    public static final class a implements e.a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final b f3802a;

        public a(b bVar) {
            this.f3802a = bVar;
        }

        public e<InputStream> a(InputStream inputStream) {
            return new l(inputStream, this.f3802a);
        }

        public Class<InputStream> a() {
            return InputStream.class;
        }
    }

    public l(InputStream inputStream, b bVar) {
        this.f3801a = new RecyclableBufferedInputStream(inputStream, bVar);
        this.f3801a.mark(5242880);
    }

    public void b() {
        this.f3801a.t();
    }

    public InputStream a() {
        this.f3801a.reset();
        return this.f3801a;
    }
}
