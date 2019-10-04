package b.o.a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.i.j.h;
import b.r.I;

/* renamed from: b.o.a.k  reason: case insensitive filesystem */
/* compiled from: FragmentController */
public class C0287k {

    /* renamed from: a  reason: collision with root package name */
    public final C0289m<?> f3071a;

    public C0287k(C0289m<?> mVar) {
        this.f3071a = mVar;
    }

    public static C0287k a(C0289m<?> mVar) {
        h.a(mVar, "callbacks == null");
        return new C0287k(mVar);
    }

    public void b() {
        this.f3071a.f3077e.l();
    }

    public void c() {
        this.f3071a.f3077e.m();
    }

    public void d() {
        this.f3071a.f3077e.o();
    }

    public void e() {
        this.f3071a.f3077e.p();
    }

    public void f() {
        this.f3071a.f3077e.r();
    }

    public void g() {
        this.f3071a.f3077e.s();
    }

    public void h() {
        this.f3071a.f3077e.t();
    }

    public boolean i() {
        return this.f3071a.f3077e.w();
    }

    public C0290n j() {
        return this.f3071a.f3077e;
    }

    public void k() {
        this.f3071a.f3077e.C();
    }

    public Parcelable l() {
        return this.f3071a.f3077e.E();
    }

    public Fragment a(String str) {
        return this.f3071a.f3077e.b(str);
    }

    public void b(boolean z) {
        this.f3071a.f3077e.b(z);
    }

    public void a(Fragment fragment) {
        C0289m<?> mVar = this.f3071a;
        mVar.f3077e.a((C0289m) mVar, (C0286j) mVar, fragment);
    }

    public boolean b(Menu menu) {
        return this.f3071a.f3077e.b(menu);
    }

    public View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3071a.f3077e.onCreateView(view, str, context, attributeSet);
    }

    public boolean b(MenuItem menuItem) {
        return this.f3071a.f3077e.b(menuItem);
    }

    public void a(Parcelable parcelable) {
        C0289m<?> mVar = this.f3071a;
        if (mVar instanceof I) {
            mVar.f3077e.a(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    public void a() {
        this.f3071a.f3077e.k();
    }

    public void a(boolean z) {
        this.f3071a.f3077e.a(z);
    }

    public void a(Configuration configuration) {
        this.f3071a.f3077e.a(configuration);
    }

    public boolean a(Menu menu, MenuInflater menuInflater) {
        return this.f3071a.f3077e.a(menu, menuInflater);
    }

    public boolean a(MenuItem menuItem) {
        return this.f3071a.f3077e.a(menuItem);
    }

    public void a(Menu menu) {
        this.f3071a.f3077e.a(menu);
    }
}
