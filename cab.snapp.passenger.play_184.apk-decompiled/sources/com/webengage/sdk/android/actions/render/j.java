package com.webengage.sdk.android.actions.render;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.PendingIntentFactory;
import com.webengage.sdk.android.R;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.af;
import com.webengage.sdk.android.n;
import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;
import com.webengage.sdk.android.utils.e;
import com.webengage.sdk.android.v;
import java.util.ArrayList;
import java.util.List;

public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    protected Context f5397a = null;

    /* renamed from: b  reason: collision with root package name */
    protected PushNotificationData f5398b = null;
    protected int c;
    protected boolean d = false;
    protected List<Bitmap> e = null;
    protected Notification.Builder f = null;
    protected RemoteViews g = null;

    private void b(Context context, PushNotificationData pushNotificationData) {
        this.f5397a = context;
        this.f5398b = pushNotificationData;
        this.c = pushNotificationData.getVariationId().hashCode();
        this.e = new ArrayList();
        Bundle customData = pushNotificationData.getCustomData();
        this.d = customData != null && customData.containsKey("we_push_custom") && Boolean.parseBoolean(customData.getString("we_push_custom"));
    }

    private void f() {
        String channelId = this.f5398b.getChannelId();
        if (Build.VERSION.SDK_INT >= 26) {
            if (channelId != null) {
                if (!v.a(channelId, this.f5397a)) {
                    StringBuilder sb = new StringBuilder("Channel id: ");
                    sb.append(channelId);
                    sb.append(" not registered, using default");
                }
                this.f = new Notification.Builder(this.f5397a, channelId);
            }
            channelId = "we_wk_push_channel";
            this.f = new Notification.Builder(this.f5397a, channelId);
        } else {
            this.f = new Notification.Builder(this.f5397a);
        }
        this.f.setSmallIcon(this.f5398b.getSmallIcon());
        if (this.d) {
            RemoteViews g2 = g();
            if (Build.VERSION.SDK_INT >= 24) {
                this.f.setCustomContentView(g2);
            } else {
                this.f.setContent(g2);
            }
        } else {
            this.f.setContentTitle(this.f5398b.getTitle()).setContentText(this.f5398b.getContentText());
        }
        if (this.f5398b.getLargeIcon() != null) {
            this.f.setLargeIcon(this.f5398b.getLargeIcon());
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            Notification.Builder builder = this.f;
            Context context = this.f5397a;
            builder.setLargeIcon(Icon.createWithResource(context, context.getApplicationInfo().icon));
        }
    }

    private RemoteViews g() {
        RemoteViews d2 = d();
        d2.setViewVisibility(R.id.push_base_margin_view, 0);
        d2.setTextViewText(R.id.custom_title, this.f5398b.getTitle());
        d2.setTextViewText(R.id.custom_message, this.f5398b.getContentText());
        return d2;
    }

    private void h() {
        int i;
        Notification.Action.Builder builder;
        List<CallToAction> callToActions = this.f5398b.getCallToActions();
        if (callToActions != null && callToActions.size() > 0) {
            int i2 = 0;
            for (CallToAction next : callToActions) {
                if (next.isPrimeAction()) {
                    this.f.setContentIntent(PendingIntentFactory.constructPushClickPendingIntent(this.f5397a, this.f5398b, next, true));
                } else if (next.isNative()) {
                    PendingIntent constructPushClickPendingIntent = PendingIntentFactory.constructPushClickPendingIntent(this.f5397a, this.f5398b, next, true);
                    if (this.d) {
                        RemoteViews remoteViews = this.g;
                        if (remoteViews != null) {
                            i2++;
                            if (i2 != 1) {
                                i = i2 != 2 ? i2 != 3 ? -1 : R.id.action3 : R.id.action2;
                            } else {
                                remoteViews.setViewVisibility(R.id.action_list, 0);
                                i = R.id.action1;
                            }
                            if (i != -1) {
                                this.g.setViewVisibility(i, 0);
                                this.g.setTextViewText(i, next.getText());
                                this.g.setOnClickPendingIntent(i, constructPushClickPendingIntent);
                            }
                        }
                    } else if (Build.VERSION.SDK_INT < 16 || Build.VERSION.SDK_INT >= 20) {
                        if (Build.VERSION.SDK_INT >= 20 && Build.VERSION.SDK_INT < 23) {
                            builder = new Notification.Action.Builder(0, next.getText(), constructPushClickPendingIntent);
                        } else if (Build.VERSION.SDK_INT >= 23) {
                            builder = new Notification.Action.Builder(null, next.getText(), constructPushClickPendingIntent);
                        }
                        this.f.addAction(builder.build());
                    } else {
                        this.f.addAction(0, next.getText(), constructPushClickPendingIntent);
                    }
                }
            }
        }
        this.f.setDeleteIntent(PendingIntentFactory.constructPushDeletePendingIntent(this.f5397a, this.f5398b));
        if (Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT < 26) {
            int[] iArr = {-2, -1, 0, 1, 2};
            if (5 < this.f5398b.getPriority() + 2) {
                this.f.setPriority(iArr[this.f5398b.getPriority() + 2]);
            }
        }
        if (Build.VERSION.SDK_INT < 26) {
            if (this.f5398b.getVibrateFlag() && e.a("android.permission.VIBRATE", this.f5397a)) {
                this.f.setDefaults(2);
            }
            if (this.f5398b.getSound() != null) {
                this.f.setSound(this.f5398b.getSound());
            }
            if (this.f5398b.getLedColor() != 0) {
                this.f.setLights(this.f5398b.getLedColor(), 500, 1000);
            }
        }
    }

    private void i() {
        Notification notification = Build.VERSION.SDK_INT < 16 ? this.f.getNotification() : this.f.build();
        if (this.g != null) {
            if (Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 23) {
                notification.bigContentView = this.g;
            } else if (Build.VERSION.SDK_INT >= 24) {
                notification = this.f.setCustomBigContentView(this.g).build();
            }
        }
        if (this.f5398b.getAccentColor() != -1 && Build.VERSION.SDK_INT >= 21) {
            notification.color = this.f5398b.getAccentColor();
        }
        notification.flags = 16 | notification.flags;
        notification.flags |= 8;
        NotificationManager notificationManager = (NotificationManager) this.f5397a.getSystemService("notification");
        try {
            notificationManager.notify(this.c, notification);
        } catch (SecurityException unused) {
            notification.defaults = 5;
            notificationManager.notify(this.c, notification);
        }
    }

    /* access modifiers changed from: protected */
    public Bitmap a(g gVar) {
        String str;
        if (gVar != null) {
            if (gVar.i()) {
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(gVar.e());
                    gVar.m();
                    return decodeStream;
                } catch (Exception e2) {
                    e = e2;
                    str = "Exception while decoding input stream to bitmap.";
                    Logger.e("WebEngage", str, e);
                    gVar.m();
                    return null;
                } catch (OutOfMemoryError e3) {
                    e = e3;
                    str = "Error while decoding input stream to bitmap.";
                    Logger.e("WebEngage", str, e);
                    gVar.m();
                    return null;
                } catch (Throwable th) {
                    gVar.m();
                    throw th;
                }
            } else {
                Logger.e("WebEngage", "Could not download image " + gVar.l() + ", response code: " + gVar.d());
                gVar.n();
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public g a(f fVar) {
        g gVar = null;
        for (int i = 0; i < 5; i++) {
            if (gVar != null) {
                gVar.n();
            }
            gVar = fVar.i();
            if (gVar.i() || gVar.d() >= 400) {
                break;
            }
        }
        return gVar;
    }

    /* access modifiers changed from: package-private */
    public abstract void a();

    /* access modifiers changed from: protected */
    public void a(Exception exc) {
        WebEngage.startService(n.a(af.EXCEPTION, exc, this.f5397a), this.f5397a);
    }

    /* access modifiers changed from: protected */
    public boolean a(Context context, PushNotificationData pushNotificationData) {
        b(context, pushNotificationData);
        b();
        f();
        c();
        h();
        i();
        return true;
    }

    /* access modifiers changed from: package-private */
    public abstract void b();

    /* access modifiers changed from: package-private */
    public abstract void c();

    /* access modifiers changed from: protected */
    public RemoteViews d() {
        RemoteViews remoteViews = new RemoteViews(this.f5397a.getPackageName(), R.layout.push_base);
        if (Build.VERSION.SDK_INT >= 24) {
            remoteViews.setViewVisibility(R.id.custom_small_head_container, 0);
            int smallIcon = this.f5398b.getSmallIcon();
            if (smallIcon != -1) {
                remoteViews.setImageViewResource(R.id.small_icon, smallIcon);
            }
            String appName = this.f5398b.getAppName();
            if (appName != null) {
                remoteViews.setTextViewText(R.id.app_name, appName);
            }
        } else {
            remoteViews.setViewVisibility(R.id.custom_small_head_container, 8);
        }
        if (this.f5398b.getLargeIcon() != null) {
            remoteViews.setImageViewBitmap(R.id.custom_icon, this.f5398b.getLargeIcon());
        } else if (Build.VERSION.SDK_INT >= 23) {
            int i = R.id.custom_icon;
            Context context = this.f5397a;
            remoteViews.setImageViewIcon(i, Icon.createWithResource(context, context.getApplicationInfo().icon));
        }
        remoteViews.setViewVisibility(R.id.push_base_margin_view, 8);
        return remoteViews;
    }

    /* access modifiers changed from: protected */
    public boolean e() {
        List<CallToAction> callToActions = this.f5398b.getCallToActions();
        if (callToActions != null && callToActions.size() > 0) {
            for (CallToAction next : callToActions) {
                if (!next.isPrimeAction() && next.isNative()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean onRender(Context context, PushNotificationData pushNotificationData) {
        b(context, pushNotificationData);
        a();
        b();
        f();
        c();
        h();
        i();
        return true;
    }
}
