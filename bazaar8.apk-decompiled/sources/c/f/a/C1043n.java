package c.f.a;

import android.content.Context;
import c.f.a.I;
import com.squareup.picasso.Picasso;
import java.io.InputStream;
import k.s;

/* renamed from: c.f.a.n  reason: case insensitive filesystem */
/* compiled from: ContentStreamRequestHandler */
public class C1043n extends I {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11996a;

    public C1043n(Context context) {
        this.f11996a = context;
    }

    public boolean a(G g2) {
        return "content".equals(g2.f11892e.getScheme());
    }

    public InputStream c(G g2) {
        return this.f11996a.getContentResolver().openInputStream(g2.f11892e);
    }

    public I.a a(G g2, int i2) {
        return new I.a(s.a(c(g2)), Picasso.LoadedFrom.DISK);
    }
}
