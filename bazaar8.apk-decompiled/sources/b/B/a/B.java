package b.b.a;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import b.b.a;
import b.b.f.b;
import b.i.k.C0261d;

/* compiled from: AppCompatDialog */
public class B extends Dialog implements n {

    /* renamed from: a  reason: collision with root package name */
    public o f1672a;

    /* renamed from: b  reason: collision with root package name */
    public final C0261d.a f1673b = new C0189A(this);

    public B(Context context, int i2) {
        super(context, a(context, i2));
        o a2 = a();
        a2.d(a(context, i2));
        a2.a((Bundle) null);
    }

    public b a(b.a aVar) {
        return null;
    }

    public void a(b bVar) {
    }

    public boolean a(int i2) {
        return a().b(i2);
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().a(view, layoutParams);
    }

    public void b(b bVar) {
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0261d.a(this.f1673b, getWindow().getDecorView(), this, keyEvent);
    }

    public <T extends View> T findViewById(int i2) {
        return a().a(i2);
    }

    public void invalidateOptionsMenu() {
        a().f();
    }

    public void onCreate(Bundle bundle) {
        a().e();
        super.onCreate(bundle);
        a().a(bundle);
    }

    public void onStop() {
        super.onStop();
        a().j();
    }

    public void setContentView(int i2) {
        a().c(i2);
    }

    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().a(charSequence);
    }

    public o a() {
        if (this.f1672a == null) {
            this.f1672a = o.a((Dialog) this, (n) this);
        }
        return this.f1672a;
    }

    public void setContentView(View view) {
        a().a(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().b(view, layoutParams);
    }

    public void setTitle(int i2) {
        super.setTitle(i2);
        a().a((CharSequence) getContext().getString(i2));
    }

    public static int a(Context context, int i2) {
        if (i2 != 0) {
            return i2;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
