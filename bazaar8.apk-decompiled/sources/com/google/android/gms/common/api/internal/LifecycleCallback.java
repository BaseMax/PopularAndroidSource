package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import c.e.a.b.d.a.a.C0757e;
import c.e.a.b.d.a.a.C0758f;
import c.e.a.b.d.a.a.W;
import c.e.a.b.d.a.a.Y;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class LifecycleCallback {

    /* renamed from: a  reason: collision with root package name */
    public final C0758f f13000a;

    public LifecycleCallback(C0758f fVar) {
        this.f13000a = fVar;
    }

    public static C0758f a(C0757e eVar) {
        if (eVar.c()) {
            return Y.a(eVar.b());
        }
        if (eVar.d()) {
            return W.a(eVar.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    public static C0758f getChimeraLifecycleFragmentImpl(C0757e eVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public void a(int i2, int i3, Intent intent) {
    }

    public void a(Bundle bundle) {
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void b() {
    }

    public void b(Bundle bundle) {
    }

    public void c() {
    }

    public void d() {
    }

    public void e() {
    }

    public static C0758f a(Activity activity) {
        return a(new C0757e(activity));
    }

    public Activity a() {
        return this.f13000a.l();
    }
}
