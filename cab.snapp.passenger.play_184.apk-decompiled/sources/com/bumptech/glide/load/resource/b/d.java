package com.bumptech.glide.load.resource.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import io.fabric.sdk.android.services.common.a;
import java.util.List;

public final class d implements h<Uri, Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f2334a;

    public d(Context context) {
        this.f2334a = context.getApplicationContext();
    }

    public final boolean handles(Uri uri, g gVar) {
        return uri.getScheme().equals("android.resource");
    }

    public final v<Drawable> decode(Uri uri, int i, int i2, g gVar) {
        int i3;
        Context a2 = a(uri, uri.getAuthority());
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            i3 = a2.getResources().getIdentifier(str2, str, authority);
            if (i3 == 0) {
                i3 = Resources.getSystem().getIdentifier(str2, str, a.ANDROID_CLIENT_TYPE);
            }
            if (i3 == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: ".concat(String.valueOf(uri)));
            }
        } else if (pathSegments.size() == 1) {
            i3 = a(uri);
        } else {
            throw new IllegalArgumentException("Unrecognized Uri format: ".concat(String.valueOf(uri)));
        }
        return c.a(a.getDrawable(this.f2334a, a2, i3));
    }

    private Context a(Uri uri, String str) {
        if (str.equals(this.f2334a.getPackageName())) {
            return this.f2334a;
        }
        try {
            return this.f2334a.createPackageContext(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            if (str.contains(this.f2334a.getPackageName())) {
                return this.f2334a;
            }
            throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: ".concat(String.valueOf(uri)), e);
        }
    }

    private static int a(Uri uri) {
        try {
            return Integer.parseInt(uri.getPathSegments().get(0));
        } catch (NumberFormatException e) {
            throw new IllegalArgumentException("Unrecognized Uri format: ".concat(String.valueOf(uri)), e);
        }
    }
}
