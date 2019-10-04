package c.f.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import c.f.a.I;
import com.squareup.picasso.Picasso;

/* compiled from: ResourceRequestHandler */
public class J extends I {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11928a;

    public J(Context context) {
        this.f11928a = context;
    }

    public boolean a(G g2) {
        if (g2.f11893f != 0) {
            return true;
        }
        return "android.resource".equals(g2.f11892e.getScheme());
    }

    public I.a a(G g2, int i2) {
        Resources a2 = P.a(this.f11928a, g2);
        return new I.a(a(a2, P.a(a2, g2), g2), Picasso.LoadedFrom.DISK);
    }

    public static Bitmap a(Resources resources, int i2, G g2) {
        BitmapFactory.Options b2 = I.b(g2);
        if (I.a(b2)) {
            BitmapFactory.decodeResource(resources, i2, b2);
            I.a(g2.f11896i, g2.f11897j, b2, g2);
        }
        return BitmapFactory.decodeResource(resources, i2, b2);
    }
}
