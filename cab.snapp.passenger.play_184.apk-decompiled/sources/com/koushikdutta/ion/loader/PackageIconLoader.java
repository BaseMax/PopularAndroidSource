package com.koushikdutta.ion.loader;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.ion.Ion;
import com.koushikdutta.ion.ResponseServedFrom;
import com.koushikdutta.ion.bitmap.BitmapInfo;
import java.net.URI;
import java.util.concurrent.ExecutorService;

public class PackageIconLoader extends SimpleLoader {
    public e<BitmapInfo> loadBitmap(Context context, Ion ion, String str, String str2, int i, int i2, boolean z) {
        if (str2 == null || !str2.startsWith("package:")) {
            return null;
        }
        i iVar = new i();
        ExecutorService bitmapLoadExecutorService = Ion.getBitmapLoadExecutorService();
        final String str3 = str2;
        final Ion ion2 = ion;
        final String str4 = str;
        final i iVar2 = iVar;
        AnonymousClass1 r0 = new Runnable() {
            public void run() {
                try {
                    String host = URI.create(str3).getHost();
                    PackageManager packageManager = ion2.getContext().getPackageManager();
                    Bitmap bitmap = ((BitmapDrawable) packageManager.getPackageInfo(host, 0).applicationInfo.loadIcon(packageManager)).getBitmap();
                    if (bitmap != null) {
                        BitmapInfo bitmapInfo = new BitmapInfo(str4, null, bitmap, new Point(bitmap.getWidth(), bitmap.getHeight()));
                        bitmapInfo.servedFrom = ResponseServedFrom.LOADED_FROM_CACHE;
                        iVar2.setComplete(bitmapInfo);
                        return;
                    }
                    throw new Exception("package icon failed to load");
                } catch (Exception e) {
                    iVar2.setComplete(e);
                }
            }
        };
        bitmapLoadExecutorService.execute(r0);
        return iVar;
    }
}
