package com.webengage.sdk.android.actions.render;

import android.content.Context;
import android.net.Uri;
import java.net.URLEncoder;
import java.util.List;
import org.eclipse.paho.a.a.w;

public class CallToAction {
    private String action = null;
    private String id = null;
    private boolean isNative = false;
    private boolean isPrime = false;
    private String text = null;
    private TYPE type = null;

    public enum TYPE {
        LAUNCH_ACTIVITY("start_activity"),
        LINK("open_url_in_browser");
        
        private String s;

        private TYPE(String str) {
            this.s = str;
        }

        public static TYPE valueFromString(String str) {
            try {
                if (LAUNCH_ACTIVITY.toString().equals(str)) {
                    return LAUNCH_ACTIVITY;
                }
                if (LINK.toString().equals(str)) {
                    return LINK;
                }
                return null;
            } catch (Exception unused) {
            }
        }

        public final String toString() {
            return this.s;
        }
    }

    public CallToAction(String str, String str2, String str3, boolean z, boolean z2) {
        this.id = str;
        this.text = str2;
        this.action = str3;
        this.isPrime = z;
        this.isNative = z2;
        String str4 = this.action;
        if (str4 != null) {
            List<String> pathSegments = Uri.parse(str4).getPathSegments();
            if (pathSegments.size() > 0) {
                this.type = TYPE.valueFromString(pathSegments.get(0));
            }
        }
    }

    public String getAction() {
        String str = this.action;
        if (str != null) {
            List<String> pathSegments = Uri.parse(str).getPathSegments();
            if (pathSegments.size() > 1) {
                return pathSegments.get(1);
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public String getFullActionUri() {
        return this.action;
    }

    public String getId() {
        return this.id;
    }

    public String getText() {
        return this.text;
    }

    public TYPE getType() {
        return this.type;
    }

    public boolean isNative() {
        return this.isNative;
    }

    public boolean isPrimeAction() {
        return this.isPrime;
    }

    public void setAction(String str, TYPE type2, Context context) {
        try {
            this.action = "webengage://" + context.getPackageName() + w.TOPIC_LEVEL_SEPARATOR + type2.toString() + w.TOPIC_LEVEL_SEPARATOR + URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
            this.action = "webengage://" + context.getPackageName() + w.TOPIC_LEVEL_SEPARATOR + TYPE.LAUNCH_ACTIVITY.toString() + w.TOPIC_LEVEL_SEPARATOR + context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()).getComponent().getClassName();
        }
        this.type = type2;
    }

    public void setText(String str) {
        this.text = str;
    }
}
