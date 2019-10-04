package com.google.gson.internal.a;

import com.google.gson.internal.d;
import java.lang.reflect.AccessibleObject;

public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final b f4121a = (d.getMajorJavaVersion() < 9 ? new a() : new c());

    public abstract void makeAccessible(AccessibleObject accessibleObject);

    public static b getInstance() {
        return f4121a;
    }
}
