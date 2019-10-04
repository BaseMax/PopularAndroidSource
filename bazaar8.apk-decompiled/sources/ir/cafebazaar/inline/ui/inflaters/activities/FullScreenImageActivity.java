package ir.cafebazaar.inline.ui.inflaters.activities;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.viewpager.widget.ViewPager;
import com.github.chrisbanes.photoview.PhotoView;
import f.a.a.f;
import f.a.a.f.e;

public class FullScreenImageActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    public a f15019a;

    /* renamed from: b  reason: collision with root package name */
    public HackyViewPager f15020b;

    /* renamed from: c  reason: collision with root package name */
    public String[] f15021c;

    private class a extends b.G.a.a {
        public a() {
        }

        public void a(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        public /* synthetic */ a(FullScreenImageActivity fullScreenImageActivity, a aVar) {
            this();
        }

        public int a() {
            return FullScreenImageActivity.this.f15021c.length;
        }

        public boolean a(View view, Object obj) {
            return view.equals(obj);
        }

        public Object a(ViewGroup viewGroup, int i2) {
            View inflate = LayoutInflater.from(FullScreenImageActivity.this).inflate(f.inline_fullscreen_image_item, null);
            e.a().a(FullScreenImageActivity.this.f15021c[i2], (ImageView) (PhotoView) inflate.findViewById(f.a.a.e.image), (e.a) new c(this, (ProgressBar) inflate.findViewById(f.a.a.e.progress_bar)));
            viewGroup.addView(inflate);
            return inflate;
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(f.inline_fullscreen_image_activity);
        this.f15020b = (HackyViewPager) findViewById(f.a.a.e.pager);
        this.f15021c = getIntent().getExtras().getStringArray("image_url_arrays");
        int i2 = getIntent().getExtras().getInt("image_id", 0);
        this.f15019a = new a(this, null);
        this.f15020b.setAdapter(this.f15019a);
        this.f15020b.setCurrentItem(i2);
        this.f15020b.a((ViewPager.f) new a(this));
        ((ImageButton) findViewById(f.a.a.e.close)).setOnClickListener(new b(this));
    }

    public static void a(Context context, View view, String[] strArr, int i2) {
        Intent intent = new Intent(context, FullScreenImageActivity.class);
        intent.putExtra("image_url_arrays", strArr);
        intent.putExtra("image_id", i2);
        if (Build.VERSION.SDK_INT <= 16 || view == null) {
            context.startActivity(intent);
        } else {
            context.startActivity(intent, ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getWidth(), view.getHeight()).toBundle());
        }
    }
}
