package b.b.a;

import android.view.View;
import android.widget.AbsListView;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.f  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0195f implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f1738a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f1739b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AlertController f1740c;

    public C0195f(AlertController alertController, View view, View view2) {
        this.f1740c = alertController;
        this.f1738a = view;
        this.f1739b = view2;
    }

    public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        AlertController.a(absListView, this.f1738a, this.f1739b);
    }

    public void onScrollStateChanged(AbsListView absListView, int i2) {
    }
}
