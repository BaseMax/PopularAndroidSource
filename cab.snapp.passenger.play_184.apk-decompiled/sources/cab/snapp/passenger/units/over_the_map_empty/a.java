package cab.snapp.passenger.units.over_the_map_empty;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.RelativeLayout;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.f.e;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import io.reactivex.e.g;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    b f978a;

    /* renamed from: b  reason: collision with root package name */
    private cab.snapp.snappdialog.b f979b;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            addDisposable(this.f978a.getConfigObservable().subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.a((ConfigResponse) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ConfigResponse configResponse) throws Exception {
        if (getActivity() == null || !new e().IUDFU(configResponse)) {
            if (!(getController() == null || getController().getView() == null)) {
                ((RelativeLayout) ((OverTheMapEmptyView) getController().getView()).findViewById(R.id.over_the_map_back_layout)).setVisibility(8);
            }
            return;
        }
        if (!(getController() == null || getController().getView() == null)) {
            ((RelativeLayout) ((OverTheMapEmptyView) getController().getView()).findViewById(R.id.over_the_map_back_layout)).setVisibility(0);
        }
        this.f979b = new b.a(getActivity()).setIcon(R.drawable.ic_snapp_group_minty_green).setTheme(1).setDialogTitle((int) R.string.new_version).setDialogViewType(new g.a().setMessage(getActivity().getString(R.string.new_version_available_no_support_anymore)).build()).setPositiveButton((int) R.string.download_new_version, (View.OnClickListener) new View.OnClickListener(configResponse) {
            private final /* synthetic */ ConfigResponse f$1;

            {
                this.f$1 = r2;
            }

            public final void onClick(View view) {
                a.this.a(this.f$1, view);
            }
        }).showOnBuild(true).build();
        this.f979b.setOnDismissListener(new DialogInterface.OnDismissListener() {
            public final void onDismiss(DialogInterface dialogInterface) {
                a.this.a(dialogInterface);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ConfigResponse configResponse, View view) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(configResponse.getAppData().getUpdateUri()));
            getActivity().startActivity(intent);
            getActivity().finish();
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(DialogInterface dialogInterface) {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }
}
