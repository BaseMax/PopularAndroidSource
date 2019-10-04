package android.support.v4.media;

import a.a.b.b.i;
import a.a.b.b.j;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new h();

    /* renamed from: a  reason: collision with root package name */
    public final String f71a;

    /* renamed from: b  reason: collision with root package name */
    public final CharSequence f72b;

    /* renamed from: c  reason: collision with root package name */
    public final CharSequence f73c;

    /* renamed from: d  reason: collision with root package name */
    public final CharSequence f74d;

    /* renamed from: e  reason: collision with root package name */
    public final Bitmap f75e;

    /* renamed from: f  reason: collision with root package name */
    public final Uri f76f;

    /* renamed from: g  reason: collision with root package name */
    public final Bundle f77g;

    /* renamed from: h  reason: collision with root package name */
    public final Uri f78h;

    /* renamed from: i  reason: collision with root package name */
    public Object f79i;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public String f80a;

        /* renamed from: b  reason: collision with root package name */
        public CharSequence f81b;

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f82c;

        /* renamed from: d  reason: collision with root package name */
        public CharSequence f83d;

        /* renamed from: e  reason: collision with root package name */
        public Bitmap f84e;

        /* renamed from: f  reason: collision with root package name */
        public Uri f85f;

        /* renamed from: g  reason: collision with root package name */
        public Bundle f86g;

        /* renamed from: h  reason: collision with root package name */
        public Uri f87h;

        public a a(String str) {
            this.f80a = str;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f82c = charSequence;
            return this;
        }

        public a c(CharSequence charSequence) {
            this.f81b = charSequence;
            return this;
        }

        public a a(CharSequence charSequence) {
            this.f83d = charSequence;
            return this;
        }

        public a b(Uri uri) {
            this.f87h = uri;
            return this;
        }

        public a a(Bitmap bitmap) {
            this.f84e = bitmap;
            return this;
        }

        public a a(Uri uri) {
            this.f85f = uri;
            return this;
        }

        public a a(Bundle bundle) {
            this.f86g = bundle;
            return this;
        }

        public MediaDescriptionCompat a() {
            MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(this.f80a, this.f81b, this.f82c, this.f83d, this.f84e, this.f85f, this.f86g, this.f87h);
            return mediaDescriptionCompat;
        }
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f71a = str;
        this.f72b = charSequence;
        this.f73c = charSequence2;
        this.f74d = charSequence3;
        this.f75e = bitmap;
        this.f76f = uri;
        this.f77g = bundle;
        this.f78h = uri2;
    }

    public Bitmap a() {
        return this.f75e;
    }

    public Object b() {
        if (this.f79i != null || Build.VERSION.SDK_INT < 21) {
            return this.f79i;
        }
        Object a2 = i.a.a();
        i.a.a(a2, this.f71a);
        i.a.c(a2, this.f72b);
        i.a.b(a2, this.f73c);
        i.a.a(a2, this.f74d);
        i.a.a(a2, this.f75e);
        i.a.a(a2, this.f76f);
        Bundle bundle = this.f77g;
        if (Build.VERSION.SDK_INT < 23 && this.f78h != null) {
            if (bundle == null) {
                bundle = new Bundle();
                bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
            }
            bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", this.f78h);
        }
        i.a.a(a2, bundle);
        if (Build.VERSION.SDK_INT >= 23) {
            j.a.a(a2, this.f78h);
        }
        this.f79i = i.a.a(a2);
        return this.f79i;
    }

    public String c() {
        return this.f71a;
    }

    public CharSequence d() {
        return this.f73c;
    }

    public int describeContents() {
        return 0;
    }

    public CharSequence e() {
        return this.f72b;
    }

    public String toString() {
        return this.f72b + ", " + this.f73c + ", " + this.f74d;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        if (Build.VERSION.SDK_INT < 21) {
            parcel.writeString(this.f71a);
            TextUtils.writeToParcel(this.f72b, parcel, i2);
            TextUtils.writeToParcel(this.f73c, parcel, i2);
            TextUtils.writeToParcel(this.f74d, parcel, i2);
            parcel.writeParcelable(this.f75e, i2);
            parcel.writeParcelable(this.f76f, i2);
            parcel.writeBundle(this.f77g);
            parcel.writeParcelable(this.f78h, i2);
            return;
        }
        i.a(b(), parcel, i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x006d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.support.v4.media.MediaDescriptionCompat a(java.lang.Object r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L_0x0080
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 21
            if (r1 < r2) goto L_0x0080
            android.support.v4.media.MediaDescriptionCompat$a r1 = new android.support.v4.media.MediaDescriptionCompat$a
            r1.<init>()
            java.lang.String r2 = a.a.b.b.i.e(r8)
            r1.a((java.lang.String) r2)
            java.lang.CharSequence r2 = a.a.b.b.i.g(r8)
            r1.c(r2)
            java.lang.CharSequence r2 = a.a.b.b.i.f(r8)
            r1.b((java.lang.CharSequence) r2)
            java.lang.CharSequence r2 = a.a.b.b.i.a((java.lang.Object) r8)
            r1.a((java.lang.CharSequence) r2)
            android.graphics.Bitmap r2 = a.a.b.b.i.c(r8)
            r1.a((android.graphics.Bitmap) r2)
            android.net.Uri r2 = a.a.b.b.i.d(r8)
            r1.a((android.net.Uri) r2)
            android.os.Bundle r2 = a.a.b.b.i.b(r8)
            java.lang.String r3 = "android.support.v4.media.description.MEDIA_URI"
            if (r2 == 0) goto L_0x004a
            android.support.v4.media.session.MediaSessionCompat.a((android.os.Bundle) r2)
            android.os.Parcelable r4 = r2.getParcelable(r3)
            android.net.Uri r4 = (android.net.Uri) r4
            goto L_0x004b
        L_0x004a:
            r4 = r0
        L_0x004b:
            if (r4 == 0) goto L_0x0063
            java.lang.String r5 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r6 = r2.containsKey(r5)
            if (r6 == 0) goto L_0x005d
            int r6 = r2.size()
            r7 = 2
            if (r6 != r7) goto L_0x005d
            goto L_0x0064
        L_0x005d:
            r2.remove(r3)
            r2.remove(r5)
        L_0x0063:
            r0 = r2
        L_0x0064:
            r1.a((android.os.Bundle) r0)
            if (r4 == 0) goto L_0x006d
            r1.b((android.net.Uri) r4)
            goto L_0x007a
        L_0x006d:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 23
            if (r0 < r2) goto L_0x007a
            android.net.Uri r0 = a.a.b.b.j.a(r8)
            r1.b((android.net.Uri) r0)
        L_0x007a:
            android.support.v4.media.MediaDescriptionCompat r0 = r1.a()
            r0.f79i = r8
        L_0x0080:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    public MediaDescriptionCompat(Parcel parcel) {
        this.f71a = parcel.readString();
        this.f72b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f73c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f74d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        ClassLoader classLoader = MediaDescriptionCompat.class.getClassLoader();
        this.f75e = (Bitmap) parcel.readParcelable(classLoader);
        this.f76f = (Uri) parcel.readParcelable(classLoader);
        this.f77g = parcel.readBundle(classLoader);
        this.f78h = (Uri) parcel.readParcelable(classLoader);
    }
}
