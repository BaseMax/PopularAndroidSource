package com.webengage.sdk.android.bridge;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.webengage.sdk.android.Analytics;
import com.webengage.sdk.android.Channel;
import com.webengage.sdk.android.Logger;
import com.webengage.sdk.android.UserProfile;
import com.webengage.sdk.android.WebEngage;
import com.webengage.sdk.android.utils.DataType;
import com.webengage.sdk.android.utils.Gender;
import java.util.HashMap;
import java.util.Map;

public class WebEngageMobileBridge {
    private static final String BIRTH_DATE = "we_birth_date";
    public static final String BRIDGE_NAME = "__WEBENGAGE_MOBILE_BRIDGE__";
    private static final String COMPANY = "we_company";
    private static final String EMAIL = "we_email";
    private static final String EMAIL_OPT_IN = "we_email_opt_in";
    private static final String FIRST_NAME = "we_first_name";
    private static final String GENDER = "we_gender";
    private static final String HASHED_EMAIL = "we_hashed_email";
    private static final String HASHED_PHONE = "we_hashed_phone";
    private static final String LAST_NAME = "we_last_name";
    private static final String PHONE = "we_phone";
    private static final String PUSH_OPT_IN = "we_push_opt_in";
    private static final String SMS_OPT_IN = "we_sms_opt_in";
    private static final String TAG = "WebEngageMobileBridge";
    Context applicationContext = null;

    public WebEngageMobileBridge(Context context) {
        this.applicationContext = context.getApplicationContext();
    }

    @JavascriptInterface
    public void login(String str) {
        Logger.d(TAG, "Bridge login called: ".concat(String.valueOf(str)));
        WebEngage.get().user().login(str);
    }

    @JavascriptInterface
    public void logout() {
        Logger.d(TAG, "Bridge logout called");
        WebEngage.get().user().logout();
    }

    @JavascriptInterface
    public void screen(String str, String str2) {
        Logger.d(TAG, "Bridge screen called screenName: " + str + ", screenData: " + str2);
        Map map = null;
        if (str2 != null) {
            try {
                map = (Map) DataType.convert(str2, DataType.MAP, false);
            } catch (Exception e) {
                Logger.e(TAG, e.toString());
            }
        }
        if (str != null) {
            Analytics analytics = WebEngage.get().analytics();
            if (map != null) {
                analytics.screenNavigated(str, map);
            } else {
                analytics.screenNavigated(str);
            }
        } else {
            if (map != null) {
                WebEngage.get().analytics().setScreenData(map);
            }
        }
    }

    @JavascriptInterface
    public void setAttribute(String str) {
        Map map;
        Channel channel;
        boolean booleanValue;
        Logger.d(TAG, "Bridge attribute called: ".concat(String.valueOf(str)));
        try {
            map = (Map) DataType.convert(str, DataType.MAP, false);
        } catch (Exception e) {
            Logger.e(TAG, e.toString());
            map = null;
        }
        if (map != null) {
            try {
                if (map.size() > 0) {
                    HashMap hashMap = new HashMap();
                    UserProfile.Builder builder = new UserProfile.Builder();
                    for (Map.Entry entry : map.entrySet()) {
                        String str2 = (String) entry.getKey();
                        Object value = entry.getValue();
                        if (value != null) {
                            if (FIRST_NAME.equals(str2) && (value instanceof String)) {
                                builder.setFirstName((String) value);
                            } else if (LAST_NAME.equals(str2) && (value instanceof String)) {
                                builder.setLastName((String) value);
                            } else if (EMAIL.equals(str2) && (value instanceof String)) {
                                builder.setEmail((String) value);
                            } else if (BIRTH_DATE.equals(str2) && (value instanceof String)) {
                                builder.setBirthDate((String) value);
                            } else if (PHONE.equals(str2) && (value instanceof String)) {
                                builder.setPhoneNumber((String) value);
                            } else if (GENDER.equals(str2) && (value instanceof String)) {
                                builder.setGender(Gender.valueByString((String) value));
                            } else if (COMPANY.equals(str2) && (value instanceof String)) {
                                builder.setCompany((String) value);
                            } else if (HASHED_EMAIL.equals(str2) && (value instanceof String)) {
                                builder.setHashedEmail((String) value);
                            } else if (!HASHED_PHONE.equals(str2) || !(value instanceof String)) {
                                if (PUSH_OPT_IN.equals(str2)) {
                                    if ("true".equals(value.toString()) || "false".equals(value.toString())) {
                                        channel = Channel.PUSH;
                                        booleanValue = Boolean.valueOf(value.toString()).booleanValue();
                                    }
                                } else if (SMS_OPT_IN.equals(str2)) {
                                    if ("true".equals(value.toString()) || "false".equals(value.toString())) {
                                        channel = Channel.SMS;
                                        booleanValue = Boolean.valueOf(value.toString()).booleanValue();
                                    }
                                } else if (!EMAIL_OPT_IN.equals(str2)) {
                                    hashMap.put(str2, value);
                                } else if ("true".equals(value.toString()) || "false".equals(value.toString())) {
                                    channel = Channel.EMAIL;
                                    booleanValue = Boolean.valueOf(value.toString()).booleanValue();
                                }
                                builder.setOptIn(channel, booleanValue);
                            } else {
                                builder.setHashedPhoneNumber((String) value);
                            }
                        }
                    }
                    if (hashMap.size() > 0) {
                        WebEngage.get().user().setAttributes(hashMap);
                    }
                    WebEngage.get().user().setUserProfile(builder.build());
                }
            } catch (Exception e2) {
                Logger.e(TAG, e2.toString());
            }
        }
    }

    @JavascriptInterface
    public void track(String str, String str2) {
        Logger.d(TAG, "Bridge track called eventName: " + str + ", eventData: " + str2);
        Map map = null;
        if (str2 != null) {
            try {
                map = (Map) DataType.convert(str2, DataType.MAP, false);
            } catch (Exception e) {
                Logger.e(TAG, e.toString());
            }
        }
        if (str != null) {
            Analytics analytics = WebEngage.get().analytics();
            if (map != null) {
                analytics.track(str, (Map<String, ? extends Object>) map);
                return;
            }
            analytics.track(str);
        }
    }
}
