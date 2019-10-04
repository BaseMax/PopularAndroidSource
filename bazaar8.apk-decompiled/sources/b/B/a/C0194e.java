package b.b.a;

import android.view.View;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.e  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0194e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f1735a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f1736b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AlertController f1737c;

    public C0194e(AlertController alertController, View view, View view2) {
        this.f1737c = alertController;
        this.f1735a = view;
        this.f1736b = view2;
    }

    public void run() {
        AlertController.a(this.f1737c.A, this.f1735a, this.f1736b);
    }
}
