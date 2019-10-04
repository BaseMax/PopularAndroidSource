package com.crashlytics.android.core;

import android.content.Context;
import android.os.Bundle;
import e.a.a.a.f;
import e.a.a.a.o;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class DefaultAppMeasurementEventListenerRegistrar implements AppMeasurementEventListenerRegistrar {
    public static final String ANALYTIC_CLASS = "com.google.android.gms.measurement.AppMeasurement";
    public static final String ANALYTIC_CLASS_ON_EVENT_LISTENER = "com.google.android.gms.measurement.AppMeasurement$OnEventListener";
    public static final String CRASH_ORIGIN = "crash";
    public static final String ERROR_PREFIX = "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: ";
    public static final String GET_INSTANCE_METHOD = "getInstance";
    public static final String METHOD_EQUALS = "equals";
    public static final String METHOD_HASHCODE = "hashCode";
    public static final String METHOD_ONEVENT = "onEvent";
    public static final String METHOD_TOSTRING = "toString";
    public static final String NAME = "name";
    public static final List<Class<?>> ONEVENT_EXPECTED_ARGTYPES = Collections.unmodifiableList(Arrays.asList(new Class[]{String.class, String.class, Bundle.class, Long.class}));
    public static final String PARAMETERS = "parameters";
    public static final String REGISTER_METHOD = "registerOnMeasurementEventListener";
    public final CrashlyticsCore crashlyticsCore;
    public Object eventListenerProxy;

    public DefaultAppMeasurementEventListenerRegistrar(CrashlyticsCore crashlyticsCore2) {
        this.crashlyticsCore = crashlyticsCore2;
    }

    private Class<?> getClass(String str) {
        try {
            return this.crashlyticsCore.getContext().getClassLoader().loadClass(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private Object getInstance(Class<?> cls) {
        try {
            return cls.getDeclaredMethod("getInstance", new Class[]{Context.class}).invoke(cls, new Object[]{this.crashlyticsCore.getContext()});
        } catch (Exception unused) {
            return null;
        }
    }

    public static String serializeEvent(String str, Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put(NAME, str);
        jSONObject.put(PARAMETERS, jSONObject2);
        return jSONObject.toString();
    }

    public static boolean validateOnEventArgTypes(Object[] objArr) {
        if (objArr.length != ONEVENT_EXPECTED_ARGTYPES.size()) {
            return false;
        }
        Iterator<Class<?>> it = ONEVENT_EXPECTED_ARGTYPES.iterator();
        for (Object obj : objArr) {
            if (!obj.getClass().equals(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static void writeEventToUserLog(CrashlyticsCore crashlyticsCore2, String str, Bundle bundle) {
        try {
            crashlyticsCore2.log("$A$:" + serializeEvent(str, bundle));
        } catch (JSONException unused) {
            o e2 = f.e();
            e2.a(CrashlyticsCore.TAG, "Unable to serialize Firebase Analytics event; " + str);
        }
    }

    public synchronized Object getOnEventListenerProxy(Class cls) {
        if (this.eventListenerProxy == null) {
            this.eventListenerProxy = Proxy.newProxyInstance(this.crashlyticsCore.getContext().getClassLoader(), new Class[]{cls}, new InvocationHandler() {
                public boolean equalsImpl(Object obj, Object obj2) {
                    boolean z = true;
                    if (obj == obj2) {
                        return true;
                    }
                    if (obj2 == null || !Proxy.isProxyClass(obj2.getClass()) || !super.equals(Proxy.getInvocationHandler(obj2))) {
                        z = false;
                    }
                    return z;
                }

                public Object invoke(Object obj, Method method, Object[] objArr) {
                    String name = method.getName();
                    if (objArr == null) {
                        objArr = new Object[0];
                    }
                    if (objArr.length == 1 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_EQUALS)) {
                        return Boolean.valueOf(equalsImpl(obj, objArr[0]));
                    }
                    if (objArr.length == 0 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_HASHCODE)) {
                        return Integer.valueOf(super.hashCode());
                    }
                    if (objArr.length == 0 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_TOSTRING)) {
                        return super.toString();
                    }
                    if (objArr.length == 4 && name.equals(DefaultAppMeasurementEventListenerRegistrar.METHOD_ONEVENT) && DefaultAppMeasurementEventListenerRegistrar.validateOnEventArgTypes(objArr)) {
                        String str = (String) objArr[0];
                        String str2 = (String) objArr[1];
                        Bundle bundle = (Bundle) objArr[2];
                        if (str != null && !str.equals("crash")) {
                            DefaultAppMeasurementEventListenerRegistrar.writeEventToUserLog(DefaultAppMeasurementEventListenerRegistrar.this.crashlyticsCore, str2, bundle);
                            return null;
                        }
                    }
                    StringBuilder sb = new StringBuilder("Unexpected method invoked on AppMeasurement.EventListener: " + name + "(");
                    for (int i2 = 0; i2 < objArr.length; i2++) {
                        if (i2 > 0) {
                            sb.append(", ");
                        }
                        sb.append(objArr[i2].getClass().getName());
                    }
                    sb.append("); returning null");
                    f.e().b(CrashlyticsCore.TAG, sb.toString());
                    return null;
                }
            });
        }
        return this.eventListenerProxy;
    }

    public boolean register() {
        Class<?> cls = getClass("com.google.android.gms.measurement.AppMeasurement");
        if (cls == null) {
            f.e().d(CrashlyticsCore.TAG, "Firebase Analytics is not present; you will not see automatic logging of events before a crash occurs.");
            return false;
        }
        Object instance = getInstance(cls);
        if (instance == null) {
            f.e().a(CrashlyticsCore.TAG, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Could not create an instance of Firebase Analytics.");
            return false;
        }
        Class<?> cls2 = getClass(ANALYTIC_CLASS_ON_EVENT_LISTENER);
        if (cls2 == null) {
            f.e().a(CrashlyticsCore.TAG, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Could not get class com.google.android.gms.measurement.AppMeasurement$OnEventListener");
            return false;
        }
        try {
            cls.getDeclaredMethod(REGISTER_METHOD, new Class[]{cls2}).invoke(instance, new Object[]{getOnEventListenerProxy(cls2)});
        } catch (NoSuchMethodException e2) {
            f.e().a(CrashlyticsCore.TAG, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Method registerOnMeasurementEventListener not found.", (Throwable) e2);
            return false;
        } catch (Exception e3) {
            o e4 = f.e();
            e4.a(CrashlyticsCore.TAG, ERROR_PREFIX + e3.getMessage(), (Throwable) e3);
        }
        return true;
    }
}
