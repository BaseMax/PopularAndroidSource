package f.a.a.e.b.b;

import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import f.a.a.e;
import f.a.a.e.C1083c;
import f.a.a.e.g;
import f.a.a.f;

/* compiled from: ImagePickerInflater */
public class y extends B {

    /* renamed from: f  reason: collision with root package name */
    public String f14212f = null;

    /* compiled from: ImagePickerInflater */
    public interface a {
        void a(double d2);

        void a(BitmapDrawable bitmapDrawable);

        void setValue(String str);
    }

    public View a(g gVar, View view) {
        ProgressBar progressBar = (ProgressBar) view.findViewById(e.progress);
        progressBar.setIndeterminateDrawable(null);
        progressBar.setProgressDrawable(new f.a.a.e.c.a());
        progressBar.setMax(Integer.MAX_VALUE);
        ((ImageView) view.findViewById(e.image)).setOnClickListener(new w(this, gVar));
        ((C1083c) gVar.k()).Oa().a(c(), e(), new x(this));
        return view;
    }

    public int b() {
        return f.inline_image_picker;
    }

    public void a(Object obj) {
        if (obj instanceof String) {
            this.f14212f = (String) obj;
        }
    }
}
