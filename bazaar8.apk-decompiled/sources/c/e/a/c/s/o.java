package c.e.a.c.s;

import android.view.View;
import com.google.android.material.snackbar.Snackbar;

/* compiled from: Snackbar */
class o implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View.OnClickListener f11445a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Snackbar f11446b;

    public o(Snackbar snackbar, View.OnClickListener onClickListener) {
        this.f11446b = snackbar;
        this.f11445a = onClickListener;
    }

    public void onClick(View view) {
        this.f11445a.onClick(view);
        this.f11446b.b(1);
    }
}
