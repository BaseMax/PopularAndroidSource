package c.b.a.f;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ImageHeaderParserRegistry */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final List<ImageHeaderParser> f4337a = new ArrayList();

    public synchronized List<ImageHeaderParser> a() {
        return this.f4337a;
    }

    public synchronized void a(ImageHeaderParser imageHeaderParser) {
        this.f4337a.add(imageHeaderParser);
    }
}
