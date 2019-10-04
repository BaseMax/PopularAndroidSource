package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import c.f.a.C1043n;
import c.f.a.G;
import c.f.a.I;
import com.squareup.picasso.Picasso;
import k.s;

public class MediaStoreRequestHandler extends C1043n {

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f13596b = {"orientation"};

    enum PicassoKind {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);
        
        public final int androidKind;
        public final int height;
        public final int width;

        /* access modifiers changed from: public */
        PicassoKind(int i2, int i3, int i4) {
            this.androidKind = i2;
            this.width = i3;
            this.height = i4;
        }
    }

    public MediaStoreRequestHandler(Context context) {
        super(context);
    }

    public boolean a(G g2) {
        Uri uri = g2.f11892e;
        return "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public I.a a(G g2, int i2) {
        Bitmap bitmap;
        G g3 = g2;
        ContentResolver contentResolver = this.f11996a.getContentResolver();
        int a2 = a(contentResolver, g3.f11892e);
        String type = contentResolver.getType(g3.f11892e);
        boolean z = type != null && type.startsWith("video/");
        if (g2.c()) {
            PicassoKind a3 = a(g3.f11896i, g3.f11897j);
            if (!z && a3 == PicassoKind.FULL) {
                return new I.a(null, s.a(c(g2)), Picasso.LoadedFrom.DISK, a2);
            }
            long parseId = ContentUris.parseId(g3.f11892e);
            BitmapFactory.Options b2 = I.b(g2);
            b2.inJustDecodeBounds = true;
            BitmapFactory.Options options = b2;
            I.a(g3.f11896i, g3.f11897j, a3.width, a3.height, b2, g2);
            if (z) {
                bitmap = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, a3 == PicassoKind.FULL ? 1 : a3.androidKind, options);
            } else {
                bitmap = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, a3.androidKind, options);
            }
            if (bitmap != null) {
                return new I.a(bitmap, null, Picasso.LoadedFrom.DISK, a2);
            }
        }
        return new I.a(null, s.a(c(g2)), Picasso.LoadedFrom.DISK, a2);
    }

    public static PicassoKind a(int i2, int i3) {
        PicassoKind picassoKind = PicassoKind.MICRO;
        if (i2 <= picassoKind.width && i3 <= picassoKind.height) {
            return picassoKind;
        }
        PicassoKind picassoKind2 = PicassoKind.MINI;
        if (i2 > picassoKind2.width || i3 > picassoKind2.height) {
            return PicassoKind.FULL;
        }
        return picassoKind2;
    }

    public static int a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor = null;
        try {
            Cursor query = contentResolver.query(uri, f13596b, null, null, null);
            if (query != null) {
                if (query.moveToFirst()) {
                    int i2 = query.getInt(0);
                    if (query != null) {
                        query.close();
                    }
                    return i2;
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
