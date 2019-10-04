package com.webengage.sdk.android.actions.render;

import android.content.Context;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.webengage.sdk.android.WebEngage;
import io.fabric.sdk.android.services.settings.t;
import org.a.a;
import org.a.c;
import org.eclipse.paho.a.a.w;

class b {
    private boolean amplified;
    private String channelId;
    private Bundle customData = null;
    private String experimentId;
    private c jsonObject;
    private int ledColor;
    private String license_code;
    private String message = null;
    private int priority;
    private boolean render = true;
    private Uri sound = null;
    private String title = null;
    private String type = null;
    private String variationId = null;
    private boolean vibrate;

    public b(c cVar, String str, Context context) {
        Uri uri;
        a aVar = null;
        this.vibrate = false;
        this.ledColor = 0;
        this.jsonObject = null;
        this.experimentId = null;
        this.license_code = null;
        this.priority = 0;
        this.channelId = null;
        this.amplified = false;
        this.title = cVar.isNull(t.PROMPT_TITLE_KEY) ? null : cVar.getString(t.PROMPT_TITLE_KEY);
        if (this.title == null) {
            this.title = context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
        }
        if (!cVar.isNull("license_code")) {
            this.license_code = cVar.getString("license_code");
            if (!WebEngage.get().getWebEngageConfig().getWebEngageKey().equalsIgnoreCase(this.license_code)) {
                throw new org.a.b("license_code mismatch , received license_code : " + this.license_code + ", integrated license code : " + WebEngage.get().getWebEngageConfig().getWebEngageKey());
            } else if (!cVar.isNull(t.PROMPT_MESSAGE_KEY)) {
                this.message = cVar.getString(t.PROMPT_MESSAGE_KEY);
                if (!cVar.isNull("experimentId")) {
                    this.experimentId = cVar.getString("experimentId");
                    this.render = true;
                    this.sound = null;
                    this.vibrate = cVar.optBoolean("vib", false);
                    this.ledColor = 0;
                    if (!cVar.isNull("snd")) {
                        int identifier = context.getResources().getIdentifier(cVar.optString("snd"), "raw", context.getPackageName());
                        if (identifier != 0) {
                            uri = Uri.parse("android.resource://" + context.getPackageName() + w.TOPIC_LEVEL_SEPARATOR + identifier);
                        } else {
                            uri = RingtoneManager.getDefaultUri(2);
                        }
                        this.sound = uri;
                    }
                    this.priority = cVar.optInt("prt", 0);
                    if (!cVar.isNull("chId")) {
                        this.channelId = cVar.optString("chId");
                    }
                    if (!cVar.isNull(t.APP_IDENTIFIER_KEY)) {
                        this.variationId = cVar.getString(t.APP_IDENTIFIER_KEY);
                        this.type = str;
                        this.customData = new Bundle();
                        aVar = !cVar.isNull("custom") ? cVar.optJSONArray("custom") : aVar;
                        if (aVar != null) {
                            for (int i = 0; i < aVar.length(); i++) {
                                try {
                                    c jSONObject = aVar.getJSONObject(i);
                                    this.customData.putString(jSONObject.getString("key"), jSONObject.getString(FirebaseAnalytics.b.VALUE));
                                } catch (org.a.b unused) {
                                }
                            }
                        }
                        this.amplified = cVar.optBoolean("amplified");
                        return;
                    }
                    throw new org.a.b("Notification ID is Null");
                }
                throw new org.a.b("experimentId is null");
            } else {
                throw new org.a.b("message is Null");
            }
        } else {
            throw new org.a.b("license_code is null");
        }
    }

    public String getChannelId() {
        return this.channelId;
    }

    public String getContentText() {
        return this.message;
    }

    public Bundle getCustomData() {
        return this.customData;
    }

    public String getExperimentId() {
        return this.experimentId;
    }

    public int getLedColor() {
        return this.ledColor;
    }

    /* access modifiers changed from: package-private */
    public String getNotificationType() {
        return this.type;
    }

    public int getPriority() {
        return this.priority;
    }

    public Uri getSound() {
        return this.sound;
    }

    public String getTitle() {
        return this.title;
    }

    public String getVariationId() {
        return this.variationId;
    }

    public boolean getVibrateFlag() {
        return this.vibrate;
    }

    public boolean isAmplified() {
        return this.amplified;
    }

    public void setChannelId(String str) {
        this.channelId = str;
    }

    public void setContentText(String str) {
        this.message = str;
    }

    @Deprecated
    public void setCustomData(Bundle bundle) {
        this.customData = bundle;
    }

    public void setLedLight(int i) {
        this.ledColor = i;
    }

    @Deprecated
    public void setPriority(int i) {
        this.priority = i;
    }

    public void setShouldRender(boolean z) {
        this.render = z;
    }

    @Deprecated
    public void setSound(Uri uri) {
        this.sound = uri;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Deprecated
    public void setVibrateFlag(boolean z) {
        this.vibrate = z;
    }

    public boolean shouldRender() {
        return this.render;
    }
}
