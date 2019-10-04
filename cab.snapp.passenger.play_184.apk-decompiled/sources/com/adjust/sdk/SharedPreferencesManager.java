package com.adjust.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import org.a.a;
import org.a.b;

public class SharedPreferencesManager {
    private static final int INDEX_CLICK_TIME = 1;
    private static final int INDEX_IS_SENDING = 2;
    private static final int INDEX_RAW_REFERRER = 0;
    private static final String PREFS_KEY_INSTALL_TRACKED = "install_tracked";
    private static final String PREFS_KEY_PUSH_TOKEN = "push_token";
    private static final String PREFS_KEY_RAW_REFERRERS = "raw_referrers";
    private static final String PREFS_NAME = "adjust_preferences";
    private final SharedPreferences sharedPreferences;

    public SharedPreferencesManager(Context context) {
        this.sharedPreferences = context.getSharedPreferences(PREFS_NAME, 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002a, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void saveRawReferrer(java.lang.String r4, long r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            org.a.a r0 = r3.getRawReferrerArray()     // Catch:{ b -> 0x0029, all -> 0x0026 }
            org.a.a r1 = r3.getRawReferrer(r4, r5)     // Catch:{ b -> 0x0029, all -> 0x0026 }
            if (r1 == 0) goto L_0x000d
            monitor-exit(r3)
            return
        L_0x000d:
            org.a.a r1 = new org.a.a     // Catch:{ b -> 0x0029, all -> 0x0026 }
            r1.<init>()     // Catch:{ b -> 0x0029, all -> 0x0026 }
            r2 = 0
            r1.put((int) r2, (java.lang.Object) r4)     // Catch:{ b -> 0x0029, all -> 0x0026 }
            r4 = 1
            r1.put((int) r4, (long) r5)     // Catch:{ b -> 0x0029, all -> 0x0026 }
            r4 = 2
            r1.put((int) r4, (int) r2)     // Catch:{ b -> 0x0029, all -> 0x0026 }
            r0.put((java.lang.Object) r1)     // Catch:{ b -> 0x0029, all -> 0x0026 }
            r3.saveRawReferrerArray(r0)     // Catch:{ b -> 0x0029, all -> 0x0026 }
            monitor-exit(r3)
            return
        L_0x0026:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        L_0x0029:
            monitor-exit(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.saveRawReferrer(java.lang.String, long):void");
    }

    public synchronized void saveRawReferrerArray(a aVar) {
        saveString(PREFS_KEY_RAW_REFERRERS, aVar.toString());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x003d, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void removeRawReferrer(java.lang.String r3, long r4) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 == 0) goto L_0x003c
            int r0 = r3.length()     // Catch:{ all -> 0x0039 }
            if (r0 != 0) goto L_0x000a
            goto L_0x003c
        L_0x000a:
            int r3 = r2.getRawReferrerIndex(r3, r4)     // Catch:{ all -> 0x0039 }
            if (r3 >= 0) goto L_0x0012
            monitor-exit(r2)
            return
        L_0x0012:
            org.a.a r4 = r2.getRawReferrerArray()     // Catch:{ all -> 0x0039 }
            org.a.a r5 = new org.a.a     // Catch:{ all -> 0x0039 }
            r5.<init>()     // Catch:{ all -> 0x0039 }
            r0 = 0
        L_0x001c:
            int r1 = r4.length()     // Catch:{ all -> 0x0039 }
            if (r0 >= r1) goto L_0x002e
            if (r0 == r3) goto L_0x002b
            org.a.a r1 = r4.getJSONArray(r0)     // Catch:{ b -> 0x002b }
            r5.put((java.lang.Object) r1)     // Catch:{ b -> 0x002b }
        L_0x002b:
            int r0 = r0 + 1
            goto L_0x001c
        L_0x002e:
            java.lang.String r3 = "raw_referrers"
            java.lang.String r4 = r5.toString()     // Catch:{ all -> 0x0039 }
            r2.saveString(r3, r4)     // Catch:{ all -> 0x0039 }
            monitor-exit(r2)
            return
        L_0x0039:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        L_0x003c:
            monitor-exit(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.removeRawReferrer(java.lang.String, long):void");
    }

    public synchronized a getRawReferrer(String str, long j) {
        int rawReferrerIndex = getRawReferrerIndex(str, j);
        if (rawReferrerIndex >= 0) {
            try {
                return getRawReferrerArray().getJSONArray(rawReferrerIndex);
            } catch (b unused) {
            }
        }
        return null;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0012 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized org.a.a getRawReferrerArray() {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.String r0 = "raw_referrers"
            java.lang.String r0 = r2.getString(r0)     // Catch:{ b -> 0x0012 }
            if (r0 == 0) goto L_0x0012
            org.a.a r1 = new org.a.a     // Catch:{ b -> 0x0012 }
            r1.<init>((java.lang.String) r0)     // Catch:{ b -> 0x0012 }
            monitor-exit(r2)
            return r1
        L_0x0010:
            r0 = move-exception
            goto L_0x0019
        L_0x0012:
            org.a.a r0 = new org.a.a     // Catch:{ all -> 0x0010 }
            r0.<init>()     // Catch:{ all -> 0x0010 }
            monitor-exit(r2)
            return r0
        L_0x0019:
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.getRawReferrerArray():org.a.a");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002d, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void setSendingReferrersAsNotSent() {
        /*
            r8 = this;
            monitor-enter(r8)
            org.a.a r0 = r8.getRawReferrerArray()     // Catch:{ b -> 0x002c, all -> 0x0029 }
            r1 = 0
            r2 = 0
            r3 = 0
        L_0x0008:
            int r4 = r0.length()     // Catch:{ b -> 0x002c, all -> 0x0029 }
            if (r2 >= r4) goto L_0x0022
            org.a.a r4 = r0.getJSONArray(r2)     // Catch:{ b -> 0x002c, all -> 0x0029 }
            r5 = -1
            r6 = 2
            int r5 = r4.optInt(r6, r5)     // Catch:{ b -> 0x002c, all -> 0x0029 }
            r7 = 1
            if (r5 != r7) goto L_0x001f
            r4.put((int) r6, (int) r1)     // Catch:{ b -> 0x002c, all -> 0x0029 }
            r3 = 1
        L_0x001f:
            int r2 = r2 + 1
            goto L_0x0008
        L_0x0022:
            if (r3 == 0) goto L_0x0027
            r8.saveRawReferrerArray(r0)     // Catch:{ b -> 0x002c, all -> 0x0029 }
        L_0x0027:
            monitor-exit(r8)
            return
        L_0x0029:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        L_0x002c:
            monitor-exit(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.setSendingReferrersAsNotSent():void");
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized int getRawReferrerIndex(java.lang.String r8, long r9) {
        /*
            r7 = this;
            monitor-enter(r7)
            org.a.a r0 = r7.getRawReferrerArray()     // Catch:{ b -> 0x0031, all -> 0x002e }
            r1 = 0
            r2 = 0
        L_0x0007:
            int r3 = r0.length()     // Catch:{ b -> 0x0031, all -> 0x002e }
            if (r2 >= r3) goto L_0x0031
            org.a.a r3 = r0.getJSONArray(r2)     // Catch:{ b -> 0x0031, all -> 0x002e }
            r4 = 0
            java.lang.String r4 = r3.optString(r1, r4)     // Catch:{ b -> 0x0031, all -> 0x002e }
            if (r4 == 0) goto L_0x002b
            boolean r4 = r4.equals(r8)     // Catch:{ b -> 0x0031, all -> 0x002e }
            if (r4 == 0) goto L_0x002b
            r4 = -1
            r6 = 1
            long r3 = r3.optLong(r6, r4)     // Catch:{ b -> 0x0031, all -> 0x002e }
            int r5 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r5 != 0) goto L_0x002b
            monitor-exit(r7)
            return r2
        L_0x002b:
            int r2 = r2 + 1
            goto L_0x0007
        L_0x002e:
            r8 = move-exception
            monitor-exit(r7)
            throw r8
        L_0x0031:
            r8 = -1
            monitor-exit(r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.getRawReferrerIndex(java.lang.String, long):int");
    }

    public synchronized void savePushToken(String str) {
        saveString(PREFS_KEY_PUSH_TOKEN, str);
    }

    public synchronized String getPushToken() {
        return getString(PREFS_KEY_PUSH_TOKEN);
    }

    public synchronized void removePushToken() {
        remove(PREFS_KEY_PUSH_TOKEN);
    }

    public synchronized void setInstallTracked() {
        saveBoolean(PREFS_KEY_INSTALL_TRACKED, true);
    }

    public synchronized boolean getInstallTracked() {
        return getBoolean(PREFS_KEY_INSTALL_TRACKED, false);
    }

    public synchronized void clear() {
        this.sharedPreferences.edit().clear().apply();
    }

    private synchronized void saveString(String str, String str2) {
        this.sharedPreferences.edit().putString(str, str2).apply();
    }

    private synchronized void saveBoolean(String str, boolean z) {
        this.sharedPreferences.edit().putBoolean(str, z).apply();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x000e, code lost:
        return null;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized java.lang.String getString(java.lang.String r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            r0 = 0
            android.content.SharedPreferences r1 = r2.sharedPreferences     // Catch:{ ClassCastException -> 0x000d, all -> 0x000a }
            java.lang.String r3 = r1.getString(r3, r0)     // Catch:{ ClassCastException -> 0x000d, all -> 0x000a }
            monitor-exit(r2)
            return r3
        L_0x000a:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        L_0x000d:
            monitor-exit(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.getString(java.lang.String):java.lang.String");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x000d, code lost:
        return r3;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized boolean getBoolean(java.lang.String r2, boolean r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            android.content.SharedPreferences r0 = r1.sharedPreferences     // Catch:{ ClassCastException -> 0x000c, all -> 0x0009 }
            boolean r2 = r0.getBoolean(r2, r3)     // Catch:{ ClassCastException -> 0x000c, all -> 0x0009 }
            monitor-exit(r1)
            return r2
        L_0x0009:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        L_0x000c:
            monitor-exit(r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.SharedPreferencesManager.getBoolean(java.lang.String, boolean):boolean");
    }

    private synchronized void remove(String str) {
        this.sharedPreferences.edit().remove(str).apply();
    }
}
