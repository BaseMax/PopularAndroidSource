package com.webengage.sdk.android;

import com.webengage.sdk.android.actions.database.o;

public enum am {
    FIRST_NAME(o.FORCE_UPDATE),
    LAST_NAME(o.FORCE_UPDATE),
    EMAIL(o.FORCE_UPDATE),
    HASHED_EMAIL(o.FORCE_UPDATE),
    BIRTH_DATE(o.FORCE_UPDATE),
    GENDER(o.FORCE_UPDATE),
    PHONE(o.FORCE_UPDATE),
    HASHED_PHONE(o.FORCE_UPDATE),
    COMPANY(o.FORCE_UPDATE),
    TIME_SPENT(o.FORCE_UPDATE),
    PUSH_OPT_IN(o.FORCE_UPDATE),
    SMS_OPT_IN(o.FORCE_UPDATE),
    EMAIL_OPT_IN(o.FORCE_UPDATE),
    LATITUDE(o.FORCE_UPDATE),
    LONGITUDE(o.FORCE_UPDATE),
    CITY(o.FORCE_UPDATE),
    COUNTRY(o.FORCE_UPDATE),
    REGION(o.FORCE_UPDATE),
    POSTAL_CODE(o.FORCE_UPDATE),
    LOCALITY(o.FORCE_UPDATE),
    LAST_LOGGED_IN(o.FORCE_UPDATE),
    FIRST_LOGGED_IN(o.FORCE_UPDATE),
    LAST_SEEN(o.FORCE_UPDATE),
    CREATED_AT(o.FORCE_UPDATE),
    REFERRER_TYPE(o.FORCE_UPDATE),
    SESSION_COUNT(o.FORCE_UPDATE),
    CAMPAIGN_ID(o.FORCE_UPDATE),
    CAMPAIGN_SOURCE(o.FORCE_UPDATE),
    CAMPAIGN_MEDIUM(o.FORCE_UPDATE),
    CAMPAIGN_TERM(o.FORCE_UPDATE),
    CAMPAIGN_CONTENT(o.FORCE_UPDATE),
    CAMPAIGN_GCLID(o.FORCE_UPDATE),
    REFERRER(o.FORCE_UPDATE);
    
    private o H;

    private am(o oVar) {
        this.H = oVar;
    }

    public static am a(String str) {
        try {
            return valueOf(str.toUpperCase());
        } catch (Exception unused) {
            return null;
        }
    }

    public final o a() {
        return this.H;
    }

    public final String toString() {
        return name().toLowerCase();
    }
}
