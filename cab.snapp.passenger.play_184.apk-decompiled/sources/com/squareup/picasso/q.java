package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import b.n;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.io.IOException;

final class q extends g {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f5291b = {"orientation"};

    enum a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);
        

        /* renamed from: a  reason: collision with root package name */
        final int f5292a;

        /* renamed from: b  reason: collision with root package name */
        final int f5293b;
        final int c;

        private a(int i, int i2, int i3) {
            this.f5292a = i;
            this.f5293b = i2;
            this.c = i3;
        }
    }

    q(Context context) {
        super(context);
    }

    public final boolean canHandleRequest(w wVar) {
        Uri uri = wVar.uri;
        return FirebaseAnalytics.b.CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public final y.a load(w wVar, int i) throws IOException {
        a aVar;
        Bitmap bitmap;
        w wVar2 = wVar;
        ContentResolver contentResolver = this.f5275a.getContentResolver();
        int a2 = a(contentResolver, wVar2.uri);
        String type = contentResolver.getType(wVar2.uri);
        boolean z = type != null && type.startsWith("video/");
        if (wVar.hasSize()) {
            int i2 = wVar2.targetWidth;
            int i3 = wVar2.targetHeight;
            if (i2 <= a.MICRO.f5293b && i3 <= a.MICRO.c) {
                aVar = a.MICRO;
            } else if (i2 > a.MINI.f5293b || i3 > a.MINI.c) {
                aVar = a.FULL;
            } else {
                aVar = a.MINI;
            }
            a aVar2 = aVar;
            if (!z && aVar2 == a.FULL) {
                return new y.a(null, n.source(a(wVar)), Picasso.LoadedFrom.DISK, a2);
            }
            long parseId = ContentUris.parseId(wVar2.uri);
            BitmapFactory.Options b2 = b(wVar);
            b2.inJustDecodeBounds = true;
            BitmapFactory.Options options = b2;
            a(wVar2.targetWidth, wVar2.targetHeight, aVar2.f5293b, aVar2.c, b2, wVar);
            if (z) {
                bitmap = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, aVar2 == a.FULL ? 1 : aVar2.f5292a, options);
            } else {
                bitmap = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, aVar2.f5292a, options);
            }
            if (bitmap != null) {
                return new y.a(bitmap, null, Picasso.LoadedFrom.DISK, a2);
            }
        }
        return new y.a(null, n.source(a(wVar)), Picasso.LoadedFrom.DISK, a2);
    }

    private static int a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor = null;
        try {
            Cursor query = contentResolver.query(uri, f5291b, null, null, null);
            if (query != null) {
                if (query.moveToFirst()) {
                    int i = query.getInt(0);
                    if (query != null) {
                        query.close();
                    }
                    return i;
                }
            }
            if (query != null) {
                query.close();
            }
            return 0;
        } catch (RuntimeException unused) {
            if (cursor != null) {
                cursor.close();
            }
            return 0;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }
}
