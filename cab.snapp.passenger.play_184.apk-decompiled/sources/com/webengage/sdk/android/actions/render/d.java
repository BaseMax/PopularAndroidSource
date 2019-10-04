package com.webengage.sdk.android.actions.render;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.widget.RemoteViews;
import com.webengage.sdk.android.R;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.callbacks.CustomPushRender;

public class d extends j implements CustomPushRender {
    private RemoteViews f() {
        RemoteViews d = d();
        d.setInt(R.id.custom_message, "setMaxLines", 7);
        d.setViewVisibility(R.id.custom_base_container, 0);
        PushNotificationData.BigTextStyle bigTextStyleData = this.f5398b.getBigTextStyleData();
        if (bigTextStyleData != null) {
            d.setTextViewText(R.id.custom_title, this.f5398b.getTitle());
            d.setTextViewText(R.id.custom_message, bigTextStyleData.getBigText());
        }
        if (!e()) {
            d.setViewVisibility(R.id.push_base_margin_view, 0);
        }
        return d;
    }

    /* access modifiers changed from: package-private */
    public void a() {
    }

    /* access modifiers changed from: package-private */
    public void b() {
    }

    /* access modifiers changed from: package-private */
    public void c() {
        if (this.f5398b.getBigTextStyleData() != null && Build.VERSION.SDK_INT >= 16) {
            if (!this.d) {
                Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle();
                bigTextStyle.setBigContentTitle(this.f5398b.getBigTextStyleData().getBigContentTitle());
                bigTextStyle.bigText(this.f5398b.getBigTextStyleData().getBigText());
                this.f.setStyle(bigTextStyle);
                return;
            }
            this.g = f();
            RemoteViews remoteViews = new RemoteViews(this.f5397a.getPackageName(), R.layout.big_text);
            this.g.removeAllViews(R.id.custom_base_container);
            this.g.addView(R.id.custom_base_container, remoteViews);
        }
    }

    public boolean onRender(Context context, PushNotificationData pushNotificationData) {
        return super.onRender(context, pushNotificationData);
    }
}
