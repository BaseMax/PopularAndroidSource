package cab.snapp.passenger.units.snapp_services;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.passenger.play.R;

public class SnappJekChildFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    SnappJekDialogData f1297a;
    @BindView(2131362081)
    ImageView imageView;
    @BindView(2131362082)
    AppCompatTextView titleView;

    public static SnappJekChildFragment newInstance(SnappJekDialogData snappJekDialogData) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("DATA", snappJekDialogData);
        SnappJekChildFragment snappJekChildFragment = new SnappJekChildFragment();
        snappJekChildFragment.setArguments(bundle);
        return snappJekChildFragment;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_snapp_jek_child, viewGroup, false);
        ButterKnife.bind((Object) this, inflate);
        if (getArguments().containsKey("DATA")) {
            this.f1297a = (SnappJekDialogData) getArguments().getParcelable("DATA");
        }
        SnappJekDialogData snappJekDialogData = this.f1297a;
        if (snappJekDialogData != null) {
            if (snappJekDialogData.getImage() != 0) {
                this.imageView.setImageResource(this.f1297a.getImage());
            }
            if (this.f1297a.getTitle() != 0) {
                this.titleView.setText(getContext().getString(this.f1297a.getTitle()));
            }
        }
        return inflate;
    }
}
