package c.f.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import k.z;

/* compiled from: RequestHandler */
public abstract class I {

    /* compiled from: RequestHandler */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Picasso.LoadedFrom f11924a;

        /* renamed from: b  reason: collision with root package name */
        public final Bitmap f11925b;

        /* renamed from: c  reason: collision with root package name */
        public final z f11926c;

        /* renamed from: d  reason: collision with root package name */
        public final int f11927d;

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this(bitmap, null, loadedFrom, 0);
            P.a(bitmap, "bitmap == null");
        }

        public Bitmap a() {
            return this.f11925b;
        }

        public int b() {
            return this.f11927d;
        }

        public Picasso.LoadedFrom c() {
            return this.f11924a;
        }

        public z d() {
            return this.f11926c;
        }

        /* JADX INFO: this call moved to the top of the method (can break code semantics) */
        public a(z zVar, Picasso.LoadedFrom loadedFrom) {
            this(null, zVar, loadedFrom, 0);
            P.a(zVar, "source == null");
        }

        public a(Bitmap bitmap, z zVar, Picasso.LoadedFrom loadedFrom, int i2) {
            boolean z = true;
            if ((bitmap != null) != (zVar == null ? false : z)) {
                this.f11925b = bitmap;
                this.f11926c = zVar;
                P.a(loadedFrom, "loadedFrom == null");
                this.f11924a = loadedFrom;
                this.f11927d = i2;
                return;
            }
            throw new AssertionError();
        }
    }

    public static boolean a(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    public static BitmapFactory.Options b(G g2) {
        boolean c2 = g2.c();
        boolean z = g2.t != null;
        BitmapFactory.Options options = null;
        if (c2 || z || g2.s) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = c2;
            boolean z2 = g2.s;
            options.inInputShareable = z2;
            options.inPurgeable = z2;
            if (z) {
                options.inPreferredConfig = g2.t;
            }
        }
        return options;
    }

    public int a() {
        return 0;
    }

    public abstract a a(G g2, int i2);

    public abstract boolean a(G g2);

    public boolean a(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    public boolean b() {
        return false;
    }

    public static void a(int i2, int i3, BitmapFactory.Options options, G g2) {
        a(i2, i3, options.outWidth, options.outHeight, options, g2);
    }

    public static void a(int i2, int i3, int i4, int i5, BitmapFactory.Options options, G g2) {
        int i6;
        double floor;
        if (i5 > i3 || i4 > i2) {
            if (i3 == 0) {
                floor = Math.floor((double) (((float) i4) / ((float) i2)));
            } else if (i2 == 0) {
                floor = Math.floor((double) (((float) i5) / ((float) i3)));
            } else {
                int floor2 = (int) Math.floor((double) (((float) i5) / ((float) i3)));
                int floor3 = (int) Math.floor((double) (((float) i4) / ((float) i2)));
                i6 = g2.m ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i6 = (int) floor;
        } else {
            i6 = 1;
        }
        options.inSampleSize = i6;
        options.inJustDecodeBounds = false;
    }
}
