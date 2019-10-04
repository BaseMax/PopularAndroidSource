package com.mapbox.mapboxsdk.annotations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.exceptions.TooManyIconsException;
import com.mapbox.mapboxsdk.utils.BitmapUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

@Deprecated
public final class IconFactory {
    private static final String ICON_ID_PREFIX = "com.mapbox.icons.icon_";
    private static IconFactory instance;
    private Context context;
    private Icon defaultMarker;
    private int nextId = 0;
    private BitmapFactory.Options options;

    public static synchronized IconFactory getInstance(Context context2) {
        IconFactory iconFactory;
        synchronized (IconFactory.class) {
            if (instance == null) {
                instance = new IconFactory(context2.getApplicationContext());
            }
            iconFactory = instance;
        }
        return iconFactory;
    }

    private IconFactory(Context context2) {
        DisplayMetrics displayMetrics;
        this.context = context2;
        DisplayMetrics displayMetrics2 = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) context2.getSystemService("window");
        if (Build.VERSION.SDK_INT >= 17) {
            displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            displayMetrics = null;
        }
        windowManager.getDefaultDisplay().getMetrics(displayMetrics2);
        this.options = new BitmapFactory.Options();
        BitmapFactory.Options options2 = this.options;
        options2.inScaled = true;
        options2.inDensity = 160;
        options2.inTargetDensity = displayMetrics2.densityDpi;
        if (displayMetrics != null) {
            this.options.inScreenDensity = displayMetrics.densityDpi;
        }
    }

    public final Icon fromBitmap(Bitmap bitmap) {
        if (this.nextId >= 0) {
            StringBuilder sb = new StringBuilder(ICON_ID_PREFIX);
            int i = this.nextId + 1;
            this.nextId = i;
            sb.append(i);
            return new Icon(sb.toString(), bitmap);
        }
        throw new TooManyIconsException();
    }

    public final Icon fromResource(int i) {
        Drawable drawableFromRes = BitmapUtils.getDrawableFromRes(this.context, i);
        if (drawableFromRes instanceof BitmapDrawable) {
            return fromBitmap(((BitmapDrawable) drawableFromRes).getBitmap());
        }
        throw new IllegalArgumentException("Failed to decode image. The resource provided must be a Bitmap.");
    }

    public final Icon defaultMarker() {
        if (this.defaultMarker == null) {
            this.defaultMarker = fromResource(R.drawable.mapbox_marker_icon_default);
        }
        return this.defaultMarker;
    }

    private Icon fromInputStream(InputStream inputStream) {
        return fromBitmap(BitmapFactory.decodeStream(inputStream, null, this.options));
    }

    public final Icon fromAsset(String str) {
        try {
            return fromInputStream(this.context.getAssets().open(str));
        } catch (IOException e) {
            MapStrictMode.strictModeViolation((Throwable) e);
            return null;
        }
    }

    public final Icon fromPath(String str) {
        return fromBitmap(BitmapFactory.decodeFile(str, this.options));
    }

    public final Icon fromFile(String str) {
        try {
            return fromInputStream(this.context.openFileInput(str));
        } catch (FileNotFoundException e) {
            MapStrictMode.strictModeViolation((Throwable) e);
            return null;
        }
    }

    public static Icon recreate(String str, Bitmap bitmap) {
        return new Icon(str, bitmap);
    }
}
