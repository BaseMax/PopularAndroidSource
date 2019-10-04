package cab.snapp.passenger.units.snapp_services;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;

public final class a extends FragmentPagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final List<SnappJekDialogData> f1306a;

    public a(FragmentManager fragmentManager, List<SnappJekDialogData> list) {
        super(fragmentManager);
        this.f1306a = list;
    }

    public final Fragment getItem(int i) {
        return SnappJekChildFragment.newInstance(this.f1306a.get(i));
    }

    public final int getCount() {
        List<SnappJekDialogData> list = this.f1306a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }
}
