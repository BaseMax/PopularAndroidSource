package com.mapbox.mapboxsdk;

import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.mapbox.android.accounts.v1.MapboxAccounts;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.log.Logger;

class AccountsManager {
    private static final String PREFERENCE_TIMESTAMP = "com.mapbox.mapboxsdk.accounts.timestamp";
    private static final String PREFERENCE_USER_ID = "com.mapbox.mapboxsdk.accounts.userid";
    private static final String TAG = "Mbgl-AccountsManager";
    private boolean isManaged;
    private SharedPreferences sharedPreferences;
    private String skuToken;
    private long timestamp;

    static boolean isExpired(long j, long j2) {
        return j - j2 > 3600000;
    }

    AccountsManager() {
        this.isManaged = isSkuTokenManaged();
        initialize();
    }

    AccountsManager(SharedPreferences sharedPreferences2, boolean z) {
        this.sharedPreferences = sharedPreferences2;
        this.isManaged = z;
        initialize();
    }

    private void initialize() {
        retrieveSkuTokenAndTimestamp();
        if (this.isManaged) {
            validateRotation(validateUserId());
        }
    }

    private boolean isSkuTokenManaged() {
        try {
            ApplicationInfo retrieveApplicationInfo = retrieveApplicationInfo();
            if (retrieveApplicationInfo.metaData != null) {
                return retrieveApplicationInfo.metaData.getBoolean(MapboxConstants.KEY_META_DATA_MANAGE_SKU_TOKEN, true);
            }
            return true;
        } catch (Exception e) {
            Logger.e(TAG, "Failed to read the package metadata: ", e);
            return true;
        }
    }

    private ApplicationInfo retrieveApplicationInfo() throws PackageManager.NameNotFoundException {
        return Mapbox.getApplicationContext().getPackageManager().getApplicationInfo(Mapbox.getApplicationContext().getPackageName(), 128);
    }

    private void retrieveSkuTokenAndTimestamp() {
        SharedPreferences sharedPreferences2 = getSharedPreferences();
        this.skuToken = sharedPreferences2.getString(MapboxConstants.KEY_PREFERENCE_SKU_TOKEN, "");
        this.timestamp = sharedPreferences2.getLong(PREFERENCE_TIMESTAMP, 0);
    }

    private String validateUserId() {
        String string = getSharedPreferences().getString(PREFERENCE_USER_ID, "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String generateUserId = generateUserId();
        SharedPreferences.Editor edit = getSharedPreferences().edit();
        edit.putString(PREFERENCE_USER_ID, generateUserId);
        edit.apply();
        return generateUserId;
    }

    private void validateRotation(String str) {
        if (TextUtils.isEmpty(this.skuToken) || this.timestamp == 0) {
            this.skuToken = generateSkuToken(str);
            this.timestamp = persistRotation(this.skuToken);
        }
    }

    /* access modifiers changed from: package-private */
    public String getSkuToken() {
        if (!this.isManaged) {
            this.skuToken = getSharedPreferences().getString(MapboxConstants.KEY_PREFERENCE_SKU_TOKEN, "");
        } else if (isExpired()) {
            this.skuToken = generateSkuToken(getSharedPreferences().getString(PREFERENCE_USER_ID, ""));
            this.timestamp = persistRotation(this.skuToken);
        }
        return this.skuToken;
    }

    private boolean isExpired() {
        return isExpired(getNow(), this.timestamp);
    }

    private long persistRotation(String str) {
        long now = getNow();
        SharedPreferences.Editor edit = getSharedPreferences().edit();
        edit.putLong(PREFERENCE_TIMESTAMP, now);
        edit.putString(MapboxConstants.KEY_PREFERENCE_SKU_TOKEN, str);
        edit.apply();
        return now;
    }

    private SharedPreferences getSharedPreferences() {
        if (this.sharedPreferences == null) {
            this.sharedPreferences = Mapbox.getApplicationContext().getSharedPreferences(MapboxConstants.MAPBOX_SHARED_PREFERENCES, 0);
        }
        return this.sharedPreferences;
    }

    static long getNow() {
        return System.currentTimeMillis();
    }

    private String generateUserId() {
        return MapboxAccounts.obtainEndUserId();
    }

    private String generateSkuToken(String str) {
        return MapboxAccounts.obtainMapsSkuUserToken(str);
    }
}
