package b.b.g;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* renamed from: b.b.g.ea  reason: case insensitive filesystem */
/* compiled from: SearchView */
class C0214ea implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2162a;

    public C0214ea(SearchView searchView) {
        this.f2162a = searchView;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f2162a.b(i2, 0, null);
    }
}
