package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import java.util.Set;

public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator<MediaMetadataCompat>() {
        public final MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        public final MediaMetadataCompat[] newArray(int i) {
            return new MediaMetadataCompat[i];
        }
    };
    public static final String METADATA_KEY_ADVERTISEMENT = "android.media.metadata.ADVERTISEMENT";
    public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
    public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
    public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
    public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
    public static final String METADATA_KEY_ART = "android.media.metadata.ART";
    public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
    public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
    public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
    public static final String METADATA_KEY_BT_FOLDER_TYPE = "android.media.metadata.BT_FOLDER_TYPE";
    public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
    public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
    public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
    public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
    public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
    public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
    public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
    public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
    public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
    public static final String METADATA_KEY_DOWNLOAD_STATUS = "android.media.metadata.DOWNLOAD_STATUS";
    public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
    public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
    public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
    public static final String METADATA_KEY_MEDIA_URI = "android.media.metadata.MEDIA_URI";
    public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
    public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
    public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
    public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
    public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
    public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
    public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";

    /* renamed from: a  reason: collision with root package name */
    static final ArrayMap<String, Integer> f61a;
    private static final String[] c = {METADATA_KEY_TITLE, METADATA_KEY_ARTIST, METADATA_KEY_ALBUM, METADATA_KEY_ALBUM_ARTIST, METADATA_KEY_WRITER, METADATA_KEY_AUTHOR, METADATA_KEY_COMPOSER};
    private static final String[] d = {METADATA_KEY_DISPLAY_ICON, METADATA_KEY_ART, METADATA_KEY_ALBUM_ART};
    private static final String[] e;

    /* renamed from: b  reason: collision with root package name */
    final Bundle f62b;
    private Object f;
    private MediaDescriptionCompat g;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f63a;

        public a() {
            this.f63a = new Bundle();
        }

        public a(MediaMetadataCompat mediaMetadataCompat) {
            this.f63a = new Bundle(mediaMetadataCompat.f62b);
            MediaSessionCompat.ensureClassLoader(this.f63a);
        }

        public a(MediaMetadataCompat mediaMetadataCompat, int i) {
            this(mediaMetadataCompat);
            for (String str : this.f63a.keySet()) {
                Object obj = this.f63a.get(str);
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    if (bitmap.getHeight() > i || bitmap.getWidth() > i) {
                        float f = (float) i;
                        float min = Math.min(f / ((float) bitmap.getWidth()), f / ((float) bitmap.getHeight()));
                        putBitmap(str, Bitmap.createScaledBitmap(bitmap, (int) (((float) bitmap.getWidth()) * min), (int) (((float) bitmap.getHeight()) * min), true));
                    }
                }
            }
        }

        public final a putText(String str, CharSequence charSequence) {
            if (!MediaMetadataCompat.f61a.containsKey(str) || MediaMetadataCompat.f61a.get(str).intValue() == 1) {
                this.f63a.putCharSequence(str, charSequence);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a CharSequence");
        }

        public final a putString(String str, String str2) {
            if (!MediaMetadataCompat.f61a.containsKey(str) || MediaMetadataCompat.f61a.get(str).intValue() == 1) {
                this.f63a.putCharSequence(str, str2);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a String");
        }

        public final a putLong(String str, long j) {
            if (!MediaMetadataCompat.f61a.containsKey(str) || MediaMetadataCompat.f61a.get(str).intValue() == 0) {
                this.f63a.putLong(str, j);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a long");
        }

        public final a putRating(String str, RatingCompat ratingCompat) {
            if (!MediaMetadataCompat.f61a.containsKey(str) || MediaMetadataCompat.f61a.get(str).intValue() == 3) {
                if (Build.VERSION.SDK_INT >= 19) {
                    this.f63a.putParcelable(str, (Parcelable) ratingCompat.getRating());
                } else {
                    this.f63a.putParcelable(str, ratingCompat);
                }
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Rating");
        }

        public final a putBitmap(String str, Bitmap bitmap) {
            if (!MediaMetadataCompat.f61a.containsKey(str) || MediaMetadataCompat.f61a.get(str).intValue() == 2) {
                this.f63a.putParcelable(str, bitmap);
                return this;
            }
            throw new IllegalArgumentException("The " + str + " key cannot be used to put a Bitmap");
        }

        public final MediaMetadataCompat build() {
            return new MediaMetadataCompat(this.f63a);
        }
    }

    public final int describeContents() {
        return 0;
    }

    static {
        ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
        f61a = arrayMap;
        arrayMap.put(METADATA_KEY_TITLE, 1);
        f61a.put(METADATA_KEY_ARTIST, 1);
        f61a.put(METADATA_KEY_DURATION, 0);
        f61a.put(METADATA_KEY_ALBUM, 1);
        f61a.put(METADATA_KEY_AUTHOR, 1);
        f61a.put(METADATA_KEY_WRITER, 1);
        f61a.put(METADATA_KEY_COMPOSER, 1);
        f61a.put(METADATA_KEY_COMPILATION, 1);
        f61a.put(METADATA_KEY_DATE, 1);
        f61a.put(METADATA_KEY_YEAR, 0);
        f61a.put(METADATA_KEY_GENRE, 1);
        f61a.put(METADATA_KEY_TRACK_NUMBER, 0);
        f61a.put(METADATA_KEY_NUM_TRACKS, 0);
        f61a.put(METADATA_KEY_DISC_NUMBER, 0);
        f61a.put(METADATA_KEY_ALBUM_ARTIST, 1);
        f61a.put(METADATA_KEY_ART, 2);
        f61a.put(METADATA_KEY_ART_URI, 1);
        f61a.put(METADATA_KEY_ALBUM_ART, 2);
        f61a.put(METADATA_KEY_ALBUM_ART_URI, 1);
        ArrayMap<String, Integer> arrayMap2 = f61a;
        String str = METADATA_KEY_ALBUM_ART_URI;
        arrayMap2.put(METADATA_KEY_USER_RATING, 3);
        f61a.put(METADATA_KEY_RATING, 3);
        f61a.put(METADATA_KEY_DISPLAY_TITLE, 1);
        f61a.put(METADATA_KEY_DISPLAY_SUBTITLE, 1);
        f61a.put(METADATA_KEY_DISPLAY_DESCRIPTION, 1);
        f61a.put(METADATA_KEY_DISPLAY_ICON, 2);
        f61a.put(METADATA_KEY_DISPLAY_ICON_URI, 1);
        f61a.put(METADATA_KEY_MEDIA_ID, 1);
        f61a.put(METADATA_KEY_BT_FOLDER_TYPE, 0);
        f61a.put(METADATA_KEY_MEDIA_URI, 1);
        f61a.put(METADATA_KEY_ADVERTISEMENT, 0);
        f61a.put(METADATA_KEY_DOWNLOAD_STATUS, 0);
        e = new String[]{METADATA_KEY_DISPLAY_ICON_URI, METADATA_KEY_ART_URI, str};
    }

    MediaMetadataCompat(Bundle bundle) {
        this.f62b = new Bundle(bundle);
        MediaSessionCompat.ensureClassLoader(this.f62b);
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f62b = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    public final boolean containsKey(String str) {
        return this.f62b.containsKey(str);
    }

    public final CharSequence getText(String str) {
        return this.f62b.getCharSequence(str);
    }

    public final String getString(String str) {
        CharSequence charSequence = this.f62b.getCharSequence(str);
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public final long getLong(String str) {
        return this.f62b.getLong(str, 0);
    }

    public final RatingCompat getRating(String str) {
        try {
            if (Build.VERSION.SDK_INT >= 19) {
                return RatingCompat.fromRating(this.f62b.getParcelable(str));
            }
            return (RatingCompat) this.f62b.getParcelable(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public final Bitmap getBitmap(String str) {
        try {
            return (Bitmap) this.f62b.getParcelable(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public final MediaDescriptionCompat getDescription() {
        Uri uri;
        Bitmap bitmap;
        Uri uri2;
        MediaDescriptionCompat mediaDescriptionCompat = this.g;
        if (mediaDescriptionCompat != null) {
            return mediaDescriptionCompat;
        }
        String string = getString(METADATA_KEY_MEDIA_ID);
        CharSequence[] charSequenceArr = new CharSequence[3];
        CharSequence text = getText(METADATA_KEY_DISPLAY_TITLE);
        if (TextUtils.isEmpty(text)) {
            int i = 0;
            int i2 = 0;
            while (i < 3) {
                String[] strArr = c;
                if (i2 >= strArr.length) {
                    break;
                }
                int i3 = i2 + 1;
                CharSequence text2 = getText(strArr[i2]);
                if (!TextUtils.isEmpty(text2)) {
                    charSequenceArr[i] = text2;
                    i++;
                }
                i2 = i3;
            }
        } else {
            charSequenceArr[0] = text;
            charSequenceArr[1] = getText(METADATA_KEY_DISPLAY_SUBTITLE);
            charSequenceArr[2] = getText(METADATA_KEY_DISPLAY_DESCRIPTION);
        }
        int i4 = 0;
        while (true) {
            String[] strArr2 = d;
            uri = null;
            if (i4 >= strArr2.length) {
                bitmap = null;
                break;
            }
            bitmap = getBitmap(strArr2[i4]);
            if (bitmap != null) {
                break;
            }
            i4++;
        }
        int i5 = 0;
        while (true) {
            String[] strArr3 = e;
            if (i5 >= strArr3.length) {
                uri2 = null;
                break;
            }
            String string2 = getString(strArr3[i5]);
            if (!TextUtils.isEmpty(string2)) {
                uri2 = Uri.parse(string2);
                break;
            }
            i5++;
        }
        String string3 = getString(METADATA_KEY_MEDIA_URI);
        if (!TextUtils.isEmpty(string3)) {
            uri = Uri.parse(string3);
        }
        MediaDescriptionCompat.a aVar = new MediaDescriptionCompat.a();
        aVar.setMediaId(string);
        aVar.setTitle(charSequenceArr[0]);
        aVar.setSubtitle(charSequenceArr[1]);
        aVar.setDescription(charSequenceArr[2]);
        aVar.setIconBitmap(bitmap);
        aVar.setIconUri(uri2);
        aVar.setMediaUri(uri);
        Bundle bundle = new Bundle();
        if (this.f62b.containsKey(METADATA_KEY_BT_FOLDER_TYPE)) {
            bundle.putLong(MediaDescriptionCompat.EXTRA_BT_FOLDER_TYPE, getLong(METADATA_KEY_BT_FOLDER_TYPE));
        }
        if (this.f62b.containsKey(METADATA_KEY_DOWNLOAD_STATUS)) {
            bundle.putLong(MediaDescriptionCompat.EXTRA_DOWNLOAD_STATUS, getLong(METADATA_KEY_DOWNLOAD_STATUS));
        }
        if (!bundle.isEmpty()) {
            aVar.setExtras(bundle);
        }
        this.g = aVar.build();
        return this.g;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f62b);
    }

    public final int size() {
        return this.f62b.size();
    }

    public final Set<String> keySet() {
        return this.f62b.keySet();
    }

    public final Bundle getBundle() {
        return new Bundle(this.f62b);
    }

    public static MediaMetadataCompat fromMediaMetadata(Object obj) {
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        f.writeToParcel(obj, obtain, 0);
        obtain.setDataPosition(0);
        MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        createFromParcel.f = obj;
        return createFromParcel;
    }

    public final Object getMediaMetadata() {
        if (this.f == null && Build.VERSION.SDK_INT >= 21) {
            Parcel obtain = Parcel.obtain();
            writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            this.f = f.createFromParcel(obtain);
            obtain.recycle();
        }
        return this.f;
    }
}
