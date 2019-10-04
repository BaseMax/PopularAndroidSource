package cab.snapp.passenger.units.tour;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import java.util.List;

public final class h extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    List<d> f1405a;

    /* renamed from: b  reason: collision with root package name */
    private final a f1406b;

    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public h(a aVar, List<d> list) {
        this.f1406b = aVar;
        this.f1405a = list;
    }

    public final int getCount() {
        return this.f1405a.size();
    }

    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f1405a.get(i).getLayoutResId(), viewGroup, false);
        inflate.setTag(Integer.valueOf(i));
        viewGroup.addView(inflate);
        return inflate;
    }

    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }
}
