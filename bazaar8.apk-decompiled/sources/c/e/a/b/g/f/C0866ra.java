package c.e.a.b.g.f;

import android.net.Uri;

/* renamed from: c.e.a.b.g.f.ra  reason: case insensitive filesystem */
public final class C0866ra {
    public static Uri a(String str) {
        String valueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
