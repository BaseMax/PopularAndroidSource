package me.a.a.a.a;

import android.view.View;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import me.a.a.a.a.a.a;
import me.a.a.a.a.a.b;
import me.a.a.a.a.a.d;
import me.a.a.a.a.a.e;
import me.a.a.a.a.a.f;

public final class g {
    public static final int ORIENTATION_HORIZONTAL = 1;
    public static final int ORIENTATION_VERTICAL = 0;

    public static b setUpOverScroll(RecyclerView recyclerView, int i) {
        if (i == 0) {
            return new h(new d(recyclerView));
        }
        if (i == 1) {
            return new a(new d(recyclerView));
        }
        throw new IllegalArgumentException("orientation");
    }

    public static b setUpOverScroll(ListView listView) {
        return new h(new a(listView));
    }

    public static b setUpOverScroll(GridView gridView) {
        return new h(new a(gridView));
    }

    public static b setUpOverScroll(ScrollView scrollView) {
        return new h(new e(scrollView));
    }

    public static b setUpOverScroll(HorizontalScrollView horizontalScrollView) {
        return new a(new b(horizontalScrollView));
    }

    public static b setUpStaticOverScroll(View view, int i) {
        if (i == 0) {
            return new h(new f(view));
        }
        if (i == 1) {
            return new a(new f(view));
        }
        throw new IllegalArgumentException("orientation");
    }

    public static b setUpOverScroll(ViewPager viewPager) {
        return new a(new me.a.a.a.a.a.g(viewPager));
    }
}
