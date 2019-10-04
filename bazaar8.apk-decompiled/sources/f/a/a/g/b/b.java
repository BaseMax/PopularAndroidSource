package f.a.a.g.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import f.a.a.f.c;
import ir.cafebazaar.inline.ux.audio.MusicDescriptor;
import java.util.HashMap;

/* compiled from: MediaMetaDataRetrieverThread */
public class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public MusicDescriptor f14382a;

    /* renamed from: b  reason: collision with root package name */
    public a f14383b;

    /* compiled from: MediaMetaDataRetrieverThread */
    public interface a {
        void onSuccess();
    }

    public b(MusicDescriptor musicDescriptor, a aVar) {
        this.f14382a = musicDescriptor;
        this.f14383b = aVar;
    }

    public final int a(byte[] bArr, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i4 = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        int i5 = options.outHeight;
        int i6 = options.outWidth;
        if (i5 > i2 || i6 > i3) {
            int i7 = i5 / 2;
            int i8 = i6 / 2;
            while (i7 / i4 >= i2 && i8 / i4 >= i3) {
                i4 *= 2;
            }
        }
        return i4;
    }

    public void run() {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(this.f14382a.f(), new HashMap());
        String extractMetadata = mediaMetadataRetriever.extractMetadata(7);
        String extractMetadata2 = mediaMetadataRetriever.extractMetadata(1);
        String extractMetadata3 = mediaMetadataRetriever.extractMetadata(2);
        String extractMetadata4 = mediaMetadataRetriever.extractMetadata(9);
        byte[] embeddedPicture = mediaMetadataRetriever.getEmbeddedPicture();
        Bitmap bitmap = null;
        if (embeddedPicture != null) {
            int a2 = c.a(64);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.outHeight = a2;
            options.outWidth = a2;
            options.inSampleSize = a(embeddedPicture, a2, a2);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(embeddedPicture, 0, embeddedPicture.length, options);
            if (decodeByteArray.getByteCount() <= 700000) {
                bitmap = decodeByteArray;
            }
        }
        this.f14382a.c(extractMetadata);
        this.f14382a.a(extractMetadata2);
        this.f14382a.a(bitmap);
        this.f14382a.b(extractMetadata3);
        this.f14382a.a(Long.valueOf(extractMetadata4).longValue());
        this.f14383b.onSuccess();
    }
}
