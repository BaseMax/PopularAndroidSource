package b.b.g;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;

/* compiled from: SearchView */
class fa implements AdapterView.OnItemSelectedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2164a;

    public fa(SearchView searchView) {
        this.f2164a = searchView;
    }

    public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f2164a.d(i2);
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
