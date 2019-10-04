package com.adjust.sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import android.os.Looper;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserView;
import io.fabric.sdk.android.services.common.IdManager;
import java.io.ObjectInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Pattern;

public class Util {
    private static final String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'Z";
    public static final DecimalFormat SecondsDisplayFormat = new DecimalFormat(IdManager.DEFAULT_VERSION_NAME);
    public static final SimpleDateFormat dateFormatter = new SimpleDateFormat(DATE_FORMAT, Locale.US);
    private static final String fieldReadErrorMessage = "Unable to read '%s' field in migration device with message (%s)";

    private static ILogger getLogger() {
        return AdjustFactory.getLogger();
    }

    protected static String createUuid() {
        return UUID.randomUUID().toString();
    }

    public static String quote(String str) {
        if (str == null) {
            return null;
        }
        if (!Pattern.compile("\\s").matcher(str).find()) {
            return str;
        }
        return formatString("'%s'", str);
    }

    public static String getPlayAdId(Context context) {
        return Reflection.getPlayAdId(context);
    }

    public static void runInBackground(Runnable runnable) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            runnable.run();
            return;
        }
        new AsyncTask<Object, Void, Void>() {
            /* access modifiers changed from: protected */
            public final /* synthetic */ Object doInBackground(Object[] objArr) {
                objArr[0].run();
                return null;
            }
        }.execute(new Object[]{runnable});
    }

    public static void getGoogleAdId(Context context, final OnDeviceIdsRead onDeviceIdsRead) {
        ILogger logger = AdjustFactory.getLogger();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            logger.debug("GoogleAdId being read in the background", new Object[0]);
            String playAdId = getPlayAdId(context);
            logger.debug("GoogleAdId read ".concat(String.valueOf(playAdId)), new Object[0]);
            onDeviceIdsRead.onGoogleAdIdRead(playAdId);
            return;
        }
        logger.debug("GoogleAdId being read in the foreground", new Object[0]);
        new AsyncTask<Context, Void, String>() {
            /* access modifiers changed from: protected */
            public final /* synthetic */ Object doInBackground(Object[] objArr) {
                ILogger logger = AdjustFactory.getLogger();
                String playAdId = Util.getPlayAdId(((Context[]) objArr)[0]);
                logger.debug("GoogleAdId read ".concat(String.valueOf(playAdId)), new Object[0]);
                return playAdId;
            }

            /* access modifiers changed from: protected */
            public final /* synthetic */ void onPostExecute(Object obj) {
                AdjustFactory.getLogger();
                onDeviceIdsRead.onGoogleAdIdRead((String) obj);
            }
        }.execute(new Context[]{context});
    }

    public static Boolean isPlayTrackingEnabled(Context context) {
        return Reflection.isPlayTrackingEnabled(context);
    }

    public static String getMacAddress(Context context) {
        return Reflection.getMacAddress(context);
    }

    public static Map<String, String> getPluginKeys(Context context) {
        return Reflection.getPluginKeys(context);
    }

    public static String getAndroidId(Context context) {
        return Reflection.getAndroidId(context);
    }

    public static String getTelephonyId(TelephonyManager telephonyManager) {
        return Reflection.getTelephonyId(telephonyManager);
    }

    public static String getIMEI(TelephonyManager telephonyManager) {
        return Reflection.getImei(telephonyManager);
    }

    public static String getMEID(TelephonyManager telephonyManager) {
        return Reflection.getMeid(telephonyManager);
    }

    public static String getIMEI(TelephonyManager telephonyManager, int i) {
        return Reflection.getImei(telephonyManager, i);
    }

    public static String getMEID(TelephonyManager telephonyManager, int i) {
        return Reflection.getMeid(telephonyManager, i);
    }

    public static String getTelephonyId(TelephonyManager telephonyManager, int i) {
        return Reflection.getTelephonyId(telephonyManager, i);
    }

    public static boolean tryAddToStringList(List<String> list, String str) {
        if (str != null && !list.contains(str)) {
            return list.add(str);
        }
        return false;
    }

    public static String getTelephonyIds(TelephonyManager telephonyManager) {
        ArrayList arrayList = new ArrayList();
        tryAddToStringList(arrayList, getTelephonyId(telephonyManager, 0));
        int i = 1;
        while (i < 10 && tryAddToStringList(arrayList, getTelephonyId(telephonyManager, i))) {
            i++;
        }
        tryAddToStringList(arrayList, getTelephonyId(telephonyManager, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        return TextUtils.join(",", arrayList);
    }

    public static String getIMEIs(TelephonyManager telephonyManager) {
        ArrayList arrayList = new ArrayList();
        tryAddToStringList(arrayList, getIMEI(telephonyManager, 0));
        int i = 1;
        while (i < 10 && tryAddToStringList(arrayList, getIMEI(telephonyManager, i))) {
            i++;
        }
        tryAddToStringList(arrayList, getIMEI(telephonyManager, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        return TextUtils.join(",", arrayList);
    }

    public static String getMEIDs(TelephonyManager telephonyManager) {
        ArrayList arrayList = new ArrayList();
        tryAddToStringList(arrayList, getMEID(telephonyManager, 0));
        int i = 1;
        while (i < 10 && tryAddToStringList(arrayList, getMEID(telephonyManager, i))) {
            i++;
        }
        tryAddToStringList(arrayList, getMEID(telephonyManager, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        return TextUtils.join(",", arrayList);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002c, code lost:
        r7 = r7;
        r7 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        getLogger().error("Failed to read %s object (%s)", r9, r8.getMessage());
        r7 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0040, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0041, code lost:
        getLogger().error("Failed to cast %s object (%s)", r9, r8.getMessage());
        r7 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0055, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0056, code lost:
        getLogger().error("Failed to find %s class (%s)", r9, r8.getMessage());
        r7 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        r7 = r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002b, code lost:
        r8 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:27:? A[ExcHandler: FileNotFoundException (unused java.io.FileNotFoundException), PHI: r0 r7 
  PHI: (r0v4 T) = (r0v0 T), (r0v0 T), (r0v0 T), (r0v8 T), (r0v9 T) binds: [B:3:0x0008, B:4:?, B:7:0x0012, B:10:0x002c, B:8:?] A[DONT_GENERATE, DONT_INLINE]
  PHI: (r7v9 java.io.InputStream) = (r7v17 java.io.InputStream), (r7v19 java.io.InputStream), (r7v23 java.io.ObjectInputStream), (r7v27 java.io.ObjectInputStream), (r7v30 java.io.ObjectInputStream) binds: [B:3:0x0008, B:4:?, B:7:0x0012, B:10:0x002c, B:8:?] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC, Splitter:B:3:0x0008] */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0095 A[SYNTHETIC, Splitter:B:29:0x0095] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T> T readObject(android.content.Context r7, java.lang.String r8, java.lang.String r9, java.lang.Class<T> r10) {
        /*
            r0 = 0
            r1 = 2
            r2 = 0
            r3 = 1
            java.io.FileInputStream r7 = r7.openFileInput(r8)     // Catch:{ FileNotFoundException -> 0x0085, Exception -> 0x0073 }
            java.io.BufferedInputStream r8 = new java.io.BufferedInputStream     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r8.<init>(r7)     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.io.ObjectInputStream r7 = new java.io.ObjectInputStream     // Catch:{ FileNotFoundException -> 0x006f, Exception -> 0x006a }
            r7.<init>(r8)     // Catch:{ FileNotFoundException -> 0x006f, Exception -> 0x006a }
            java.lang.Object r8 = r7.readObject()     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            java.lang.Object r0 = r10.cast(r8)     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            com.adjust.sdk.ILogger r8 = getLogger()     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            java.lang.String r10 = "Read %s: %s"
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            r4[r2] = r9     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            r4[r3] = r0     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            r8.debug(r10, r4)     // Catch:{ ClassNotFoundException -> 0x0055, ClassCastException -> 0x0040, Exception -> 0x002b, FileNotFoundException -> 0x0086 }
            goto L_0x0093
        L_0x002b:
            r8 = move-exception
            com.adjust.sdk.ILogger r10 = getLogger()     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.lang.String r4 = "Failed to read %s object (%s)"
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r5[r2] = r9     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.lang.String r8 = r8.getMessage()     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r5[r3] = r8     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r10.error(r4, r5)     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            goto L_0x0093
        L_0x0040:
            r8 = move-exception
            com.adjust.sdk.ILogger r10 = getLogger()     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.lang.String r4 = "Failed to cast %s object (%s)"
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r5[r2] = r9     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.lang.String r8 = r8.getMessage()     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r5[r3] = r8     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r10.error(r4, r5)     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            goto L_0x0093
        L_0x0055:
            r8 = move-exception
            com.adjust.sdk.ILogger r10 = getLogger()     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.lang.String r4 = "Failed to find %s class (%s)"
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r5[r2] = r9     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            java.lang.String r8 = r8.getMessage()     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r5[r3] = r8     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            r10.error(r4, r5)     // Catch:{ FileNotFoundException -> 0x0086, Exception -> 0x0071 }
            goto L_0x0093
        L_0x006a:
            r7 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
            goto L_0x0075
        L_0x006f:
            r7 = r8
            goto L_0x0086
        L_0x0071:
            r8 = move-exception
            goto L_0x0075
        L_0x0073:
            r8 = move-exception
            r7 = r0
        L_0x0075:
            com.adjust.sdk.ILogger r10 = getLogger()
            java.lang.Object[] r4 = new java.lang.Object[r1]
            r4[r2] = r9
            r4[r3] = r8
            java.lang.String r8 = "Failed to open %s file for reading (%s)"
            r10.error(r8, r4)
            goto L_0x0093
        L_0x0085:
            r7 = r0
        L_0x0086:
            com.adjust.sdk.ILogger r8 = getLogger()
            java.lang.Object[] r10 = new java.lang.Object[r3]
            r10[r2] = r9
            java.lang.String r4 = "%s file not found"
            r8.debug(r4, r10)
        L_0x0093:
            if (r7 == 0) goto L_0x00a9
            r7.close()     // Catch:{ Exception -> 0x0099 }
            goto L_0x00a9
        L_0x0099:
            r7 = move-exception
            com.adjust.sdk.ILogger r8 = getLogger()
            java.lang.Object[] r10 = new java.lang.Object[r1]
            r10[r2] = r9
            r10[r3] = r7
            java.lang.String r7 = "Failed to close %s file for reading (%s)"
            r8.error(r7, r10)
        L_0x00a9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.Util.readObject(android.content.Context, java.lang.String, java.lang.String, java.lang.Class):java.lang.Object");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:5|6|7|8|9|10) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0024 */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x004a A[SYNTHETIC, Splitter:B:18:0x004a] */
    /* JADX WARNING: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T> void writeObject(T r5, android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
            r0 = 2
            r1 = 1
            r2 = 0
            java.io.FileOutputStream r6 = r6.openFileOutput(r7, r2)     // Catch:{ Exception -> 0x0037 }
            java.io.BufferedOutputStream r7 = new java.io.BufferedOutputStream     // Catch:{ Exception -> 0x0035 }
            r7.<init>(r6)     // Catch:{ Exception -> 0x0035 }
            java.io.ObjectOutputStream r6 = new java.io.ObjectOutputStream     // Catch:{ Exception -> 0x0032 }
            r6.<init>(r7)     // Catch:{ Exception -> 0x0032 }
            r6.writeObject(r5)     // Catch:{ NotSerializableException -> 0x0024 }
            com.adjust.sdk.ILogger r7 = getLogger()     // Catch:{ NotSerializableException -> 0x0024 }
            java.lang.String r3 = "Wrote %s: %s"
            java.lang.Object[] r4 = new java.lang.Object[r0]     // Catch:{ NotSerializableException -> 0x0024 }
            r4[r2] = r8     // Catch:{ NotSerializableException -> 0x0024 }
            r4[r1] = r5     // Catch:{ NotSerializableException -> 0x0024 }
            r7.debug(r3, r4)     // Catch:{ NotSerializableException -> 0x0024 }
            goto L_0x0048
        L_0x0024:
            com.adjust.sdk.ILogger r5 = getLogger()     // Catch:{ Exception -> 0x0035 }
            java.lang.String r7 = "Failed to serialize %s"
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch:{ Exception -> 0x0035 }
            r3[r2] = r8     // Catch:{ Exception -> 0x0035 }
            r5.error(r7, r3)     // Catch:{ Exception -> 0x0035 }
            goto L_0x0048
        L_0x0032:
            r5 = move-exception
            r6 = r7
            goto L_0x0039
        L_0x0035:
            r5 = move-exception
            goto L_0x0039
        L_0x0037:
            r5 = move-exception
            r6 = 0
        L_0x0039:
            com.adjust.sdk.ILogger r7 = getLogger()
            java.lang.Object[] r3 = new java.lang.Object[r0]
            r3[r2] = r8
            r3[r1] = r5
            java.lang.String r5 = "Failed to open %s for writing (%s)"
            r7.error(r5, r3)
        L_0x0048:
            if (r6 == 0) goto L_0x005e
            r6.close()     // Catch:{ Exception -> 0x004e }
            goto L_0x005e
        L_0x004e:
            r5 = move-exception
            com.adjust.sdk.ILogger r6 = getLogger()
            java.lang.Object[] r7 = new java.lang.Object[r0]
            r7[r2] = r8
            r7[r1] = r5
            java.lang.String r5 = "Failed to close %s file for writing (%s)"
            r6.error(r5, r7)
        L_0x005e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adjust.sdk.Util.writeObject(java.lang.Object, android.content.Context, java.lang.String, java.lang.String):void");
    }

    public static boolean checkPermission(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static String readStringField(ObjectInputStream.GetField getField, String str, String str2) {
        return (String) readObjectField(getField, str, str2);
    }

    public static <T> T readObjectField(ObjectInputStream.GetField getField, String str, T t) {
        try {
            return getField.get(str, t);
        } catch (Exception e) {
            getLogger().debug(fieldReadErrorMessage, str, e.getMessage());
            return t;
        }
    }

    public static boolean readBooleanField(ObjectInputStream.GetField getField, String str, boolean z) {
        try {
            return getField.get(str, z);
        } catch (Exception e) {
            getLogger().debug(fieldReadErrorMessage, str, e.getMessage());
            return z;
        }
    }

    public static int readIntField(ObjectInputStream.GetField getField, String str, int i) {
        try {
            return getField.get(str, i);
        } catch (Exception e) {
            getLogger().debug(fieldReadErrorMessage, str, e.getMessage());
            return i;
        }
    }

    public static long readLongField(ObjectInputStream.GetField getField, String str, long j) {
        try {
            return getField.get(str, j);
        } catch (Exception e) {
            getLogger().debug(fieldReadErrorMessage, str, e.getMessage());
            return j;
        }
    }

    public static boolean equalObject(Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return obj == null && obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static boolean equalsDouble(Double d, Double d2) {
        return (d == null || d2 == null) ? d == null && d2 == null : Double.doubleToLongBits(d.doubleValue()) == Double.doubleToLongBits(d2.doubleValue());
    }

    public static boolean equalString(String str, String str2) {
        return equalObject(str, str2);
    }

    public static boolean equalEnum(Enum enumR, Enum enumR2) {
        return equalObject(enumR, enumR2);
    }

    public static boolean equalLong(Long l, Long l2) {
        return equalObject(l, l2);
    }

    public static boolean equalInt(Integer num, Integer num2) {
        return equalObject(num, num2);
    }

    public static boolean equalBoolean(Boolean bool, Boolean bool2) {
        return equalObject(bool, bool2);
    }

    public static int hashBoolean(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public static int hashLong(Long l) {
        if (l == null) {
            return 0;
        }
        return l.hashCode();
    }

    public static int hashString(String str) {
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public static int hashEnum(Enum enumR) {
        if (enumR == null) {
            return 0;
        }
        return enumR.hashCode();
    }

    public static int hashObject(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static String sha1(String str) {
        return hash(str, "SHA-1");
    }

    public static String sha256(String str) {
        return hash(str, Constants.SHA256);
    }

    public static String md5(String str) {
        return hash(str, "MD5");
    }

    public static String hash(String str, String str2) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            MessageDigest instance = MessageDigest.getInstance(str2);
            instance.update(bytes, 0, bytes.length);
            return convertToHex(instance.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String convertToHex(byte[] bArr) {
        BigInteger bigInteger = new BigInteger(1, bArr);
        return formatString("%0" + (bArr.length << 1) + "x", bigInteger);
    }

    public static String[] getSupportedAbis() {
        return Reflection.getSupportedAbis();
    }

    public static String getCpuAbi() {
        return Reflection.getCpuAbi();
    }

    public static String getReasonString(String str, Throwable th) {
        if (th != null) {
            return formatString("%s: %s", str, th);
        }
        return formatString("%s", str);
    }

    public static long getWaitingTime(int i, BackoffStrategy backoffStrategy) {
        if (i < backoffStrategy.minRetries) {
            return 0;
        }
        long min = Math.min(((long) Math.pow(2.0d, (double) (i - backoffStrategy.minRetries))) * backoffStrategy.milliSecondMultiplier, backoffStrategy.maxWait);
        double randomInRange = randomInRange(backoffStrategy.minRange, backoffStrategy.maxRange);
        double d = (double) min;
        Double.isNaN(d);
        return (long) (d * randomInRange);
    }

    private static double randomInRange(double d, double d2) {
        return (new Random().nextDouble() * (d2 - d)) + d;
    }

    public static boolean isValidParameter(String str, String str2, String str3) {
        if (str == null) {
            getLogger().error("%s parameter %s is missing", str3, str2);
            return false;
        } else if (!str.equals("")) {
            return true;
        } else {
            getLogger().error("%s parameter %s is empty", str3, str2);
            return false;
        }
    }

    public static Map<String, String> mergeParameters(Map<String, String> map, Map<String, String> map2, String str) {
        if (map == null) {
            return map2;
        }
        if (map2 == null) {
            return map;
        }
        HashMap hashMap = new HashMap(map);
        ILogger logger = getLogger();
        for (Map.Entry next : map2.entrySet()) {
            String str2 = (String) hashMap.put(next.getKey(), next.getValue());
            if (str2 != null) {
                logger.warn("Key %s with value %s from %s parameter was replaced by value %s", next.getKey(), str2, str, next.getValue());
            }
        }
        return hashMap;
    }

    public static String getVmInstructionSet() {
        return Reflection.getVmInstructionSet();
    }

    public static Locale getLocale(Configuration configuration) {
        Locale localeFromLocaleList = Reflection.getLocaleFromLocaleList(configuration);
        if (localeFromLocaleList != null) {
            return localeFromLocaleList;
        }
        return Reflection.getLocaleFromField(configuration);
    }

    public static String getFireAdvertisingId(ContentResolver contentResolver) {
        if (contentResolver == null) {
            return null;
        }
        try {
            return Settings.Secure.getString(contentResolver, "advertising_id");
        } catch (Exception unused) {
            return null;
        }
    }

    public static Boolean getFireTrackingEnabled(ContentResolver contentResolver) {
        try {
            return Boolean.valueOf(Settings.Secure.getInt(contentResolver, "limit_ad_tracking") == 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getConnectivityType(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType();
        } catch (Exception e) {
            getLogger().warn("Couldn't read connectivity type (%s)", e.getMessage());
            return -1;
        }
    }

    public static int getNetworkType(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
        } catch (Exception e) {
            getLogger().warn("Couldn't read network type (%s)", e.getMessage());
            return -1;
        }
    }

    public static String getMcc(Context context) {
        try {
            String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
            if (!TextUtils.isEmpty(networkOperator)) {
                return networkOperator.substring(0, 3);
            }
            AdjustFactory.getLogger().warn("Couldn't receive networkOperator string to read MCC", new Object[0]);
            return null;
        } catch (Exception unused) {
            AdjustFactory.getLogger().warn("Couldn't return mcc", new Object[0]);
            return null;
        }
    }

    public static String getMnc(Context context) {
        try {
            String networkOperator = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
            if (!TextUtils.isEmpty(networkOperator)) {
                return networkOperator.substring(3);
            }
            AdjustFactory.getLogger().warn("Couldn't receive networkOperator string to read MNC", new Object[0]);
            return null;
        } catch (Exception unused) {
            AdjustFactory.getLogger().warn("Couldn't return mnc", new Object[0]);
            return null;
        }
    }

    public static String formatString(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }
}
