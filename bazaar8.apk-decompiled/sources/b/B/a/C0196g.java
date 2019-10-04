package b.b.a;

import android.view.View;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.g  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0196g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f1741a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ View f1742b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AlertController f1743c;

    public C0196g(AlertController alertController, View view, View view2) {
        this.f1743c = alertController;
        this.f1741a = view;
        this.f1742b = view2;
    }

    public void run() {
        AlertController.a(this.f1743c.f234g, this.f1741a, this.f1742b);
    }
}
