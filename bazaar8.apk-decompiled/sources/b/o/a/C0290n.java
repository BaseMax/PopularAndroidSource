package b.o.a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;

/* renamed from: b.o.a.n  reason: case insensitive filesystem */
/* compiled from: FragmentManager */
public abstract class C0290n {

    /* renamed from: a  reason: collision with root package name */
    public static final C0288l f3078a = new C0288l();

    /* renamed from: b  reason: collision with root package name */
    public C0288l f3079b = null;

    /* renamed from: b.o.a.n$a */
    /* compiled from: FragmentManager */
    public interface a {
    }

    /* renamed from: b.o.a.n$b */
    /* compiled from: FragmentManager */
    public static abstract class b {
        public abstract void a(C0290n nVar, Fragment fragment);

        public abstract void a(C0290n nVar, Fragment fragment, Context context);

        public abstract void a(C0290n nVar, Fragment fragment, Bundle bundle);

        public abstract void a(C0290n nVar, Fragment fragment, View view, Bundle bundle);

        public abstract void b(C0290n nVar, Fragment fragment);

        public abstract void b(C0290n nVar, Fragment fragment, Context context);

        public abstract void b(C0290n nVar, Fragment fragment, Bundle bundle);

        public abstract void c(C0290n nVar, Fragment fragment);

        public abstract void c(C0290n nVar, Fragment fragment, Bundle bundle);

        public abstract void d(C0290n nVar, Fragment fragment);

        public abstract void d(C0290n nVar, Fragment fragment, Bundle bundle);

        public abstract void e(C0290n nVar, Fragment fragment);

        public abstract void f(C0290n nVar, Fragment fragment);

        public abstract void g(C0290n nVar, Fragment fragment);
    }

    /* renamed from: b.o.a.n$c */
    /* compiled from: FragmentManager */
    public interface c {
        void onBackStackChanged();
    }

    public abstract Fragment a(int i2);

    public abstract Fragment a(String str);

    public abstract C a();

    public abstract void a(int i2, int i3);

    public void a(C0288l lVar) {
        this.f3079b = lVar;
    }

    public abstract void a(String str, int i2);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public C0288l b() {
        if (this.f3079b == null) {
            this.f3079b = f3078a;
        }
        return this.f3079b;
    }

    public abstract List<Fragment> c();

    public abstract Fragment d();

    public abstract boolean e();

    public abstract boolean f();
}
