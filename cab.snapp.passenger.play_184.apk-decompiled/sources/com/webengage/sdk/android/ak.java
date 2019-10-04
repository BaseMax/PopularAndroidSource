package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.utils.Gender;
import com.webengage.sdk.android.utils.k;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

class ak implements User {

    /* renamed from: a  reason: collision with root package name */
    Context f5502a = null;

    /* renamed from: b  reason: collision with root package name */
    Analytics f5503b = null;

    ak(Context context, Analytics analytics) {
        this.f5502a = context.getApplicationContext();
        this.f5503b = analytics;
    }

    private boolean a(Object obj, String str) {
        if (obj != null) {
            return true;
        }
        Logger.e("WebEngage", "Found user attribute value as null");
        Logger.e("WebEngage", "Rejecting user attribute : ".concat(String.valueOf(str)));
        return false;
    }

    private boolean a(String str) {
        String valueOf;
        String str2;
        if (str == null || str.isEmpty()) {
            Logger.e("WebEngage", "Attribute name is Invalid");
            valueOf = String.valueOf(str);
            str2 = "Rejecting  user attribute : ";
        } else if (!str.startsWith("we_")) {
            return true;
        } else {
            Logger.e("WebEngage", "Found prefix \"we_\" on custom attribute name : ".concat(String.valueOf(str)));
            valueOf = String.valueOf(str);
            str2 = "Rejecting user attribute : ";
        }
        Logger.e("WebEngage", str2.concat(valueOf));
        return false;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        String uuid = new UUID(System.currentTimeMillis(), UUID.randomUUID().getLeastSignificantBits()).toString();
        Logger.d("WebEngage", "New luid: ".concat(String.valueOf(uuid)));
        this.f5503b.c().c(uuid);
        i.a(this.f5502a).onAnonymousIdChanged(this.f5502a, uuid);
    }

    public void deleteAttribute(String str) {
        if (a(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, null);
            this.f5503b.a(k.a("user_delete_attributes", null, hashMap, null, this.f5502a));
        }
    }

    public void deleteAttributes(List<String> list) {
        if (list == null) {
            Logger.e("WebEngage", "Attribute list is Invalid");
            return;
        }
        HashMap hashMap = new HashMap();
        for (String next : list) {
            if (a(next)) {
                hashMap.put(next, null);
            }
        }
        this.f5503b.a(k.a("user_delete_attributes", null, hashMap, null, this.f5502a));
    }

    public void loggedIn(String str) {
        if (str == null || str.isEmpty()) {
            Logger.e("WebEngage", "ILLEGAL ARGUMENT : User Identifier");
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("cuid", k.a(str, 100));
        this.f5503b.a(k.a("user_logged_in", null, null, hashMap, this.f5502a));
    }

    public void loggedOut() {
        this.f5503b.a(k.a("user_logged_out", null, null, null, this.f5502a));
    }

    public void login(String str) {
        loggedIn(str);
    }

    public void logout() {
        loggedOut();
    }

    public void setAttribute(String str, Boolean bool) {
        if (a(str) && a(bool, str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, bool);
            this.f5503b.a(k.a("user_update", null, hashMap, null, this.f5502a));
        }
    }

    public void setAttribute(String str, Number number) {
        if (a(str) && a(number, str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, number);
            this.f5503b.a(k.a("user_update", null, hashMap, null, this.f5502a));
        }
    }

    public void setAttribute(String str, String str2) {
        if (a(str) && a(str2, str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, str2);
            this.f5503b.a(k.a("user_update", null, hashMap, null, this.f5502a));
        }
    }

    public void setAttribute(String str, Date date) {
        if (a(str) && a(date, str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, date);
            this.f5503b.a(k.a("user_update", null, hashMap, null, this.f5502a));
        }
    }

    public void setAttribute(String str, List<? extends Object> list) {
        if (a(str) && a(list, str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(str, list);
            this.f5503b.a(k.a("user_update", null, hashMap, null, this.f5502a));
        }
    }

    public void setAttributes(Map<String, ? extends Object> map) {
        if (map == null || map.size() == 0) {
            Logger.e("WebEngage", "ILLEGAL ARGUMENT : attributes");
            return;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            Object value = next.getValue();
            if (a(str) && a(value, str)) {
                hashMap.put(str, value);
            }
        }
        this.f5503b.a(k.a("user_update", null, hashMap, null, this.f5502a));
    }

    public void setBirthDate(Integer num, Integer num2, Integer num3) {
        if (a(num, am.BIRTH_DATE.toString()) && a(num2, am.BIRTH_DATE.toString()) && a(num3, am.BIRTH_DATE.toString())) {
            try {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
                gregorianCalendar.clear();
                gregorianCalendar.set(num.intValue(), num2.intValue() - 1, num3.intValue());
                Date time = gregorianCalendar.getTime();
                HashMap hashMap = new HashMap();
                hashMap.put(am.BIRTH_DATE.toString(), time);
                this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
            } catch (Exception unused) {
            }
        }
    }

    public void setBirthDate(String str) {
        if (str != null && !str.isEmpty()) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            try {
                Date parse = simpleDateFormat.parse(str);
                HashMap hashMap = new HashMap();
                hashMap.put(am.BIRTH_DATE.toString(), parse);
                this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
            } catch (ParseException unused) {
            }
        }
    }

    public void setCompany(String str) {
        if (a(str, am.COMPANY.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.COMPANY.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setEmail(String str) {
        if (a(str, am.EMAIL.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.EMAIL.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setFirstName(String str) {
        if (a(str, am.FIRST_NAME.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.FIRST_NAME.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setGender(Gender gender) {
        if (a(gender, am.GENDER.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.GENDER.toString(), gender.toString());
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setHashedEmail(String str) {
        if (a(str, am.HASHED_EMAIL.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.HASHED_EMAIL.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setHashedPhoneNumber(String str) {
        if (a(str, am.HASHED_PHONE.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.HASHED_PHONE.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setLastName(String str) {
        if (a(str, am.LAST_NAME.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.LAST_NAME.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setLocation(double d, double d2) {
        HashMap hashMap = new HashMap();
        hashMap.put("latitude", Double.valueOf(d));
        hashMap.put("longitude", Double.valueOf(d2));
        this.f5503b.a(k.a("user_update_geo_info", hashMap, null, null, this.f5502a));
    }

    public void setOptIn(Channel channel, boolean z) {
        if (a(channel, Channel.class.getSimpleName())) {
            HashMap hashMap = new HashMap();
            hashMap.put(channel.toString(), Boolean.valueOf(z));
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setPhoneNumber(String str) {
        if (a(str, am.PHONE.toString())) {
            HashMap hashMap = new HashMap();
            hashMap.put(am.PHONE.toString(), str);
            this.f5503b.a(k.a("user_update", hashMap, null, null, this.f5502a));
        }
    }

    public void setUserProfile(UserProfile userProfile) {
        if (userProfile != null) {
            if (userProfile.a() != null && userProfile.a().size() > 0) {
                this.f5503b.a(k.a("user_update", userProfile.a(), null, null, this.f5502a));
            }
            if (userProfile.b() != null && userProfile.b().size() > 1) {
                setLocation(((Double) userProfile.b().get("latitude")).doubleValue(), ((Double) userProfile.b().get("longitude")).doubleValue());
            }
        }
    }
}
