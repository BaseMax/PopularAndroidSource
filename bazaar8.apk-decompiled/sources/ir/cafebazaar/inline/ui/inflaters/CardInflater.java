package ir.cafebazaar.inline.ui.inflaters;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import f.a.a.e;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.c;
import f.a.a.g.d.a.b;
import java.util.ArrayList;
import java.util.List;

public class CardInflater extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public ImageInflater f14981c;

    /* renamed from: d  reason: collision with root package name */
    public List<TextInflater> f14982d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public b f14983e;

    /* renamed from: f  reason: collision with root package name */
    public Direction f14984f = Direction.normal;

    /* renamed from: g  reason: collision with root package name */
    public Style f14985g = Style.normal;

    /* renamed from: h  reason: collision with root package name */
    public boolean f14986h = false;

    public enum Direction {
        normal(f.inline_card_normal),
        reverse(f.inline_card_reverse);
        
        public int layout;

        /* access modifiers changed from: public */
        Direction(int i2) {
            this.layout = i2;
        }

        public int f() {
            return this.layout;
        }
    }

    public enum Style {
        normal(0.33333334f),
        large(0.4f),
        small(0.2f);
        
        public float imageRatio;

        /* access modifiers changed from: public */
        Style(float f2) {
            this.imageRatio = f2;
        }

        public float f() {
            return 1.0f - this.imageRatio;
        }

        public float g() {
            return this.imageRatio;
        }
    }

    public int b() {
        return this.f14984f.f();
    }

    public View a(g gVar, View view) {
        if (this.f14986h) {
            view.setBackgroundColor(gVar.g().d());
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(e.image_holder);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(e.texts_holder);
        linearLayout.removeAllViews();
        linearLayout2.removeAllViews();
        linearLayout.setLayoutParams(new TableLayout.LayoutParams(0, -1, this.f14985g.f()));
        linearLayout2.setLayoutParams(new TableLayout.LayoutParams(0, -1, this.f14985g.g()));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 0);
        LayoutInflater from = LayoutInflater.from(gVar.f() != null ? gVar.f() : gVar.getApplicationContext());
        ImageInflater imageInflater = this.f14981c;
        if (imageInflater != null) {
            linearLayout.addView(imageInflater.a(from, linearLayout, gVar), layoutParams);
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, c.a(10), 0);
        for (TextInflater a2 : this.f14982d) {
            linearLayout2.addView(a2.a(from, linearLayout2, gVar), layoutParams2);
        }
        if (this.f14983e != null) {
            view.setOnClickListener(new C1069k(this, gVar));
        }
        return view;
    }

    public void a(ImageInflater imageInflater) {
        this.f14981c = imageInflater;
    }

    public void a(TextInflater textInflater) {
        this.f14982d.add(textInflater);
    }

    public void a(boolean z) {
        this.f14986h = z;
    }

    public void a(Direction direction) {
        this.f14984f = direction;
    }

    public void a(Style style) {
        this.f14985g = style;
    }

    public void a(b bVar) {
        this.f14983e = bVar;
    }
}
