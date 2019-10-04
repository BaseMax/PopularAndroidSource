package com.webengage.sdk.android;

import com.webengage.sdk.android.utils.Gender;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public class UserProfile {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f5321a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Object> f5322b;

    public static class Builder {
        /* access modifiers changed from: private */
        public Map<String, Object> locationData;
        /* access modifiers changed from: private */
        public Map<String, Object> userData;

        public Builder() {
            this.userData = null;
            this.locationData = null;
            this.userData = new HashMap();
            this.locationData = new HashMap();
        }

        public UserProfile build() {
            return new UserProfile(this);
        }

        public Builder setBirthDate(Integer num, Integer num2, Integer num3) {
            try {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
                gregorianCalendar.clear();
                gregorianCalendar.set(num.intValue(), num2.intValue() - 1, num3.intValue());
                this.userData.put(am.BIRTH_DATE.toString(), gregorianCalendar.getTime());
            } catch (Exception unused) {
            }
            return this;
        }

        public Builder setBirthDate(String str) {
            if (str != null && !str.isEmpty()) {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                try {
                    this.userData.put(am.BIRTH_DATE.toString(), simpleDateFormat.parse(str));
                } catch (ParseException unused) {
                }
            }
            return this;
        }

        public Builder setCompany(String str) {
            this.userData.put(am.COMPANY.toString(), str);
            return this;
        }

        public Builder setEmail(String str) {
            this.userData.put(am.EMAIL.toString(), str);
            return this;
        }

        public Builder setFirstName(String str) {
            this.userData.put(am.FIRST_NAME.toString(), str);
            return this;
        }

        public Builder setGender(Gender gender) {
            this.userData.put(am.GENDER.toString(), gender.toString());
            return this;
        }

        public Builder setHashedEmail(String str) {
            this.userData.put(am.HASHED_EMAIL.toString(), str);
            return this;
        }

        public Builder setHashedPhoneNumber(String str) {
            this.userData.put(am.HASHED_PHONE.toString(), str);
            return this;
        }

        public Builder setLastName(String str) {
            this.userData.put(am.LAST_NAME.toString(), str);
            return this;
        }

        public Builder setLocation(double d, double d2) {
            this.locationData.put("latitude", Double.valueOf(d));
            this.locationData.put("longitude", Double.valueOf(d2));
            return this;
        }

        public Builder setOptIn(Channel channel, boolean z) {
            this.userData.put(channel.toString(), Boolean.valueOf(z));
            return this;
        }

        public Builder setPhoneNumber(String str) {
            this.userData.put(am.PHONE.toString(), str);
            return this;
        }
    }

    private UserProfile(Builder builder) {
        this.f5321a = null;
        this.f5322b = null;
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : builder.userData.entrySet()) {
            if (entry.getValue() == null) {
                Logger.e("WebEngage", "Illegal Argument : " + ((String) entry.getKey()));
                Logger.e("WebEngage", "Rejecting attribute : " + ((String) entry.getKey()));
            } else {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        this.f5321a = hashMap;
        this.f5322b = builder.locationData;
    }

    /* access modifiers changed from: package-private */
    public Map<String, Object> a() {
        return this.f5321a;
    }

    /* access modifiers changed from: package-private */
    public Map<String, Object> b() {
        return this.f5322b;
    }
}
