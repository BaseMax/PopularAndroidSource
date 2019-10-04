package cab.snapp.snappdialog;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import cab.snapp.snappdialog.a;
import java.util.UUID;

public class SnappControllerDialog extends DialogFragment implements cab.snapp.snappdialog.b.a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public FragmentManager f1438a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public Fragment f1439b;
    private final String c = "Snapp Controller Dialog Tag";
    /* access modifiers changed from: private */
    public String d;
    /* access modifiers changed from: private */
    public boolean e;
    private Integer f = 0;
    private FrameLayout g;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        SnappControllerDialog f1440a = new SnappControllerDialog();

        public final a setFragmentManager(FragmentManager fragmentManager) {
            this.f1440a.f1438a = fragmentManager;
            return this;
        }

        public final a setController(Fragment fragment) {
            this.f1440a.f1439b = fragment;
            return this;
        }

        public final a setTag(String str) {
            this.f1440a.d = str;
            return this;
        }

        public final a setCancelable(boolean z) {
            this.f1440a.setCancelable(z);
            return this;
        }

        public final a showOnBuild(boolean z) {
            this.f1440a.e = z;
            return this;
        }

        public final SnappControllerDialog build() {
            SnappControllerDialog.a(this.f1440a);
            return this.f1440a;
        }
    }

    public interface b {
        void setCancelListener(cab.snapp.snappdialog.b.a aVar);
    }

    public Integer getDialogId() {
        return this.f;
    }

    public Fragment getController() {
        return this.f1439b;
    }

    public String getControllerTag() {
        return this.d;
    }

    public boolean isShowOnBuild() {
        return this.e;
    }

    private void a() {
        FragmentManager fragmentManager = this.f1438a;
        if (fragmentManager != null) {
            show(fragmentManager, "Snapp Controller Dialog Tag");
        }
    }

    public void show() {
        dismiss();
        a();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(a.f.dialog_controller_base_layout, viewGroup, true);
        this.g = (FrameLayout) inflate.findViewById(a.e.dialog_controller_base_content_frame);
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (Build.VERSION.SDK_INT >= 21) {
            view.setClipToOutline(true);
        }
        if (getDialog() != null && getDialog().getWindow() != null) {
            getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
            getDialog().getWindow().requestFeature(1);
        }
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (!(getDialog() == null || getDialog().getWindow() == null)) {
            getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        if (isAdded()) {
            Fragment fragment = this.f1439b;
            if (fragment != null) {
                if (fragment instanceof b) {
                    ((b) fragment).setCancelListener(this);
                }
                if (this.f1439b.isStateSaved()) {
                    getChildFragmentManager().beginTransaction().replace(a.e.dialog_controller_base_content_frame, this.f1439b, this.d).commitAllowingStateLoss();
                    return;
                }
                getChildFragmentManager().beginTransaction().replace(a.e.dialog_controller_base_content_frame, this.f1439b, this.d).commit();
            }
        }
    }

    public void dismiss() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (isStateSaved()) {
                dismissAllowingStateLoss();
                return;
            }
            super.dismiss();
        }
    }

    public void cancel() {
        dismiss();
    }

    static /* synthetic */ void a(SnappControllerDialog snappControllerDialog) {
        snappControllerDialog.f = Integer.valueOf(UUID.randomUUID().hashCode());
        if (snappControllerDialog.e) {
            snappControllerDialog.a();
        }
    }
}
