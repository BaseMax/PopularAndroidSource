package f.a.a.e.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viewpagerindicator.CirclePageIndicator;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;
import ir.cafebazaar.inline.ui.inflaters.views.AspectRatioViewPager;
import java.util.List;

/* compiled from: PhotoSliderInflater */
public class A extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public List<ImageInflater> f14045c;

    /* renamed from: d  reason: collision with root package name */
    public float f14046d = 1.0f;

    /* compiled from: PhotoSliderInflater */
    private class a extends b.G.a.a {

        /* renamed from: c  reason: collision with root package name */
        public g f14047c;

        /* renamed from: d  reason: collision with root package name */
        public LayoutInflater f14048d;

        public a(g gVar) {
            this.f14047c = gVar;
            this.f14048d = LayoutInflater.from(gVar.f());
        }

        public void a(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        public int a() {
            return A.this.f14045c.size();
        }

        public Object a(ViewGroup viewGroup, int i2) {
            ImageInflater imageInflater = (ImageInflater) A.this.f14045c.get(i2);
            imageInflater.a(A.this.f14046d);
            imageInflater.a(false);
            View a2 = imageInflater.a(this.f14048d, viewGroup, this.f14047c);
            a2.setOnClickListener(new z(this, i2));
            viewGroup.addView(a2);
            return a2;
        }

        public boolean a(View view, Object obj) {
            return view.equals(obj);
        }
    }

    public void a(List<ImageInflater> list) {
        this.f14045c = list;
    }

    public int b() {
        return f.inline_photo_slider;
    }

    public final String[] c() {
        String[] strArr = new String[this.f14045c.size()];
        for (int i2 = 0; i2 < this.f14045c.size(); i2++) {
            strArr[i2] = this.f14045c.get(i2).c();
        }
        return strArr;
    }

    public void a(float f2) {
        this.f14046d = f2;
    }

    public View a(g gVar, View view) {
        AspectRatioViewPager aspectRatioViewPager = (AspectRatioViewPager) view.findViewById(e.pager);
        aspectRatioViewPager.setAspectRatio(this.f14046d);
        aspectRatioViewPager.setAdapter(new a(gVar));
        ((CirclePageIndicator) view.findViewById(e.indicator)).setViewPager(aspectRatioViewPager);
        return view;
    }
}
