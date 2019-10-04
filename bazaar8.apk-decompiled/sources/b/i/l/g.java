package b.i.l;

import android.os.Build;
import android.view.View;
import android.widget.ListView;

/* compiled from: ListViewCompat */
public final class g {
    public static void a(ListView listView, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i2);
        } else {
            int firstVisiblePosition = listView.getFirstVisiblePosition();
            if (firstVisiblePosition != -1) {
                View childAt = listView.getChildAt(0);
                if (childAt != null) {
                    listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i2);
                }
            }
        }
    }
}
