package com.webengage.sdk.android.actions.render;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.webengage.sdk.android.PendingIntentFactory;
import com.webengage.sdk.android.R;
import com.webengage.sdk.android.actions.exception.ImageLoadException;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.callbacks.CustomPushRender;
import com.webengage.sdk.android.callbacks.CustomPushRerender;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import java.util.List;

class e extends j implements CustomPushRender, CustomPushRerender {
    private Long h = null;
    private int i = 0;
    private String j = "right";
    private int k = 0;
    private int l = 0;
    private int m = 0;
    private int n = 0;

    e() {
    }

    private Pair<Integer, Bitmap> a(int i2, int i3, int i4) {
        if (this.f5398b.getCarouselV1Data() != null) {
            List<CarouselV1CallToAction> callToActions = this.f5398b.getCarouselV1Data().getCallToActions();
            if (callToActions != null) {
                int i5 = i2;
                do {
                    Bitmap a2 = a(a(new f.a(callToActions.get(i5).getImageURL(), com.webengage.sdk.android.utils.a.e.GET, this.f5397a).b(4).a()));
                    if (a2 != null) {
                        return Pair.create(Integer.valueOf(i5), a2);
                    }
                    i5 = (i3 == 1 ? i5 + 1 : (i5 - 1) + i4) % i4;
                } while (i5 != i2);
            }
        }
        return null;
    }

    private RemoteViews f() {
        RemoteViews d = d();
        d.setInt(R.id.custom_message, "setMaxLines", 1);
        d.setViewVisibility(R.id.custom_base_container, 0);
        d.setOnClickPendingIntent(R.id.custom_base_container, null);
        PushNotificationData.CarouselV1 carouselV1Data = this.f5398b.getCarouselV1Data();
        if (carouselV1Data != null) {
            d.setTextViewText(R.id.custom_title, carouselV1Data.getBigContentTitle());
            d.setTextViewText(R.id.custom_message, carouselV1Data.getSummary());
            d.setInt(R.id.custom_container, "setBackgroundColor", (carouselV1Data.getBackgroundColor() & ViewCompat.MEASURED_SIZE_MASK) | -553648128);
        }
        return d;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (this.f5398b.getCarouselV1Data() != null) {
            String mode = this.f5398b.getCarouselV1Data().getMODE();
            List<CarouselV1CallToAction> callToActions = this.f5398b.getCarouselV1Data().getCallToActions();
            if (callToActions != null) {
                for (CarouselV1CallToAction imageURL : callToActions) {
                    String imageURL2 = imageURL.getImageURL();
                    if (imageURL2 != null && !imageURL2.isEmpty()) {
                        g a2 = a(new f.a(imageURL2, com.webengage.sdk.android.utils.a.e.GET, this.f5397a).b(6).a(mode).a(1).a());
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
                }
            }
            this.i = this.f5398b.getCarouselV1Data().getSize() - 1;
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        String mode = this.f5398b.getCarouselV1Data().getMODE();
        int size = this.f5398b.getCarouselV1Data().getSize();
        this.f5398b.getCarouselV1Data().getCallToActions();
        if ("portrait".equals(mode)) {
            this.n = 3;
            if (this.j.equals("left")) {
                Pair<Integer, Bitmap> a2 = a(this.i, -1, size);
                if (a2 != null) {
                    this.l = ((Integer) a2.first).intValue();
                }
                Pair<Integer, Bitmap> a3 = a(((this.l - 1) + size) % size, -1, size);
                if (a3 != null) {
                    this.k = ((Integer) a3.first).intValue();
                }
                Pair<Integer, Bitmap> a4 = a(((this.k - 1) + size) % size, -1, size);
                if (a4 != null) {
                    this.m = ((Integer) a4.first).intValue();
                    this.e.add(a4.second);
                }
                if (a3 != null) {
                    this.e.add(a3.second);
                }
                if (a2 != null) {
                    this.e.add(a2.second);
                }
            } else if (this.j.equals("right")) {
                Pair<Integer, Bitmap> a5 = a(this.i, 1, size);
                if (a5 != null) {
                    this.m = ((Integer) a5.first).intValue();
                }
                Pair<Integer, Bitmap> a6 = a((this.m + 1) % size, 1, size);
                if (a6 != null) {
                    this.k = ((Integer) a6.first).intValue();
                }
                Pair<Integer, Bitmap> a7 = a((this.k + 1) % size, 1, size);
                if (a5 != null) {
                    this.e.add(a5.second);
                }
                if (a6 != null) {
                    this.e.add(a6.second);
                }
                if (a7 != null) {
                    this.e.add(a7.second);
                    this.l = ((Integer) a7.first).intValue();
                }
            }
        } else if ("landscape".equals(mode)) {
            this.n = 1;
            if ("left".equals(this.j)) {
                Pair<Integer, Bitmap> a8 = a(((this.i - 1) + size) % size, -1, size);
                if (a8 != null) {
                    this.k = ((Integer) a8.first).intValue();
                    this.e.add(a8.second);
                }
            } else if ("right".equals(this.j)) {
                Pair<Integer, Bitmap> a9 = a((this.i + 1) % size, 1, size);
                if (a9 != null) {
                    this.k = ((Integer) a9.first).intValue();
                    this.e.add(a9.second);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 16 && this.e.size() == this.n) {
            PushNotificationData.CarouselV1 carouselV1Data = this.f5398b.getCarouselV1Data();
            if (carouselV1Data != null) {
                Bundle customData = this.f5398b.getCustomData();
                if (this.h == null) {
                    this.h = Long.valueOf(System.currentTimeMillis());
                }
                this.f.setWhen(this.h.longValue());
                boolean parseBoolean = customData != null ? Boolean.parseBoolean(customData.getString("we_dismiss")) : false;
                List<CarouselV1CallToAction> callToActions = carouselV1Data.getCallToActions();
                this.g = f();
                RemoteViews remoteViews = new RemoteViews(this.f5397a.getPackageName(), R.layout.carousel_v1);
                remoteViews.setInt(R.id.carousel_v1_body, "setBackgroundColor", carouselV1Data.getBackgroundColor());
                remoteViews.setImageViewBitmap(R.id.next, BitmapFactory.decodeResource(this.f5397a.getResources(), R.drawable.right));
                remoteViews.setImageViewBitmap(R.id.prev, BitmapFactory.decodeResource(this.f5397a.getResources(), R.drawable.left));
                Bundle bundle = new Bundle();
                bundle.putLong("when", this.h.longValue());
                bundle.putBoolean("we_wk_render", true);
                Bundle bundle2 = bundle;
                PendingIntent constructCarouselBrowsePendingIntent = PendingIntentFactory.constructCarouselBrowsePendingIntent(this.f5397a, this.f5398b, this.k, "right", "carousel_v1_right", bundle2);
                PendingIntent constructCarouselBrowsePendingIntent2 = PendingIntentFactory.constructCarouselBrowsePendingIntent(this.f5397a, this.f5398b, this.k, "left", "carousel_v1_left", bundle2);
                remoteViews.setOnClickPendingIntent(R.id.next, constructCarouselBrowsePendingIntent);
                remoteViews.setOnClickPendingIntent(R.id.prev, constructCarouselBrowsePendingIntent2);
                remoteViews.setOnClickPendingIntent(R.id.carousel_portrait_2_container, constructCarouselBrowsePendingIntent);
                remoteViews.setOnClickPendingIntent(R.id.carousel_portrait_0_container, constructCarouselBrowsePendingIntent2);
                if ("portrait".equals(carouselV1Data.getMODE())) {
                    remoteViews.setViewVisibility(R.id.carousel_body_landscape, 8);
                    for (int i4 = 0; i4 < this.n; i4++) {
                        if (i4 != 0) {
                            if (i4 == 1) {
                                remoteViews.setImageViewBitmap(R.id.carousel_portrait_1_image, (Bitmap) this.e.get(i4));
                                remoteViews.setTextViewText(R.id.carousel_portrait_1_desc, callToActions.get(this.k).getText());
                                PendingIntent constructPushClickPendingIntent = PendingIntentFactory.constructPushClickPendingIntent(this.f5397a, this.f5398b, callToActions.get(this.k), parseBoolean);
                                remoteViews.setOnClickPendingIntent(R.id.carousel_portrait_1_container, constructPushClickPendingIntent);
                                this.g.setOnClickPendingIntent(R.id.custom_head_container, constructPushClickPendingIntent);
                            } else if (i4 == 2) {
                                remoteViews.setImageViewBitmap(R.id.carousel_portrait_2_image, (Bitmap) this.e.get(i4));
                                i3 = R.id.carousel_portrait_2_desc;
                                i2 = this.l;
                            }
                        } else {
                            remoteViews.setImageViewBitmap(R.id.carousel_portrait_0_image, (Bitmap) this.e.get(i4));
                            i3 = R.id.carousel_portrait_0_desc;
                            i2 = this.m;
                        }
                        remoteViews.setTextViewText(i3, callToActions.get(i2).getText());
                    }
                } else if ("landscape".equals(carouselV1Data.getMODE())) {
                    remoteViews.setViewVisibility(R.id.carousel_body_portrait, 8);
                    remoteViews.setImageViewBitmap(R.id.carousel_landscape_image, (Bitmap) this.e.get(0));
                    remoteViews.setTextViewText(R.id.carousel_landscape_desc, callToActions.get(this.k).getText());
                    PendingIntent constructPushClickPendingIntent2 = PendingIntentFactory.constructPushClickPendingIntent(this.f5397a, this.f5398b, callToActions.get(this.k), parseBoolean);
                    remoteViews.setOnClickPendingIntent(R.id.carousel_landscape_container, constructPushClickPendingIntent2);
                    this.g.setOnClickPendingIntent(R.id.custom_head_container, constructPushClickPendingIntent2);
                }
                this.g.removeAllViews(R.id.custom_base_container);
                this.g.addView(R.id.custom_base_container, remoteViews);
            }
        }
    }

    public boolean onRender(Context context, PushNotificationData pushNotificationData) {
        return super.onRender(context, pushNotificationData);
    }

    public boolean onRerender(Context context, PushNotificationData pushNotificationData, Bundle bundle) {
        if (bundle != null) {
            this.h = Long.valueOf(bundle.getLong("when"));
            this.i = bundle.getInt("current");
            this.j = bundle.getString(NotificationCompat.CATEGORY_NAVIGATION);
        }
        return super.a(context, pushNotificationData);
    }
}
