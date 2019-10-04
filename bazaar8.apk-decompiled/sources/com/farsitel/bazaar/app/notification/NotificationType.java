package com.farsitel.bazaar.app.notification;

import com.farsitel.bazaar.R;

/* compiled from: NotificationType.kt */
public enum NotificationType {
    APP_DOWNLOAD_COMPLETE(r4, R.string.notification_download_complete_title_one, R.string.notification_download_complete_title_other, r16, r17),
    APP_DOWNLOAD_PROGRESS(r21, R.string.notification_downloading_one, R.string.notification_downloading_other, null, null),
    UPDATE_NEEDED(r13, R.string.notification_download_complete_title_one, R.string.notification_download_complete_title_other, r16, r17),
    VIDEO_DOWNLOAD_PROGRESS(r6, R.string.notification_downloading_one, R.string.notification_downloading_other, null, null),
    VIDEO_DOWNLOAD_COMPLETE(r6, R.string.notification_video_download_complete_title_one, R.string.notification_video_download_complete_title_other, Integer.valueOf(R.string.notification_video_download_complete_body_one), Integer.valueOf(R.string.notification_video_download_complete_body_other)),
    PUSH_NOTIFICATION(r6, -1, -1, null, null),
    UPGRADABLE_APPS(r6, R.string.notification_upgradable_apps_title_one, R.string.notification_upgradable_apps_title_other, Integer.valueOf(R.string.notification_upgradable_apps_body_one), Integer.valueOf(R.string.notification_upgradable_apps_body_other)),
    MALICIOUS_APPS(r6, R.string.malicious_notification_title_one, R.string.malicious_notification_title_other, Integer.valueOf(R.string.malicious_notification_body_one), Integer.valueOf(R.string.malicious_notification_body_other)),
    IAB_LOGIN_NOTIFICATION(r6, 0, 0, null, null, 30, null);
    
    public final int notificationId;
    public final Integer resourceBodyIdOne;
    public final Integer resourceBodyIdOther;
    public final int resourceTitleIdOne;
    public final int resourceTitleIdOther;

    /* access modifiers changed from: public */
    NotificationType(int i2, int i3, int i4, Integer num, Integer num2) {
        this.notificationId = i2;
        this.resourceTitleIdOne = i3;
        this.resourceTitleIdOther = i4;
        this.resourceBodyIdOne = num;
        this.resourceBodyIdOther = num2;
    }

    public final Integer a(int i2) {
        return i2 == 1 ? this.resourceBodyIdOne : this.resourceBodyIdOther;
    }

    public final int b(int i2) {
        return i2 == 1 ? this.resourceTitleIdOne : this.resourceTitleIdOther;
    }

    public final int f() {
        return this.notificationId;
    }
}
