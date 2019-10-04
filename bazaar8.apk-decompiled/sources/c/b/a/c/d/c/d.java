package c.b.a.c.d.c;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import c.b.a.c.b.D;
import c.b.a.c.f;
import c.b.a.c.g;
import java.util.List;

/* compiled from: ResourceDrawableDecoder */
public class d implements g<Uri, Drawable> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f4216a;

    public d(Context context) {
        this.f4216a = context.getApplicationContext();
    }

    public boolean a(Uri uri, f fVar) {
        return uri.getScheme().equals("android.resource");
    }

    public D<Drawable> a(Uri uri, int i2, int i3, f fVar) {
        int a2 = a(uri);
        String authority = uri.getAuthority();
        return c.a(a.a(this.f4216a, authority.equals(this.f4216a.getPackageName()) ? this.f4216a : a(uri, authority), a2));
    }

    public final Context a(Uri uri, String str) {
        try {
            return this.f4216a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e2);
        }
    }

    public final int a(Uri uri) {
        Integer num;
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            String authority = uri.getAuthority();
            String str = pathSegments.get(1);
            num = Integer.valueOf(this.f4216a.getResources().getIdentifier(str, pathSegments.get(0), authority));
        } else {
            if (pathSegments.size() == 1) {
                try {
                    num = Integer.valueOf(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                }
            }
            num = null;
        }
        if (num == null) {
            throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
        } else if (num.intValue() != 0) {
            return num.intValue();
        } else {
            throw new IllegalArgumentException("Failed to obtain resource id for: " + uri);
        }
    }
}
