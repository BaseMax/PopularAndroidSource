package com.webengage.sdk.android.actions.render;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.RemoteViews;
import com.webengage.sdk.android.R;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.callbacks.CustomPushRender;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.k;

public class c extends j implements CustomPushRender {
    private RemoteViews f() {
        RemoteViews d = d();
        d.setInt(R.id.custom_message, "setMaxLines", 1);
        d.setViewVisibility(R.id.custom_base_container, 0);
        PushNotificationData.BigPictureStyle bigPictureStyleData = this.f5398b.getBigPictureStyleData();
        if (bigPictureStyleData != null) {
            d.setTextViewText(R.id.custom_title, bigPictureStyleData.getBigContentTitle());
            d.setTextViewText(R.id.custom_message, bigPictureStyleData.getSummary());
        }
        if (!e()) {
            d.setViewVisibility(R.id.push_base_margin_view, 0);
        }
        return d;
    }

    /* access modifiers changed from: package-private */
    public void a() {
    }

    /* access modifiers changed from: protected */
    public void b() {
        if (this.f5398b.getBigPictureStyleData() != null) {
            String bigPictureUrl = this.f5398b.getBigPictureStyleData().getBigPictureUrl();
            if (bigPictureUrl != null) {
                Bitmap a2 = a(a(new f.a(bigPictureUrl, e.GET, this.f5397a).b(3).a("landscape").a()));
                if (a2 != null) {
                    this.e.add(a2);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void c() {
        if (this.f5398b.isBigNotification() && this.f5398b.getStyle() != null && Build.VERSION.SDK_INT >= 16 && this.f5398b.getBigPictureStyleData() != null) {
            PushNotificationData.BigPictureStyle bigPictureStyleData = this.f5398b.getBigPictureStyleData();
            if (!this.d) {
                Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle();
                bigPictureStyle.setBigContentTitle(bigPictureStyleData.getBigContentTitle());
                bigPictureStyle.setSummaryText(bigPictureStyleData.getSummary());
                try {
                    if (this.e.size() > 0) {
                        bigPictureStyle.bigPicture((Bitmap) this.e.get(0));
                        this.f.setStyle(bigPictureStyle);
                    }
                } catch (Exception unused) {
                }
                return;
            }
            this.g = f();
            RemoteViews remoteViews = new RemoteViews(this.f5397a.getPackageName(), R.layout.big_picture);
            if (this.e.size() > 0) {
                remoteViews.setImageViewBitmap(R.id.big_picture_image, (Bitmap) this.e.get(0));
            }
            this.g.removeAllViews(R.id.custom_base_container);
            this.g.addView(R.id.custom_base_container, remoteViews);
            if (e()) {
                this.g.setInt(R.id.big_picture_image, "setMaxHeight", k.a(161.0f, this.f5397a));
            }
        }
    }

    public boolean onRender(Context context, PushNotificationData pushNotificationData) {
        return super.onRender(context, pushNotificationData);
    }
}
