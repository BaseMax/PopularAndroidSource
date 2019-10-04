package b.b.f;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import b.b.f.a.k;
import b.b.f.b;
import java.lang.ref.WeakReference;

/* compiled from: StandaloneActionMode */
public class e extends b implements k.a {

    /* renamed from: c  reason: collision with root package name */
    public Context f1953c;

    /* renamed from: d  reason: collision with root package name */
    public ActionBarContextView f1954d;

    /* renamed from: e  reason: collision with root package name */
    public b.a f1955e;

    /* renamed from: f  reason: collision with root package name */
    public WeakReference<View> f1956f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1957g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1958h;

    /* renamed from: i  reason: collision with root package name */
    public k f1959i;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.f1953c = context;
        this.f1954d = actionBarContextView;
        this.f1955e = aVar;
        k kVar = new k(actionBarContextView.getContext());
        kVar.d(1);
        this.f1959i = kVar;
        this.f1959i.a((k.a) this);
        this.f1958h = z;
    }

    public void a(CharSequence charSequence) {
        this.f1954d.setSubtitle(charSequence);
    }

    public void b(CharSequence charSequence) {
        this.f1954d.setTitle(charSequence);
    }

    public Menu c() {
        return this.f1959i;
    }

    public MenuInflater d() {
        return new g(this.f1954d.getContext());
    }

    public CharSequence e() {
        return this.f1954d.getSubtitle();
    }

    public CharSequence g() {
        return this.f1954d.getTitle();
    }

    public void i() {
        this.f1955e.b(this, this.f1959i);
    }

    public boolean j() {
        return this.f1954d.c();
    }

    public void a(int i2) {
        a((CharSequence) this.f1953c.getString(i2));
    }

    public void b(int i2) {
        b((CharSequence) this.f1953c.getString(i2));
    }

    public void a(boolean z) {
        super.a(z);
        this.f1954d.setTitleOptional(z);
    }

    public View b() {
        WeakReference<View> weakReference = this.f1956f;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public void a(View view) {
        this.f1954d.setCustomView(view);
        this.f1956f = view != null ? new WeakReference<>(view) : null;
    }

    public void a() {
        if (!this.f1957g) {
            this.f1957g = true;
            this.f1954d.sendAccessibilityEvent(32);
            this.f1955e.a(this);
        }
    }

    public boolean a(k kVar, MenuItem menuItem) {
        return this.f1955e.a((b) this, menuItem);
    }

    public void a(k kVar) {
        i();
        this.f1954d.e();
    }
}
