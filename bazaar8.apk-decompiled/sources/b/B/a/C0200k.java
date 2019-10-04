package b.b.a;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.k  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0200k implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f1753a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AlertController f1754b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AlertController.a f1755c;

    public C0200k(AlertController.a aVar, AlertController.RecycleListView recycleListView, AlertController alertController) {
        this.f1755c = aVar;
        this.f1753a = recycleListView;
        this.f1754b = alertController;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        boolean[] zArr = this.f1755c.F;
        if (zArr != null) {
            zArr[i2] = this.f1753a.isItemChecked(i2);
        }
        this.f1755c.J.onClick(this.f1754b.f229b, i2, this.f1753a.isItemChecked(i2));
    }
}
