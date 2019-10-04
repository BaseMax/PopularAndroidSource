package f.a.a.e;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import f.a.a.c.c.a;
import f.a.a.e.b.b.y;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InlineUploadManager */
public class r {
    public static void a(g gVar, y.a aVar, Uri uri) {
        aVar.a(new BitmapDrawable(gVar.f().getResources(), a(gVar, uri)));
        a aVar2 = new a(gVar.f(), "http://192.168.252.225:8000/uploadfile/", uri, new p(aVar));
        aVar2.start();
        new q(aVar2, aVar).start();
    }

    public static Bitmap a(g gVar, Uri uri) {
        try {
            InputStream openInputStream = gVar.f().getContentResolver().openInputStream(uri);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(openInputStream, null, options);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            gVar.f().getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            int i2 = options.outWidth / displayMetrics.widthPixels;
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            if (i2 <= 1) {
                i2 = 1;
            }
            options2.inSampleSize = i2;
            options2.inPurgeable = true;
            options2.inPreferredConfig = Bitmap.Config.RGB_565;
            options2.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(gVar.f().getContentResolver().openInputStream(uri), null, options2);
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
