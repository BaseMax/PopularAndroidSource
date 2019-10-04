package f.a.a.e.b.b;

import android.view.View;
import android.widget.AdapterView;
import f.a.a.e.b.b.o;

/* compiled from: ChoicesPopup */
class m implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o.a f14177a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o f14178b;

    public m(o oVar, o.a aVar) {
        this.f14178b = oVar;
        this.f14177a = aVar;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f14178b.c().a(Integer.valueOf(this.f14177a.a(i2)));
        this.f14178b.a();
    }
}
