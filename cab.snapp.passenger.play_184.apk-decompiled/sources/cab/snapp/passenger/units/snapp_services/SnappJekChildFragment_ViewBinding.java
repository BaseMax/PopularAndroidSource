package cab.snapp.passenger.units.snapp_services;

import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class SnappJekChildFragment_ViewBinding implements Unbinder {
    private SnappJekChildFragment target;

    public SnappJekChildFragment_ViewBinding(SnappJekChildFragment snappJekChildFragment, View view) {
        this.target = snappJekChildFragment;
        snappJekChildFragment.imageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.dialog_snapp_jek_child_image, "field 'imageView'", ImageView.class);
        snappJekChildFragment.titleView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.dialog_snapp_jek_child_text, "field 'titleView'", AppCompatTextView.class);
    }

    public void unbind() {
        SnappJekChildFragment snappJekChildFragment = this.target;
        if (snappJekChildFragment != null) {
            this.target = null;
            snappJekChildFragment.imageView = null;
            snappJekChildFragment.titleView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
