package f.a.a.e.b.b;

import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import f.a.a.a;
import f.a.a.e.b.b.B;
import f.a.a.e.g;

/* renamed from: f.a.a.e.b.b.f  reason: case insensitive filesystem */
/* compiled from: CheckBoxInflater */
class C1060f implements B.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatCheckBox f14151a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TextView f14152b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f14153c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ g f14154d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ g f14155e;

    public C1060f(g gVar, AppCompatCheckBox appCompatCheckBox, TextView textView, View view, g gVar2) {
        this.f14155e = gVar;
        this.f14151a = appCompatCheckBox;
        this.f14152b = textView;
        this.f14153c = view;
        this.f14154d = gVar2;
    }

    public String a() {
        if (!this.f14155e.f14157g || this.f14151a.isChecked()) {
            this.f14152b.setVisibility(8);
            return null;
        }
        this.f14152b.setVisibility(0);
        this.f14153c.startAnimation(AnimationUtils.loadAnimation(this.f14154d.k().E(), a.wrong_field));
        return this.f14154d.k().b(f.a.a.g.choosing_this_item_is_necessary);
    }

    public Object b() {
        return Boolean.valueOf(this.f14151a.isChecked());
    }
}
