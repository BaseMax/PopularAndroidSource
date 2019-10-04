package com.webengage.sdk.android.actions.render;

import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.webengage.sdk.android.R;
import com.webengage.sdk.android.actions.exception.ImageLoadException;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.callbacks.CustomPushRender;
import com.webengage.sdk.android.callbacks.CustomPushRerender;
import com.webengage.sdk.android.utils.a.e;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;

class l extends j implements CustomPushRender, CustomPushRerender {
    private Long h;
    private Integer i = 0;

    l() {
    }

    private RemoteViews f() {
        RemoteViews d = d();
        d.setInt(R.id.custom_message, "setMaxLines", 1);
        d.setViewVisibility(R.id.custom_base_container, 0);
        d.setOnClickPendingIntent(R.id.custom_base_container, null);
        PushNotificationData.RatingV1 ratingV1 = this.f5398b.getRatingV1();
        d.setOnClickPendingIntent(R.id.custom_head_container, null);
        if (ratingV1 != null) {
            d.setTextViewText(R.id.custom_title, ratingV1.getBigContentTitle());
            d.setTextViewText(R.id.custom_message, ratingV1.getSummary());
            d.setInt(R.id.custom_container, "setBackgroundColor", ratingV1.getBackgroundColor());
        }
        return d;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (this.f5398b.getRatingV1() != null) {
            boolean z = false;
            if (this.f5398b.getRatingV1().getImageUrl() != null) {
                g a2 = a(new f.a(this.f5398b.getRatingV1().getImageUrl(), e.GET, this.f5397a).b(6).a("landscape").a(1).a());
                if (!a2.i()) {
                    StringBuilder sb = new StringBuilder("Exception: ");
                    sb.append(a2.a());
                    sb.append("\nURL: ");
                    sb.append(a2.l());
                    sb.append("\nResponseCode: ");
                    sb.append(a2.d());
                    sb.append("\nIsInputStreamNull: ");
                    sb.append(a2.e() == null);
                    a((Exception) new ImageLoadException(sb.toString()));
                    a2.n();
                } else {
                    a2.m();
                }
            }
            if (this.f5398b.getRatingV1().getIconUrl() != null) {
                g a3 = a(new f.a(this.f5398b.getRatingV1().getIconUrl(), e.GET, this.f5397a).b(6).a("portrait").a(1).a());
                if (!a3.i()) {
                    StringBuilder sb2 = new StringBuilder("Exception: ");
                    sb2.append(a3.a());
                    sb2.append("\nURL: ");
                    sb2.append(a3.l());
                    sb2.append("\nResponseCode: ");
                    sb2.append(a3.d());
                    sb2.append("\nIsInputStreamNull: ");
                    if (a3.e() == null) {
                        z = true;
                    }
                    sb2.append(z);
                    a((Exception) new ImageLoadException(sb2.toString()));
                    a3.n();
                    return;
                }
                a3.m();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        if (this.f5398b.getRatingV1().getImageUrl() != null) {
            this.e.add(a(a(new f.a(this.f5398b.getRatingV1().getImageUrl(), e.GET, this.f5397a).b(4).a())));
        } else {
            this.e.add(null);
        }
        if (this.f5398b.getRatingV1().getIconUrl() != null) {
            this.e.add(a(a(new f.a(this.f5398b.getRatingV1().getIconUrl(), e.GET, this.f5397a).b(4).a())));
            return;
        }
        this.e.add(null);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x02a0, code lost:
        r1.setImageViewBitmap(r6, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x02a6, code lost:
        r1.setImageViewBitmap(r6, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x02a9, code lost:
        r5 = r5 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
            r11 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 < r1) goto L_0x02bb
            com.webengage.sdk.android.actions.render.PushNotificationData r0 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r0 = r0.getRatingV1()
            android.widget.RemoteViews r1 = r11.f()
            r11.g = r1
            android.widget.RemoteViews r1 = new android.widget.RemoteViews
            android.content.Context r2 = r11.f5397a
            java.lang.String r2 = r2.getPackageName()
            int r3 = com.webengage.sdk.android.R.layout.rating_v1
            r1.<init>(r2, r3)
            int r2 = com.webengage.sdk.android.R.id.rating_v1_star_body
            int r3 = r0.getBackgroundColor()
            java.lang.String r4 = "setBackgroundColor"
            r1.setInt(r2, r4, r3)
            java.lang.Long r2 = r11.h
            if (r2 == 0) goto L_0x002f
            goto L_0x0039
        L_0x002f:
            long r2 = java.lang.System.currentTimeMillis()
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
            r11.h = r2
        L_0x0039:
            android.app.Notification$Builder r2 = r11.f
            java.lang.Long r3 = r11.h
            long r5 = r3.longValue()
            r2.setWhen(r5)
            java.util.List r2 = r11.e
            int r2 = r2.size()
            r3 = 0
            if (r2 <= 0) goto L_0x0055
            java.util.List r2 = r11.e
            java.lang.Object r2 = r2.get(r3)
            if (r2 != 0) goto L_0x006d
        L_0x0055:
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r2 = r2.getRatingV1()
            java.lang.String r2 = r2.getContentMessage()
            if (r2 != 0) goto L_0x006d
            com.webengage.sdk.android.actions.render.PushNotificationData r2 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r2 = r2.getRatingV1()
            java.lang.String r2 = r2.getContentTitle()
            if (r2 == 0) goto L_0x0072
        L_0x006d:
            int r2 = com.webengage.sdk.android.R.id.rating_v1_frame
            r1.setViewVisibility(r2, r3)
        L_0x0072:
            java.util.List r2 = r11.e
            int r2 = r2.size()
            if (r2 <= 0) goto L_0x0095
            java.util.List r2 = r11.e
            java.lang.Object r2 = r2.get(r3)
            if (r2 == 0) goto L_0x0095
            int r0 = com.webengage.sdk.android.R.id.rating_v1_image
            r1.setViewVisibility(r0, r3)
            int r0 = com.webengage.sdk.android.R.id.rating_v1_image
            java.util.List r2 = r11.e
            java.lang.Object r2 = r2.get(r3)
            android.graphics.Bitmap r2 = (android.graphics.Bitmap) r2
            r1.setImageViewBitmap(r0, r2)
            goto L_0x009e
        L_0x0095:
            int r2 = com.webengage.sdk.android.R.id.rating_v1_frame
            int r0 = r0.getContentBackgroundColor()
            r1.setInt(r2, r4, r0)
        L_0x009e:
            java.util.List r0 = r11.e
            int r0 = r0.size()
            r2 = 1
            if (r0 <= r2) goto L_0x00c1
            java.util.List r0 = r11.e
            java.lang.Object r0 = r0.get(r2)
            if (r0 == 0) goto L_0x00c1
            int r0 = com.webengage.sdk.android.R.id.rating_v1_icon
            r1.setViewVisibility(r0, r3)
            int r0 = com.webengage.sdk.android.R.id.rating_v1_icon
            java.util.List r4 = r11.e
            java.lang.Object r4 = r4.get(r2)
            android.graphics.Bitmap r4 = (android.graphics.Bitmap) r4
            r1.setImageViewBitmap(r0, r4)
        L_0x00c1:
            com.webengage.sdk.android.actions.render.PushNotificationData r0 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r0 = r0.getRatingV1()
            java.lang.String r0 = r0.getContentTitle()
            if (r0 == 0) goto L_0x00f0
            int r0 = com.webengage.sdk.android.R.id.rating_v1_title
            r1.setViewVisibility(r0, r3)
            int r0 = com.webengage.sdk.android.R.id.rating_v1_title
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r4 = r4.getRatingV1()
            java.lang.String r4 = r4.getContentTitle()
            r1.setTextViewText(r0, r4)
            int r0 = com.webengage.sdk.android.R.id.rating_v1_title
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r4 = r4.getRatingV1()
            int r4 = r4.getContentTextColor()
            r1.setTextColor(r0, r4)
        L_0x00f0:
            com.webengage.sdk.android.actions.render.PushNotificationData r0 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r0 = r0.getRatingV1()
            java.lang.String r0 = r0.getContentMessage()
            if (r0 == 0) goto L_0x011f
            int r0 = com.webengage.sdk.android.R.id.rating_v1_message
            r1.setViewVisibility(r0, r3)
            int r0 = com.webengage.sdk.android.R.id.rating_v1_message
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r4 = r4.getRatingV1()
            java.lang.String r4 = r4.getContentMessage()
            r1.setTextViewText(r0, r4)
            int r0 = com.webengage.sdk.android.R.id.rating_v1_message
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r4 = r4.getRatingV1()
            int r4 = r4.getContentTextColor()
            r1.setTextColor(r0, r4)
        L_0x011f:
            int r0 = com.webengage.sdk.android.R.id.rating_v1_submit
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r4 = r4.getRatingV1()
            com.webengage.sdk.android.actions.render.CallToAction r4 = r4.getSubmitCTA()
            java.lang.String r4 = r4.getText()
            r1.setTextViewText(r0, r4)
            java.lang.Integer r0 = r11.i
            int r0 = r0.intValue()
            if (r0 > 0) goto L_0x0141
            int r0 = com.webengage.sdk.android.R.id.rating_v1_submit
            r4 = 0
            r1.setOnClickPendingIntent(r0, r4)
            goto L_0x0154
        L_0x0141:
            android.content.Context r0 = r11.f5397a
            com.webengage.sdk.android.actions.render.PushNotificationData r4 = r11.f5398b
            java.lang.Integer r5 = r11.i
            int r5 = r5.intValue()
            android.app.PendingIntent r0 = com.webengage.sdk.android.PendingIntentFactory.constructPushRatingSubmitPendingIntent(r0, r4, r5)
            int r4 = com.webengage.sdk.android.R.id.rating_v1_submit
            r1.setOnClickPendingIntent(r4, r0)
        L_0x0154:
            android.content.Context r0 = r11.f5397a
            android.content.res.Resources r0 = r0.getResources()
            int r4 = com.webengage.sdk.android.R.drawable.star_selected
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeResource(r0, r4)
            android.content.Context r4 = r11.f5397a
            android.content.res.Resources r4 = r4.getResources()
            int r5 = com.webengage.sdk.android.R.drawable.star_unselected
            android.graphics.Bitmap r4 = android.graphics.BitmapFactory.decodeResource(r4, r5)
            r5 = 1
        L_0x016d:
            com.webengage.sdk.android.actions.render.PushNotificationData r6 = r11.f5398b
            com.webengage.sdk.android.actions.render.PushNotificationData$RatingV1 r6 = r6.getRatingV1()
            int r6 = r6.getRateScale()
            if (r5 > r6) goto L_0x02ad
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            java.lang.String r7 = "current"
            r6.putInt(r7, r5)
            java.lang.Long r7 = r11.h
            long r7 = r7.longValue()
            java.lang.String r9 = "when"
            r6.putLong(r9, r7)
            java.lang.String r7 = "we_wk_render"
            r6.putBoolean(r7, r2)
            android.content.Context r7 = r11.f5397a
            com.webengage.sdk.android.actions.render.PushNotificationData r8 = r11.f5398b
            java.lang.String r9 = java.lang.String.valueOf(r5)
            java.lang.String r10 = "rating_v1_star"
            java.lang.String r9 = r10.concat(r9)
            android.app.PendingIntent r6 = com.webengage.sdk.android.PendingIntentFactory.constructRerenderPendingIntent(r7, r8, r9, r6)
            switch(r5) {
                case 1: goto L_0x028c;
                case 2: goto L_0x0274;
                case 3: goto L_0x025c;
                case 4: goto L_0x0244;
                case 5: goto L_0x022c;
                case 6: goto L_0x0212;
                case 7: goto L_0x01f8;
                case 8: goto L_0x01de;
                case 9: goto L_0x01c4;
                case 10: goto L_0x01aa;
                default: goto L_0x01a8;
            }
        L_0x01a8:
            goto L_0x02a9
        L_0x01aa:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star10
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star10
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x01c0
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star10
            goto L_0x02a0
        L_0x01c0:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star10
            goto L_0x02a6
        L_0x01c4:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star9
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star9
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x01da
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star9
            goto L_0x02a0
        L_0x01da:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star9
            goto L_0x02a6
        L_0x01de:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star8
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star8
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x01f4
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star8
            goto L_0x02a0
        L_0x01f4:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star8
            goto L_0x02a6
        L_0x01f8:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star7
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star7
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x020e
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star7
            goto L_0x02a0
        L_0x020e:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star7
            goto L_0x02a6
        L_0x0212:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star6
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star6
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x0228
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star6
            goto L_0x02a0
        L_0x0228:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star6
            goto L_0x02a6
        L_0x022c:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star5
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star5
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x0241
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star5
            goto L_0x02a0
        L_0x0241:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star5
            goto L_0x02a6
        L_0x0244:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star4
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star4
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x0259
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star4
            goto L_0x02a0
        L_0x0259:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star4
            goto L_0x02a6
        L_0x025c:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star3
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star3
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x0271
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star3
            goto L_0x02a0
        L_0x0271:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star3
            goto L_0x02a6
        L_0x0274:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star2
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star2
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x0289
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star2
            goto L_0x02a0
        L_0x0289:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star2
            goto L_0x02a6
        L_0x028c:
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star1
            r1.setViewVisibility(r7, r3)
            int r7 = com.webengage.sdk.android.R.id.rating_v1_star1
            r1.setOnClickPendingIntent(r7, r6)
            java.lang.Integer r6 = r11.i
            int r6 = r6.intValue()
            if (r5 > r6) goto L_0x02a4
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star1
        L_0x02a0:
            r1.setImageViewBitmap(r6, r0)
            goto L_0x02a9
        L_0x02a4:
            int r6 = com.webengage.sdk.android.R.id.rating_v1_star1
        L_0x02a6:
            r1.setImageViewBitmap(r6, r4)
        L_0x02a9:
            int r5 = r5 + 1
            goto L_0x016d
        L_0x02ad:
            android.widget.RemoteViews r0 = r11.g
            int r2 = com.webengage.sdk.android.R.id.custom_base_container
            r0.removeAllViews(r2)
            android.widget.RemoteViews r0 = r11.g
            int r2 = com.webengage.sdk.android.R.id.custom_base_container
            r0.addView(r2, r1)
        L_0x02bb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.l.c():void");
    }

    public boolean onRender(Context context, PushNotificationData pushNotificationData) {
        return super.onRender(context, pushNotificationData);
    }

    public boolean onRerender(Context context, PushNotificationData pushNotificationData, Bundle bundle) {
        if (bundle != null) {
            this.h = Long.valueOf(bundle.getLong("when"));
            this.i = Integer.valueOf(bundle.getInt("current"));
        }
        return super.a(context, pushNotificationData);
    }
}
