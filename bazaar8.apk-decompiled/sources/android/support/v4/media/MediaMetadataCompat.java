package android.support.v4.media;

import a.a.b.b.l;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import b.f.C0243b;

public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new k();

    /* renamed from: a  reason: collision with root package name */
    public static final C0243b<String, Integer> f88a = new C0243b<>();

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f89b = {"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};

    /* renamed from: c  reason: collision with root package name */
    public static final String[] f90c = {"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};

    /* renamed from: d  reason: collision with root package name */
    public static final String[] f91d = {"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};

    /* renamed from: e  reason: collision with root package name */
    public final Bundle f92e;

    /* renamed from: f  reason: collision with root package name */
    public Object f93f;

    /* renamed from: g  reason: collision with root package name */
    public MediaDescriptionCompat f94g;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Bundle f95a;

        public a() {
            this.f95a = new Bundle();
        }

        public a a(String str, String str2) {
            if (!MediaMetadataCompat.f88a.containsKey(str) || MediaMetadataCompat.f88a.get(str).intValue() == 1) {
                this.f95a.putCharSequence(str, str2);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
        }

        public a(MediaMetadataCompat mediaMetadataCompat) {
            this.f95a = new Bundle(mediaMetadataCompat.f92e);
            MediaSessionCompat.a(this.f95a);
        }

        public a a(String str, long j2) {
            if (!MediaMetadataCompat.f88a.containsKey(str) || MediaMetadataCompat.f88a.get(str).intValue() == 0) {
                this.f95a.putLong(str, j2);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }

        public a(MediaMetadataCompat mediaMetadataCompat, int i2) {
            this(mediaMetadataCompat);
            for (String str : this.f95a.keySet()) {
                Object obj = this.f95a.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i2 || bitmap.getWidth() > i2) {
                        a(str, a(bitmap, i2));
                    }
                }
            }
        }

        public a a(String str, Bitmap bitmap) {
            if (!MediaMetadataCompat.f88a.containsKey(str) || MediaMetadataCompat.f88a.get(str).intValue() == 2) {
                this.f95a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        public MediaMetadataCompat a() {
            return new MediaMetadataCompat(this.f95a);
        }

        public final Bitmap a(Bitmap bitmap, int i2) {
            float f2 = (float) i2;
            float min = Math.min(f2 / ((float) bitmap.getWidth()), f2 / ((float) bitmap.getHeight()));
            return Bitmap.createScaledBitmap(bitmap, (int) (((float) bitmap.getWidth()) * min), (int) (((float) bitmap.getHeight()) * min), true);
        }
    }

    static {
        f88a.put("android.media.metadata.TITLE", 1);
        f88a.put("android.media.metadata.ARTIST", 1);
        f88a.put("android.media.metadata.DURATION", 0);
        f88a.put("android.media.metadata.ALBUM", 1);
        f88a.put("android.media.metadata.AUTHOR", 1);
        f88a.put("android.media.metadata.WRITER", 1);
        f88a.put("android.media.metadata.COMPOSER", 1);
        f88a.put("android.media.metadata.COMPILATION", 1);
        f88a.put("android.media.metadata.DATE", 1);
        f88a.put("android.media.metadata.YEAR", 0);
        f88a.put("android.media.metadata.GENRE", 1);
        f88a.put("android.media.metadata.TRACK_NUMBER", 0);
        f88a.put("android.media.metadata.NUM_TRACKS", 0);
        f88a.put("android.media.metadata.DISC_NUMBER", 0);
        f88a.put("android.media.metadata.ALBUM_ARTIST", 1);
        f88a.put("android.media.metadata.ART", 2);
        f88a.put("android.media.metadata.ART_URI", 1);
        f88a.put("android.media.metadata.ALBUM_ART", 2);
        f88a.put("android.media.metadata.ALBUM_ART_URI", 1);
        f88a.put("android.media.metadata.USER_RATING", 3);
        f88a.put("android.media.metadata.RATING", 3);
        f88a.put("android.media.metadata.DISPLAY_TITLE", 1);
        f88a.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        f88a.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        f88a.put("android.media.metadata.DISPLAY_ICON", 2);
        f88a.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        f88a.put("android.media.metadata.MEDIA_ID", 1);
        f88a.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        f88a.put("android.media.metadata.MEDIA_URI", 1);
        f88a.put("android.media.metadata.ADVERTISEMENT", 0);
        f88a.put("android.media.metadata.DOWNLOAD_STATUS", 0);
    }

    public MediaMetadataCompat(Bundle bundle) {
        this.f92e = new Bundle(bundle);
        MediaSessionCompat.a(this.f92e);
    }

    public boolean a(String str) {
        return this.f92e.containsKey(str);
    }

    public Bitmap b(String str) {
        try {
            return (Bitmap) this.f92e.getParcelable(str);
        } catch (Exception e2) {
            Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", e2);
            return null;
        }
    }

    public long c(String str) {
        return this.f92e.getLong(str, 0);
    }

    public String d(String str) {
        CharSequence charSequence = this.f92e.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public CharSequence e(String str) {
        return this.f92e.getCharSequence(str);
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeBundle(this.f92e);
    }

    public Bundle a() {
        return new Bundle(this.f92e);
    }

    public Object c() {
        if (this.f93f == null && Build.VERSION.SDK_INT >= 21) {
            Parcel obtain = Parcel.obtain();
            writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            this.f93f = l.a(obtain);
            obtain.recycle();
        }
        return this.f93f;
    }

    public static MediaMetadataCompat a(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        l.a(obj, obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.f93f = obj;
        return createFromParcel;
    }

    public MediaDescriptionCompat b() {
        Uri uri;
        Bitmap bitmap;
        Uri uri2;
        MediaDescriptionCompat mediaDescriptionCompat = this.f94g;
        if (mediaDescriptionCompat != null) {
            return mediaDescriptionCompat;
        }
        String d2 = d("android.media.metadata.MEDIA_ID");
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence e2 = e("android.media.metadata.DISPLAY_TITLE");
        if (TextUtils.isEmpty(e2)) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < charSequenceArr.length) {
                String[] strArr = f89b;
                if (i3 >= strArr.length) {
                    break;
                }
                int i4 = i3 + 1;
                CharSequence e3 = e(strArr[i3]);
                if (!TextUtils.isEmpty(e3)) {
                    charSequenceArr[i2] = e3;
                    i2++;
                }
                i3 = i4;
            }
        } else {
            charSequenceArr[0] = e2;
            charSequenceArr[1] = e("android.media.metadata.DISPLAY_SUBTITLE");
            charSequenceArr[2] = e("android.media.metadata.DISPLAY_DESCRIPTION");
        }
        int i5 = 0;
        while (true) {
            String[] strArr2 = f90c;
            uri = null;
            if (i5 >= strArr2.length) {
                bitmap = null;
                break;
            }
            bitmap = b(strArr2[i5]);
            if (bitmap != null) {
                break;
            }
            i5++;
        }
        int i6 = 0;
        while (true) {
            String[] strArr3 = f91d;
            if (i6 >= strArr3.length) {
                uri2 = null;
                break;
            }
            String d3 = d(strArr3[i6]);
            if (!TextUtils.isEmpty(d3)) {
                uri2 = Uri.parse(d3);
                break;
            }
            i6++;
        }
        String d4 = d("android.media.metadata.MEDIA_URI");
        if (!TextUtils.isEmpty(d4)) {
            uri = Uri.parse(d4);
        }
        MediaDescriptionCompat.a aVar = new MediaDescriptionCompat.a();
        aVar.a(d2);
        aVar.c(charSequenceArr[0]);
        aVar.b(charSequenceArr[1]);
        aVar.a(charSequenceArr[2]);
        aVar.a(bitmap);
        aVar.a(uri2);
        aVar.b(uri);
        Bundle bundle = new Bundle();
        if (this.f92e.containsKey("android.media.metadata.BT_FOLDER_TYPE")) {
            bundle.putLong("android.media.extra.BT_FOLDER_TYPE", c("android.media.metadata.BT_FOLDER_TYPE"));
        }
        if (this.f92e.containsKey("android.media.metadata.DOWNLOAD_STATUS")) {
            bundle.putLong("android.media.extra.DOWNLOAD_STATUS", c("android.media.metadata.DOWNLOAD_STATUS"));
        }
        if (!bundle.isEmpty()) {
            aVar.a(bundle);
        }
        this.f94g = aVar.a();
        return this.f94g;
    }

    public MediaMetadataCompat(Parcel parcel) {
        this.f92e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
}
