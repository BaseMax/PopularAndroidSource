package b.o.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.i.a.b;
import b.i.j.h;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* renamed from: b.o.a.m  reason: case insensitive filesystem */
/* compiled from: FragmentHostCallback */
public abstract class C0289m<E> extends C0286j {

    /* renamed from: a  reason: collision with root package name */
    public final Activity f3073a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f3074b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f3075c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3076d;

    /* renamed from: e  reason: collision with root package name */
    public final v f3077e;

    public C0289m(C0285i iVar) {
        this(iVar, iVar, new Handler(), 0);
    }

    public View a(int i2) {
        return null;
    }

    public void a(Fragment fragment) {
    }

    public void a(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, Bundle bundle) {
        if (i2 == -1) {
            this.f3074b.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    public void a(Fragment fragment, String[] strArr, int i2) {
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public boolean a() {
        return true;
    }

    public boolean a(String str) {
        return false;
    }

    public boolean b(Fragment fragment) {
        return true;
    }

    public Activity d() {
        return this.f3073a;
    }

    public Context f() {
        return this.f3074b;
    }

    public Handler g() {
        return this.f3075c;
    }

    public abstract E h();

    public LayoutInflater i() {
        return LayoutInflater.from(this.f3074b);
    }

    public int j() {
        return this.f3076d;
    }

    public boolean k() {
        return true;
    }

    public void l() {
    }

    public C0289m(Activity activity, Context context, Handler handler, int i2) {
        this.f3077e = new v();
        this.f3073a = activity;
        h.a(context, "context == null");
        this.f3074b = context;
        h.a(handler, "handler == null");
        this.f3075c = handler;
        this.f3076d = i2;
    }

    public void a(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) {
        if (i2 == -1) {
            b.a(this.f3073a, intentSender, i2, intent, i3, i4, i5, bundle);
        } else {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
    }
}
