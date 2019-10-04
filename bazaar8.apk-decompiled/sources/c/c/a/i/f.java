package c.c.a.i;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.PopupWindow;
import b.i.b.a;
import com.farsitel.bazaar.R;
import h.f.b.j;

/* compiled from: ViewExt.kt */
public final class f {
    public static final PopupWindow a(View view, View view2) {
        j.b(view, "$this$popWindow");
        j.b(view2, "anchorView");
        PopupWindow popupWindow = new PopupWindow(view, -2, -2);
        popupWindow.setBackgroundDrawable(new ColorDrawable(a.a(view.getContext(), (int) R.color.transparent)));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.showAsDropDown(view2, 0, view2.getHeight() * -1);
        return popupWindow;
    }
}
