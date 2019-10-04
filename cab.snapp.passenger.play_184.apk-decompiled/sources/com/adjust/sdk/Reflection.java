package com.adjust.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import com.adjust.sdk.plugin.Plugin;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class Reflection {
    public static Object getVMRuntimeObject() {
        try {
            return invokeStaticMethod("dalvik.system.VMRuntime", "getRuntime", null, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getVmInstructionSet() {
        try {
            return (String) invokeInstanceMethod(getVMRuntimeObject(), "vmInstructionSet", null, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getPlayAdId(Context context) {
        try {
            return (String) invokeInstanceMethod(getAdvertisingInfoObject(context), "getId", null, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean isPlayTrackingEnabled(Context context) {
        try {
            boolean z = false;
            Boolean bool = (Boolean) invokeInstanceMethod(getAdvertisingInfoObject(context), "isLimitAdTrackingEnabled", null, new Object[0]);
            if (bool == null) {
                return null;
            }
            if (!bool.booleanValue()) {
                z = true;
            }
            return Boolean.valueOf(z);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getMacAddress(Context context) {
        try {
            return (String) invokeStaticMethod("com.adjust.sdk.plugin.MacAddressUtil", "getMacAddress", new Class[]{Context.class}, context);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getAndroidId(Context context) {
        try {
            return (String) invokeStaticMethod("com.adjust.sdk.plugin.AndroidIdUtil", "getAndroidId", new Class[]{Context.class}, context);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getImei(TelephonyManager telephonyManager) {
        try {
            return (String) invokeInstanceMethod(telephonyManager, "getImei", null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getImei(TelephonyManager telephonyManager, int i) {
        try {
            return (String) invokeInstanceMethod(telephonyManager, "getImei", new Class[]{Integer.TYPE}, Integer.valueOf(i));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getMeid(TelephonyManager telephonyManager) {
        try {
            return (String) invokeInstanceMethod(telephonyManager, "getMeid", null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getMeid(TelephonyManager telephonyManager, int i) {
        try {
            return (String) invokeInstanceMethod(telephonyManager, "getMeid", new Class[]{Integer.TYPE}, Integer.valueOf(i));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getTelephonyId(TelephonyManager telephonyManager) {
        try {
            return (String) invokeInstanceMethod(telephonyManager, "getDeviceId", null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getTelephonyId(TelephonyManager telephonyManager, int i) {
        try {
            return (String) invokeInstanceMethod(telephonyManager, "getDeviceId", new Class[]{Integer.TYPE}, Integer.valueOf(i));
        } catch (Exception unused) {
            return null;
        }
    }

    private static Object getAdvertisingInfoObject(Context context) throws Exception {
        return invokeStaticMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[]{Context.class}, context);
    }

    public static String[] getSupportedAbis() {
        try {
            return (String[]) readField("android.os.Build", "SUPPORTED_ABIS");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String getCpuAbi() {
        try {
            return (String) readField("android.os.Build", "CPU_ABI");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Locale getLocaleFromLocaleList(Configuration configuration) {
        Locale locale;
        try {
            Object invokeInstanceMethod = invokeInstanceMethod(configuration, "getLocales", null, new Object[0]);
            if (invokeInstanceMethod == null) {
                return null;
            }
            locale = (Locale) invokeInstanceMethod(invokeInstanceMethod, "get", new Class[]{Integer.TYPE}, 0);
            return locale;
        } catch (Throwable unused) {
            locale = null;
        }
    }

    public static Locale getLocaleFromField(Configuration configuration) {
        try {
            return (Locale) readField("android.content.res.Configuration", "locale", configuration);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class forName(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object createDefaultInstance(String str) {
        return createDefaultInstance(forName(str));
    }

    public static Object createDefaultInstance(Class cls) {
        try {
            return cls.newInstance();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object createInstance(String str, Class[] clsArr, Object... objArr) {
        try {
            return Class.forName(str).getConstructor(clsArr).newInstance(objArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Object invokeStaticMethod(String str, String str2, Class[] clsArr, Object... objArr) throws Exception {
        return invokeMethod(Class.forName(str), str2, null, clsArr, objArr);
    }

    public static Object invokeInstanceMethod(Object obj, String str, Class[] clsArr, Object... objArr) throws Exception {
        return invokeMethod(obj.getClass(), str, obj, clsArr, objArr);
    }

    public static Object invokeMethod(Class cls, String str, Object obj, Class[] clsArr, Object... objArr) throws Exception {
        Method method = cls.getMethod(str, clsArr);
        if (method == null) {
            return null;
        }
        return method.invoke(obj, objArr);
    }

    public static Object readField(String str, String str2) throws Exception {
        return readField(str, str2, null);
    }

    public static Object readField(String str, String str2, Object obj) throws Exception {
        Class forName = forName(str);
        if (forName == null) {
            return null;
        }
        Field field = forName.getField(str2);
        if (field == null) {
            return null;
        }
        return field.get(obj);
    }

    public static Map<String, String> getPluginKeys(Context context) {
        HashMap hashMap = new HashMap();
        for (Plugin parameter : getPlugins()) {
            Map.Entry<String, String> parameter2 = parameter.getParameter(context);
            if (parameter2 != null) {
                hashMap.put(parameter2.getKey(), parameter2.getValue());
            }
        }
        if (hashMap.size() == 0) {
            return null;
        }
        return hashMap;
    }

    private static List<Plugin> getPlugins() {
        ArrayList arrayList = new ArrayList(Constants.PLUGINS.size());
        for (String createDefaultInstance : Constants.PLUGINS) {
            Object createDefaultInstance2 = createDefaultInstance(createDefaultInstance);
            if (createDefaultInstance2 != null && (createDefaultInstance2 instanceof Plugin)) {
                arrayList.add((Plugin) createDefaultInstance2);
            }
        }
        return arrayList;
    }
}
