package b.b.g;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.AppCompatSpinner;

/* renamed from: b.b.g.x  reason: case insensitive filesystem */
/* compiled from: AppCompatSpinner */
class C0232x implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner f2262a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner.c f2263b;

    public C0232x(AppCompatSpinner.c cVar, AppCompatSpinner appCompatSpinner) {
        this.f2263b = cVar;
        this.f2262a = appCompatSpinner;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        AppCompatSpinner.this.setSelection(i2);
        if (AppCompatSpinner.this.getOnItemClickListener() != null) {
            AppCompatSpinner.c cVar = this.f2263b;
            AppCompatSpinner.this.performItemClick(view, i2, cVar.L.getItemId(i2));
        }
        this.f2263b.dismiss();
    }
}
