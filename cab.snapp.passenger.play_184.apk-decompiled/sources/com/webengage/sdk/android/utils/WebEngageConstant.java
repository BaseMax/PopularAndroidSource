package com.webengage.sdk.android.utils;

import android.util.Base64;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.WebEngage;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.paho.a.a.w;

public class WebEngageConstant {

    /* renamed from: a  reason: collision with root package name */
    public static final int f5566a = "WebEngage".hashCode();

    /* renamed from: b  reason: collision with root package name */
    public static final List<b> f5567b;
    public static final String[] c = {com.google.android.gms.analytics.a.c.ACTION_VIEW, "click", "close", "view_session", "close_session"};
    public static final Map<String, Integer> d;

    public enum STYLE {
        BIG_PICTURE,
        BIG_TEXT,
        INBOX,
        CAROUSEL_V1,
        RATING_V1
    }

    public enum a {
        NOTIFICATION,
        SURVEY,
        PUSH
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f5570a;

        /* renamed from: b  reason: collision with root package name */
        public String f5571b;
        public a c;

        public b() {
            this.f5570a = "";
            this.f5571b = "";
            this.c = null;
        }

        public b(String str, String str2, a aVar) {
            this.f5570a = str;
            this.f5571b = str2;
            this.c = aVar;
        }
    }

    public enum c {
        PAGE_RULE("pageRuleCode"),
        SESSION_RULE("sessionRuleCode"),
        EVENT_RULE("eventRuleCode");
        
        private String d;

        private c(String str) {
            this.d = str;
        }

        public final String toString() {
            return this.d;
        }
    }

    public enum d {
        UPLOAD_EVENTS_URL("https://c.webengage.com/m2.jpg", "https://c.webengage.io/m2.jpg", "https://c.in.webengage.com/m2.jpg"),
        EXCEPTION_END_POINT("https://c.webengage.com/e.jpg", "https://c.webengage.io/e.jpg", "https://c.in.webengage.com/e.jpg"),
        USER_PROFILE_BASE("https://c.webengage.com/upf.js", "https://c.webengage.io/upf.js", "https://c.in.webengage.com/upf.js"),
        JOURNEY_CONTEXT_BASE("https://c.webengage.com/jcx.js", "https://c.webengage.io/jcx.js", "https://c.in.webengage.com/jcx.js"),
        RESOURCE_BASE("https://wsdk-files.webengage.com/", "https://s3.amazonaws.com/webengage-zfiles-gc/", "https://wsdk-files.in.webengage.com/"),
        PERSONALISATION_BASE("https://p.webengage.com", "https://p.webengage.io", "https://p.in.webengage.com"),
        AMPLIFY_PUSH_BASE("https://c.webengage.com/push-amp", "https://c.webengage.io/push-amp", "https://c.in.webengage.com/push-amp");
        
        private String[] h;

        private d(String... strArr) {
            this.h = strArr;
        }

        public static String a(String str) {
            return RESOURCE_BASE.toString() + "webengage/" + str + "/android/v4.js";
        }

        public static String a(String str, String str2) {
            return str + "js/notification-layout-" + str2 + ".js";
        }

        public static String a(String str, String str2, String str3) {
            StringBuilder sb = new StringBuilder();
            sb.append(USER_PROFILE_BASE.toString());
            sb.append("?licenseCode=");
            sb.append(str3);
            sb.append("&luid=");
            sb.append(str);
            if (str2 != null && !str2.isEmpty()) {
                try {
                    String encode = URLEncoder.encode(str2, "UTF-8");
                    sb.append("&cuid=");
                    sb.append(encode);
                } catch (UnsupportedEncodingException unused) {
                }
            }
            return sb.toString();
        }

        public static String a(String str, String str2, String str3, String str4) {
            StringBuilder sb = new StringBuilder();
            sb.append(PERSONALISATION_BASE.toString());
            sb.append("/users/");
            sb.append(str);
            sb.append(w.TOPIC_LEVEL_SEPARATOR);
            sb.append(str2);
            sb.append("/templates/NOTIFICATION-");
            sb.append(str3);
            if (str4 != null && !str4.isEmpty()) {
                try {
                    String encode = URLEncoder.encode(str4, "UTF-8");
                    sb.append("?cuid=");
                    sb.append(encode);
                } catch (UnsupportedEncodingException unused) {
                }
            }
            return sb.toString();
        }

        public static String b(String str, String str2, String str3) {
            String str4;
            StringBuilder sb = new StringBuilder(AMPLIFY_PUSH_BASE.toString());
            sb.append("?sdkId=2");
            sb.append("&licenseCode=");
            sb.append(str);
            sb.append("&luid=");
            sb.append(str2);
            if (!k.b(str3)) {
                try {
                    String encode = URLEncoder.encode(str3, "UTF-8");
                    sb.append("&cuid=");
                    sb.append(encode);
                } catch (UnsupportedEncodingException e) {
                    Logger.e("WebEngage", "Exception while url-encoding cuid: ".concat(String.valueOf(str3)), e);
                }
            }
            try {
                String a2 = k.a();
                String encode2 = URLEncoder.encode(String.format("%s:%s", new Object[]{a2.substring(0, 3), a2.substring(3)}), "UTF-8");
                sb.append("&timezone=");
                sb.append(encode2);
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                str4 = "Exception while url-encoding timezone in push-amplify url.";
            } catch (Exception e3) {
                e = e3;
                str4 = "Exception while adding timezone in push-amplify url.";
            }
            sb.append("&sdkVersion=31203.0");
            return sb.toString();
            Logger.e("WebEngage", str4, e);
            sb.append("&sdkVersion=31203.0");
            return sb.toString();
        }

        public static String b(String str, String str2, String str3, String str4) {
            StringBuilder sb = new StringBuilder();
            sb.append(JOURNEY_CONTEXT_BASE.toString());
            sb.append("?licenseCode=");
            sb.append(str3);
            sb.append("&luid=");
            sb.append(str);
            if (str2 != null && !str2.isEmpty()) {
                try {
                    String encode = URLEncoder.encode(str2, "UTF-8");
                    sb.append("&cuid=");
                    sb.append(encode);
                } catch (UnsupportedEncodingException unused) {
                }
            }
            if (str4 != null) {
                try {
                    String encodeToString = Base64.encodeToString(str4.getBytes(), 0);
                    sb.append("&upfc2=");
                    sb.append(URLEncoder.encode(encodeToString, "UTF-8"));
                } catch (UnsupportedEncodingException unused2) {
                } catch (AssertionError unused3) {
                    Logger.e("WebEngage", " Error while encoding upfc to base 64");
                }
            }
            return sb.toString();
        }

        public final String toString() {
            String environment = WebEngage.get().getWebEngageConfig().getEnvironment();
            if ("aws".equals(environment)) {
                return this.h[0];
            }
            if ("gce".equals(environment)) {
                return this.h[1];
            }
            if ("in".equals(environment)) {
                return this.h[2];
            }
            return null;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f5567b = arrayList;
        arrayList.add(new b("notificationRuleList", "notificationEncId", a.NOTIFICATION));
        f5567b.add(new b("surveyRuleList", "surveyEncId", a.SURVEY));
        HashMap hashMap = new HashMap();
        d = hashMap;
        hashMap.put("push_notification_click", 2);
        d.put("push_notification_close", 2);
        d.put("push_notification_item_view", 2);
        d.put("push_notification_rating_submitted", 2);
        d.put("push_notification_rerender", 2);
        d.put("push_notification_received", 2);
        d.put("push_notification_view", 2);
        d.put("geofence_transition", 2);
        d.put("gcm_registered", 2);
        d.put("app_upgraded", 2);
        d.put("app_installed", 2);
    }
}
