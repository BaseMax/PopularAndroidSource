package b.b.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.h  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0197h extends ArrayAdapter<CharSequence> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f1744a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AlertController.a f1745b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0197h(AlertController.a aVar, Context context, int i2, int i3, CharSequence[] charSequenceArr, AlertController.RecycleListView recycleListView) {
        super(context, i2, i3, charSequenceArr);
        this.f1745b = aVar;
        this.f1744a = recycleListView;
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i2, view, viewGroup);
        boolean[] zArr = this.f1745b.F;
        if (zArr != null && zArr[i2]) {
            this.f1744a.setItemChecked(i2, true);
        }
        return view2;
    }
}
