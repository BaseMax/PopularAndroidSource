package f.a.a.f;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import c.f.a.C1041l;
import c.f.a.H;
import c.f.a.N;
import c.f.a.z;
import com.squareup.picasso.Picasso;
import j.I;

/* compiled from: ImageLoader */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static e f14329a;

    /* renamed from: b  reason: collision with root package name */
    public Picasso f14330b;

    /* compiled from: ImageLoader */
    public interface a {
        void a();

        void onSuccess();
    }

    public e(Context context) {
        I i2 = new I();
        Picasso.a aVar = new Picasso.a(context);
        aVar.a(new z(i2));
        this.f14330b = aVar.a();
    }

    public static e a() {
        if (f14329a == null) {
            synchronized (e.class) {
                if (f14329a == null) {
                    f14329a = new e(f.a.a.b.a.f13941e.a());
                }
            }
        }
        return f14329a;
    }

    public Html.ImageGetter a(TextView textView, Resources resources) {
        return new j(textView, resources, this.f14330b);
    }

    public void a(String str, ImageView imageView) {
        a(str, imageView, false, null);
    }

    public void a(String str, ImageView imageView, int i2) {
        a(str, imageView, false, i2, null, 0, 0, 0);
    }

    public void a(String str, ImageView imageView, a aVar) {
        a(str, imageView, false, aVar);
    }

    public void a(String str, ImageView imageView, boolean z) {
        a(str, imageView, z, null);
    }

    public void a(String str, ImageView imageView, boolean z, a aVar) {
        a(str, imageView, z, 0, aVar, 0, 0, 0);
    }

    public void a(String str, ImageView imageView, boolean z, int i2, int i3) {
        a(str, imageView, z, i2, null, i3, 0, 0);
    }

    public void a(String str, ImageView imageView, int i2, int i3, a aVar) {
        a(str, imageView, false, i2, aVar, i3, 0, 0);
    }

    public void a(String str, ImageView imageView, boolean z, int i2, a aVar, int i3, int i4, int i5) {
        if (!TextUtils.isEmpty(str)) {
            H a2 = this.f14330b.a(str);
            if (i4 == 0 || i5 == 0) {
                a2.c();
            } else {
                a2.a(i4, i5);
            }
            if (i2 != 0) {
                a2.a(i2);
            }
            if (i3 != 0) {
                a2.a((N) new k(i3, 0));
            }
            if (!z) {
                a2.f();
            }
            a2.a(imageView, (C1041l) new d(this, aVar));
        }
    }

    public void a(String str) {
        this.f14330b.a(str).b();
    }
}
