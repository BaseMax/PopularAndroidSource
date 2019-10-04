package c.f.a;

import android.content.Context;
import android.net.Uri;
import b.n.a.a;
import c.f.a.I;
import com.squareup.picasso.Picasso;
import k.s;

/* compiled from: FileRequestHandler */
public class t extends C1043n {
    public t(Context context) {
        super(context);
    }

    public boolean a(G g2) {
        return "file".equals(g2.f11892e.getScheme());
    }

    public I.a a(G g2, int i2) {
        return new I.a(null, s.a(c(g2)), Picasso.LoadedFrom.DISK, a(g2.f11892e));
    }

    public static int a(Uri uri) {
        return new a(uri.getPath()).a("Orientation", 1);
    }
}
