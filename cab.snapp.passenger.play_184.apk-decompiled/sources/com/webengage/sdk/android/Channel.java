package com.webengage.sdk.android;

import androidx.core.app.NotificationCompat;
import com.adjust.sdk.Constants;

public enum Channel {
    PUSH(Constants.PUSH, am.PUSH_OPT_IN.toString()),
    SMS("sms", am.SMS_OPT_IN.toString()),
    EMAIL(NotificationCompat.CATEGORY_EMAIL, am.EMAIL_OPT_IN.toString()),
    IN_APP("in_app", "opt_in_inapp");
    
    private String channel;
    private String userAttributesKey;

    private Channel(String str, String str2) {
        this.channel = str;
        this.userAttributesKey = str2;
    }

    public final String getChannel() {
        return this.channel;
    }

    public final String getUserAttributeKey() {
        return this.userAttributesKey;
    }

    public final String toString() {
        return this.userAttributesKey;
    }
}
