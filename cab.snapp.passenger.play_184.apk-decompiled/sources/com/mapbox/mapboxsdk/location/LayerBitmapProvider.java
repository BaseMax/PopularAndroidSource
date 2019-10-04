package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.graphics.Bitmap;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.utils.BitmapUtils;

class LayerBitmapProvider {
    private final Context context;

    LayerBitmapProvider(Context context2) {
        this.context = context2;
    }

    /* access modifiers changed from: package-private */
    public Bitmap generateBitmap(int i, Integer num) {
        return BitmapUtils.getBitmapFromDrawable(BitmapUtils.getDrawableFromRes(this.context, i, num));
    }

    /* access modifiers changed from: package-private */
    public Bitmap generateShadowBitmap(LocationComponentOptions locationComponentOptions) {
        return Utils.generateShadow(BitmapUtils.getDrawableFromRes(this.context, R.drawable.mapbox_user_icon_shadow), locationComponentOptions.elevation());
    }
}
