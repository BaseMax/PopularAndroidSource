package com.webengage.sdk.android.actions.render;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.utils.WebEngageConstant;
import io.fabric.sdk.android.services.settings.t;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.a.a;
import org.a.c;

public class PushNotificationData extends b {
    private int accentColor = -1;
    private String appName = null;
    private boolean autoExpand = true;
    private c bigNotificationData = null;
    private BigPictureStyle bigPictureStyle = null;
    private BigTextStyle bigTextStyle = null;
    private List<CallToAction> callToActions;
    private CarouselV1 carouselV1 = null;
    private c cta;
    private int currentIndex = 0;
    private InboxStyle inboxStyle = null;
    private Bitmap largeIcon = null;
    private RatingV1 ratingV1 = null;
    private int smallIcon = -1;
    private String style = null;

    public class BaseStyleData {
        private String bigContentTitle = null;
        private String summary = null;

        public BaseStyleData(c cVar) {
            this.bigContentTitle = cVar.isNull(t.PROMPT_TITLE_KEY) ? PushNotificationData.this.getTitle() : cVar.optString(t.PROMPT_TITLE_KEY);
            this.summary = cVar.isNull(t.PROMPT_MESSAGE_KEY) ? PushNotificationData.this.getContentText() : cVar.optString(t.PROMPT_MESSAGE_KEY);
        }

        public String getBigContentTitle() {
            return this.bigContentTitle;
        }

        public String getSummary() {
            return this.summary;
        }

        public void setBigContentTitle(String str) {
            this.bigContentTitle = str;
        }

        public void setSummary(String str) {
            this.summary = str;
        }
    }

    public class BigPictureStyle extends BaseStyleData {
        private String bigPictureUrl = null;

        public BigPictureStyle(c cVar) {
            super(cVar);
            String str = null;
            this.bigPictureUrl = !cVar.isNull("image") ? cVar.optString("image") : str;
        }

        public String getBigPictureUrl() {
            return this.bigPictureUrl;
        }

        public void setBigPictureUrl(String str) {
            this.bigPictureUrl = str;
        }
    }

    public class BigTextStyle extends BaseStyleData {
        private String bigText = null;

        public BigTextStyle(c cVar) {
            super(cVar);
            this.bigText = cVar.isNull(t.PROMPT_MESSAGE_KEY) ? PushNotificationData.this.getContentText() : cVar.optString(t.PROMPT_MESSAGE_KEY);
        }

        public String getBigText() {
            return this.bigText;
        }

        public void setBigText(String str) {
            this.bigText = str;
        }
    }

    public class CarouselV1 extends BaseStyleData {
        private final String MODE;
        private int backgroundColor;
        private List<CarouselV1CallToAction> callToActions = null;
        private int size;

        public CarouselV1(c cVar) {
            super(cVar);
            this.size = 0;
            this.backgroundColor = Color.parseColor("#ffffff");
            this.callToActions = new ArrayList();
            a optJSONArray = cVar.optJSONArray("items");
            if (optJSONArray != null) {
                this.size = optJSONArray.length();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    c optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null && !optJSONObject.isNull("id") && !optJSONObject.isNull("image")) {
                        this.callToActions.add(new CarouselV1CallToAction(optJSONObject.optString("id"), optJSONObject.optString("actionText"), optJSONObject.optString("actionLink"), optJSONObject.optString("image")));
                    }
                }
            }
            this.MODE = cVar.optString("mode", "landscape");
            if (!cVar.isNull("bckColor")) {
                try {
                    this.backgroundColor = Color.parseColor(cVar.optString("bckColor"));
                } catch (Exception unused) {
                    this.backgroundColor = Color.parseColor("#ffffff");
                }
            }
        }

        public int getBackgroundColor() {
            return this.backgroundColor;
        }

        public List<CarouselV1CallToAction> getCallToActions() {
            return this.callToActions;
        }

        public String getMODE() {
            return this.MODE;
        }

        /* access modifiers changed from: protected */
        public int getSize() {
            return this.size;
        }

        public void setBackgroudColor(int i) {
            this.backgroundColor = i;
        }

        public void setCallToActions(List<CarouselV1CallToAction> list) {
            this.callToActions = list;
        }
    }

    public class InboxStyle extends BaseStyleData {
        private List<String> lines = null;

        public InboxStyle(c cVar) {
            super(cVar);
            a aVar = null;
            aVar = !cVar.isNull("lines") ? cVar.optJSONArray("lines") : aVar;
            if (aVar != null) {
                this.lines = new LinkedList();
                for (int i = 0; i < aVar.length(); i++) {
                    this.lines.add(aVar.optString(i));
                }
            }
        }

        public List<String> getInboxLines() {
            return this.lines;
        }

        public void setLines(List<String> list) {
            this.lines = list;
        }
    }

    public class RatingV1 extends BaseStyleData {
        private int backgroundColor = Color.parseColor("#ffffff");
        private int contentBackgroundColor = Color.parseColor("#F0F0F0");
        private String contentMessage;
        private int contentTextColor;
        private String contentTitle;
        private String iconUrl;
        private String imageUrl;
        private int rateScale;
        private int rateValue;
        private CallToAction submitCTA;

        public RatingV1(c cVar) {
            super(cVar);
            String str = null;
            this.imageUrl = null;
            this.contentTitle = null;
            this.contentMessage = null;
            this.iconUrl = null;
            this.rateScale = 5;
            this.contentTextColor = Color.parseColor("#000000");
            this.submitCTA = null;
            this.rateValue = -1;
            if (cVar != null) {
                this.imageUrl = cVar.isNull("image") ? null : cVar.optString("image");
                this.iconUrl = cVar.isNull(t.APP_ICON_KEY) ? null : cVar.optString(t.APP_ICON_KEY);
                this.rateScale = cVar.optInt("rateScale", 5);
                if (!cVar.isNull("bckColor")) {
                    try {
                        this.backgroundColor = Color.parseColor(cVar.optString("bckColor"));
                    } catch (Exception unused) {
                        this.backgroundColor = Color.parseColor("#ffffff");
                    }
                }
                c optJSONObject = cVar.optJSONObject(FirebaseAnalytics.b.CONTENT);
                if (optJSONObject != null) {
                    this.contentTitle = optJSONObject.isNull(t.PROMPT_TITLE_KEY) ? null : optJSONObject.optString(t.PROMPT_TITLE_KEY);
                    this.contentMessage = !optJSONObject.isNull(t.PROMPT_MESSAGE_KEY) ? optJSONObject.optString(t.PROMPT_MESSAGE_KEY) : str;
                    if (!optJSONObject.isNull("textColor")) {
                        try {
                            this.contentTextColor = Color.parseColor(optJSONObject.optString("textColor"));
                        } catch (Exception unused2) {
                            this.contentTextColor = Color.parseColor("#000000");
                        }
                    }
                    if (!optJSONObject.isNull("bckColor")) {
                        try {
                            this.contentBackgroundColor = Color.parseColor(optJSONObject.optString("bckColor"));
                        } catch (Exception unused3) {
                            this.contentBackgroundColor = Color.parseColor("#f0f0f0");
                        }
                    }
                }
                c optJSONObject2 = cVar.optJSONObject("submitCTA");
                if (optJSONObject2 != null) {
                    CallToAction callToAction = new CallToAction(optJSONObject2.optString("id"), optJSONObject2.isNull("actionText") ? "Submit" : optJSONObject2.optString("actionText"), optJSONObject2.optString("actionLink"), false, false);
                    this.submitCTA = callToAction;
                    return;
                }
                CallToAction callToAction2 = new CallToAction(null, "Submit", null, false, false);
                this.submitCTA = callToAction2;
            }
        }

        public int getBackgroundColor() {
            return this.backgroundColor;
        }

        public int getContentBackgroundColor() {
            return this.contentBackgroundColor;
        }

        public String getContentMessage() {
            return this.contentMessage;
        }

        public int getContentTextColor() {
            return this.contentTextColor;
        }

        public String getContentTitle() {
            return this.contentTitle;
        }

        public String getIconUrl() {
            return this.iconUrl;
        }

        public String getImageUrl() {
            return this.imageUrl;
        }

        public int getRateScale() {
            return this.rateScale;
        }

        public int getRateValue() {
            return this.rateValue;
        }

        public CallToAction getSubmitCTA() {
            return this.submitCTA;
        }

        public void setRateValue(int i) {
            this.rateValue = i;
        }
    }

    public PushNotificationData(c cVar, Context context) {
        super(cVar, "system_tray", context);
        c cVar2 = null;
        this.bigNotificationData = !cVar.isNull("expandableDetails") ? cVar.optJSONObject("expandableDetails") : cVar2;
        this.callToActions = readCallToActions(cVar, context);
        this.accentColor = WebEngage.get().getWebEngageConfig().getAccentColor();
        this.smallIcon = WebEngage.get().getWebEngageConfig().getPushSmallIcon();
        if (this.smallIcon == -1) {
            this.smallIcon = context.getApplicationContext().getApplicationInfo().icon;
        }
        int pushLargeIcon = WebEngage.get().getWebEngageConfig().getPushLargeIcon();
        this.largeIcon = pushLargeIcon == -1 ? BitmapFactory.decodeResource(context.getApplicationContext().getResources(), context.getApplicationContext().getApplicationInfo().icon) : BitmapFactory.decodeResource(context.getApplicationContext().getResources(), pushLargeIcon);
        if (this.appName == null) {
            try {
                this.appName = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
            } catch (Exception e) {
                Logger.e("WebEngage", e.toString() + " loading app name");
            }
        }
        c cVar3 = this.bigNotificationData;
        if (cVar3 != null && !cVar3.isNull("style")) {
            this.style = this.bigNotificationData.optString("style");
            if ("BIG_TEXT".equalsIgnoreCase(this.style)) {
                this.bigTextStyle = new BigTextStyle(this.bigNotificationData);
            } else if ("BIG_PICTURE".equalsIgnoreCase(this.style)) {
                this.bigPictureStyle = new BigPictureStyle(this.bigNotificationData);
            } else if ("INBOX".equalsIgnoreCase(this.style)) {
                this.inboxStyle = new InboxStyle(this.bigNotificationData);
            } else if ("CAROUSEL_V1".equalsIgnoreCase(this.style)) {
                this.carouselV1 = new CarouselV1(this.bigNotificationData);
                this.callToActions.addAll(this.carouselV1.getCallToActions());
            } else if ("RATING_V1".equalsIgnoreCase(this.style)) {
                this.ratingV1 = new RatingV1(this.bigNotificationData);
                if (this.ratingV1.getSubmitCTA() != null) {
                    this.callToActions.add(this.ratingV1.getSubmitCTA());
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0065  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List<com.webengage.sdk.android.actions.render.CallToAction> readCallToActions(org.a.c r20, android.content.Context r21) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            java.lang.String r2 = "expandableDetails"
            boolean r3 = r1.isNull(r2)
            r4 = 0
            if (r3 == 0) goto L_0x000f
            r2 = r4
            goto L_0x0013
        L_0x000f:
            org.a.c r2 = r1.optJSONObject(r2)
        L_0x0013:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.lang.String r5 = "cta"
            boolean r6 = r1.isNull(r5)
            if (r6 == 0) goto L_0x0022
            r1 = r4
            goto L_0x0026
        L_0x0022:
            org.a.c r1 = r1.optJSONObject(r5)
        L_0x0026:
            r0.cta = r1
            org.a.c r1 = r0.cta
            java.lang.String r5 = "actionLink"
            java.lang.String r6 = "id"
            if (r1 == 0) goto L_0x004f
            boolean r1 = r1.isNull(r6)
            if (r1 != 0) goto L_0x0063
            com.webengage.sdk.android.actions.render.CallToAction r1 = new com.webengage.sdk.android.actions.render.CallToAction
            org.a.c r7 = r0.cta
            java.lang.String r8 = r7.optString(r6)
            java.lang.String r9 = r19.getContentText()
            org.a.c r7 = r0.cta
            java.lang.String r10 = r7.optString(r5)
            r11 = 1
            r12 = 1
            r7 = r1
            r7.<init>(r8, r9, r10, r11, r12)
            goto L_0x0060
        L_0x004f:
            com.webengage.sdk.android.actions.render.CallToAction r1 = new com.webengage.sdk.android.actions.render.CallToAction
            r14 = 0
            java.lang.String r15 = r19.getContentText()
            r16 = 0
            r17 = 1
            r18 = 1
            r13 = r1
            r13.<init>(r14, r15, r16, r17, r18)
        L_0x0060:
            r3.add(r1)
        L_0x0063:
            if (r2 == 0) goto L_0x0123
            java.lang.String r1 = "cta1"
            boolean r7 = r2.isNull(r1)
            if (r7 == 0) goto L_0x006f
            r1 = r4
            goto L_0x0073
        L_0x006f:
            org.a.c r1 = r2.optJSONObject(r1)
        L_0x0073:
            r0.cta = r1
            org.a.c r1 = r0.cta
            java.lang.String r7 = "actionText"
            if (r1 == 0) goto L_0x00a6
            boolean r1 = r1.isNull(r6)
            if (r1 != 0) goto L_0x00a6
            org.a.c r1 = r0.cta
            boolean r1 = r1.isNull(r7)
            if (r1 != 0) goto L_0x00a6
            com.webengage.sdk.android.actions.render.CallToAction r1 = new com.webengage.sdk.android.actions.render.CallToAction
            org.a.c r8 = r0.cta
            java.lang.String r9 = r8.optString(r6)
            org.a.c r8 = r0.cta
            java.lang.String r10 = r8.optString(r7)
            org.a.c r8 = r0.cta
            java.lang.String r11 = r8.optString(r5)
            r12 = 0
            r13 = 1
            r8 = r1
            r8.<init>(r9, r10, r11, r12, r13)
            r3.add(r1)
        L_0x00a6:
            java.lang.String r1 = "cta2"
            boolean r8 = r2.isNull(r1)
            if (r8 == 0) goto L_0x00b0
            r1 = r4
            goto L_0x00b4
        L_0x00b0:
            org.a.c r1 = r2.optJSONObject(r1)
        L_0x00b4:
            r0.cta = r1
            org.a.c r1 = r0.cta
            if (r1 == 0) goto L_0x00e5
            boolean r1 = r1.isNull(r6)
            if (r1 != 0) goto L_0x00e5
            org.a.c r1 = r0.cta
            boolean r1 = r1.isNull(r7)
            if (r1 != 0) goto L_0x00e5
            com.webengage.sdk.android.actions.render.CallToAction r1 = new com.webengage.sdk.android.actions.render.CallToAction
            org.a.c r8 = r0.cta
            java.lang.String r9 = r8.optString(r6)
            org.a.c r8 = r0.cta
            java.lang.String r10 = r8.optString(r7)
            org.a.c r8 = r0.cta
            java.lang.String r11 = r8.optString(r5)
            r12 = 0
            r13 = 1
            r8 = r1
            r8.<init>(r9, r10, r11, r12, r13)
            r3.add(r1)
        L_0x00e5:
            java.lang.String r1 = "cta3"
            boolean r8 = r2.isNull(r1)
            if (r8 == 0) goto L_0x00ee
            goto L_0x00f2
        L_0x00ee:
            org.a.c r4 = r2.optJSONObject(r1)
        L_0x00f2:
            r0.cta = r4
            org.a.c r1 = r0.cta
            if (r1 == 0) goto L_0x0123
            boolean r1 = r1.isNull(r6)
            if (r1 != 0) goto L_0x0123
            org.a.c r1 = r0.cta
            boolean r1 = r1.isNull(r7)
            if (r1 != 0) goto L_0x0123
            com.webengage.sdk.android.actions.render.CallToAction r1 = new com.webengage.sdk.android.actions.render.CallToAction
            org.a.c r2 = r0.cta
            java.lang.String r9 = r2.optString(r6)
            org.a.c r2 = r0.cta
            java.lang.String r10 = r2.optString(r7)
            org.a.c r2 = r0.cta
            java.lang.String r11 = r2.optString(r5)
            r12 = 0
            r13 = 1
            r8 = r1
            r8.<init>(r9, r10, r11, r12, r13)
            r3.add(r1)
        L_0x0123:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.render.PushNotificationData.readCallToActions(org.a.c, android.content.Context):java.util.List");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PushNotificationData)) {
            return false;
        }
        return getExperimentId().equals(((PushNotificationData) obj).getExperimentId());
    }

    public int getAccentColor() {
        return this.accentColor;
    }

    public List<CallToAction> getActions() {
        List<CallToAction> list = this.callToActions;
        ArrayList arrayList = null;
        if (list != null && list.size() > 0) {
            for (CallToAction next : this.callToActions) {
                if (next != null && !next.isPrimeAction() && next.isNative()) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                }
            }
        }
        return arrayList;
    }

    public String getAppName() {
        return this.appName;
    }

    public boolean getAutoExpand() {
        return this.autoExpand;
    }

    public BigPictureStyle getBigPictureStyleData() {
        return this.bigPictureStyle;
    }

    public BigTextStyle getBigTextStyleData() {
        return this.bigTextStyle;
    }

    public CallToAction getCallToActionById(String str) {
        List<CallToAction> list = this.callToActions;
        if (list != null && list.size() > 0 && str != null && !str.isEmpty()) {
            for (CallToAction next : this.callToActions) {
                if (next != null && str.equals(next.getId())) {
                    return next;
                }
            }
        }
        return null;
    }

    public List<CallToAction> getCallToActions() {
        return this.callToActions;
    }

    public CarouselV1 getCarouselV1Data() {
        return this.carouselV1;
    }

    public /* bridge */ /* synthetic */ String getChannelId() {
        return super.getChannelId();
    }

    public /* bridge */ /* synthetic */ String getContentText() {
        return super.getContentText();
    }

    public int getCurrentIndex() {
        return this.currentIndex;
    }

    public /* bridge */ /* synthetic */ Bundle getCustomData() {
        return super.getCustomData();
    }

    public /* bridge */ /* synthetic */ String getExperimentId() {
        return super.getExperimentId();
    }

    public InboxStyle getInboxStyleData() {
        return this.inboxStyle;
    }

    public Bitmap getLargeIcon() {
        return this.largeIcon;
    }

    public /* bridge */ /* synthetic */ int getLedColor() {
        return super.getLedColor();
    }

    public CallToAction getPrimeCallToAction() {
        List<CallToAction> list = this.callToActions;
        if (list != null && list.size() > 0) {
            for (CallToAction next : this.callToActions) {
                if (next != null && next.isPrimeAction()) {
                    return next;
                }
            }
        }
        return null;
    }

    public /* bridge */ /* synthetic */ int getPriority() {
        return super.getPriority();
    }

    public RatingV1 getRatingV1() {
        return this.ratingV1;
    }

    public int getSmallIcon() {
        return this.smallIcon;
    }

    public /* bridge */ /* synthetic */ Uri getSound() {
        return super.getSound();
    }

    public WebEngageConstant.STYLE getStyle() {
        try {
            return WebEngageConstant.STYLE.valueOf(this.style);
        } catch (Exception unused) {
            return null;
        }
    }

    public /* bridge */ /* synthetic */ String getTitle() {
        return super.getTitle();
    }

    public /* bridge */ /* synthetic */ String getVariationId() {
        return super.getVariationId();
    }

    public /* bridge */ /* synthetic */ boolean getVibrateFlag() {
        return super.getVibrateFlag();
    }

    public int hashCode() {
        return getExperimentId().hashCode();
    }

    public /* bridge */ /* synthetic */ boolean isAmplified() {
        return super.isAmplified();
    }

    public boolean isBigNotification() {
        return this.bigNotificationData != null;
    }

    public boolean isCustomRender() {
        Bundle customData = getCustomData();
        return customData != null && customData.containsKey("we_custom_render") && Boolean.parseBoolean(customData.getString("we_custom_render"));
    }

    public void setAccentColor(int i) {
        this.accentColor = i;
    }

    public void setAutoExpand(boolean z) {
        this.autoExpand = z;
    }

    public /* bridge */ /* synthetic */ void setChannelId(String str) {
        super.setChannelId(str);
    }

    public /* bridge */ /* synthetic */ void setContentText(String str) {
        super.setContentText(str);
    }

    public void setCurrentIndex(int i) {
        this.currentIndex = i;
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setCustomData(Bundle bundle) {
        super.setCustomData(bundle);
    }

    public void setLargerIcon(Bitmap bitmap) {
        this.largeIcon = bitmap;
    }

    public /* bridge */ /* synthetic */ void setLedLight(int i) {
        super.setLedLight(i);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setPriority(int i) {
        super.setPriority(i);
    }

    public /* bridge */ /* synthetic */ void setShouldRender(boolean z) {
        super.setShouldRender(z);
    }

    public void setSmallIcon(int i) {
        this.smallIcon = i;
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setSound(Uri uri) {
        super.setSound(uri);
    }

    public /* bridge */ /* synthetic */ void setTitle(String str) {
        super.setTitle(str);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setVibrateFlag(boolean z) {
        super.setVibrateFlag(z);
    }

    public /* bridge */ /* synthetic */ boolean shouldRender() {
        return super.shouldRender();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String property = System.getProperty("line.separator");
        sb.append(getClass().getName() + " Object { " + property);
        StringBuilder sb2 = new StringBuilder(" Experiment Id : ");
        sb2.append(getExperimentId());
        sb2.append(property);
        sb.append(sb2.toString());
        sb.append(" Variation Id : " + getVariationId() + property);
        sb.append(" Title : " + getTitle() + property);
        sb.append(" Message : " + getContentText() + property);
        if (getPrimeCallToAction() != null) {
            sb.append(" Main CTA : " + getPrimeCallToAction() + " ID : " + getPrimeCallToAction().getId() + property);
        }
        StringBuilder sb3 = new StringBuilder(" Custom Data : ");
        sb3.append(getCustomData() != null ? getCustomData().toString() : "null");
        sb3.append(property);
        sb.append(sb3.toString());
        if (this.bigNotificationData != null) {
            sb.append(" Expandable Details : " + this.bigNotificationData.toString() + property);
        }
        sb.append(" Amplified: " + isAmplified() + property);
        sb.append("}");
        return sb.toString();
    }
}
