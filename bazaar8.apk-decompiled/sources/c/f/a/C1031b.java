package c.f.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import c.f.a.I;
import com.squareup.picasso.Picasso;
import k.s;

/* renamed from: c.f.a.b  reason: case insensitive filesystem */
/* compiled from: AssetRequestHandler */
public class C1031b extends I {

    /* renamed from: a  reason: collision with root package name */
    public static final int f11972a = 22;

    /* renamed from: b  reason: collision with root package name */
    public final Context f11973b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f11974c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public AssetManager f11975d;

    public C1031b(Context context) {
        this.f11973b = context;
    }

    public static String c(G g2) {
        return g2.f11892e.toString().substring(f11972a);
    }

    public boolean a(G g2) {
        Uri uri = g2.f11892e;
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }

    public I.a a(G g2, int i2) {
        if (this.f11975d == null) {
            synchronized (this.f11974c) {
                if (this.f11975d == null) {
                    this.f11975d = this.f11973b.getAssets();
                }
            }
        }
        return new I.a(s.a(this.f11975d.open(c(g2))), Picasso.LoadedFrom.DISK);
    }
}
