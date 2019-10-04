package b.b.a;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.j  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0199j implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AlertController f1751a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AlertController.a f1752b;

    public C0199j(AlertController.a aVar, AlertController alertController) {
        this.f1752b = aVar;
        this.f1751a = alertController;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f1752b.x.onClick(this.f1751a.f229b, i2);
        if (!this.f1752b.H) {
            this.f1751a.f229b.dismiss();
        }
    }
}
