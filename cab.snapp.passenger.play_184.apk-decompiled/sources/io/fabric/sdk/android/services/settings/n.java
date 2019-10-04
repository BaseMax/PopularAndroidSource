package io.fabric.sdk.android.services.settings;

import android.content.Context;
import android.graphics.BitmapFactory;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.i;

public final class n {
    public final String hash;
    public final int height;
    public final int iconResourceId;
    public final int width;

    public n(String str, int i, int i2, int i3) {
        this.hash = str;
        this.iconResourceId = i;
        this.width = i2;
        this.height = i3;
    }

    public static n build(Context context, String str) {
        if (str != null) {
            try {
                int appIconResourceId = i.getAppIconResourceId(context);
                c.getLogger().d(c.TAG, "App icon resource ID is ".concat(String.valueOf(appIconResourceId)));
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeResource(context.getResources(), appIconResourceId, options);
                return new n(str, appIconResourceId, options.outWidth, options.outHeight);
            } catch (Exception e) {
                c.getLogger().e(c.TAG, "Failed to load icon", e);
            }
        }
        return null;
    }
}
