package com.yandex.metrica.impl.ob;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class ku implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private Object f6335a;

    /* renamed from: b  reason: collision with root package name */
    private final kx f6336b;

    ku(Object obj, kx kxVar) {
        this.f6335a = obj;
        this.f6336b = kxVar;
    }

    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        if ("onInstallReferrerSetupFinished".equals(method.getName()) && objArr.length == 1 && objArr[0].equals(0)) {
            try {
                Object invoke = this.f6335a.getClass().getMethod("getInstallReferrer", new Class[0]).invoke(this.f6335a, new Object[0]);
                kx kxVar = this.f6336b;
                kw kwVar = new kw((String) invoke.getClass().getMethod("getInstallReferrer", new Class[0]).invoke(invoke, new Object[0]), ((Long) invoke.getClass().getMethod("getReferrerClickTimestampSeconds", new Class[0]).invoke(invoke, new Object[0])).longValue(), ((Long) invoke.getClass().getMethod("getInstallBeginTimestampSeconds", new Class[0]).invoke(invoke, new Object[0])).longValue());
                kxVar.a(kwVar);
            } catch (Exception e) {
                this.f6336b.a((Throwable) e);
            }
        }
        return null;
    }
}
