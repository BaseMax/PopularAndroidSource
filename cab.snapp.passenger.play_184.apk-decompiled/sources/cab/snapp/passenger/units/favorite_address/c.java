package cab.snapp.passenger.units.favorite_address;

import android.app.Activity;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.favorite_address.adapter.FavoriteAddressAdapter;
import cab.snapp.snappuikit.c.a;
import java.util.List;
import javax.inject.Inject;

public final class c extends BasePresenter<FavoriteAddressView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected FavoriteAddressAdapter f733a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    cab.snapp.passenger.f.b.b.c f734b;

    public final void onBackButtonClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(FavoriteModel favoriteModel) {
        FavoriteModel favoriteModel2 = favoriteModel;
        FavoriteAddressView favoriteAddressView = (FavoriteAddressView) getView();
        if (favoriteAddressView != null) {
            final String[] strArr = {favoriteModel.getName()};
            final String[] strArr2 = {favoriteModel.getDetailAddress()};
            favoriteAddressView.showEditFavoriteAddressDialog(R.drawable.ic_fav_address_star, R.string.favorite_address_title_dialog, R.string.favorite_address_title, R.string.like_home_co, favoriteModel.getName(), new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    strArr[0] = editable.toString();
                }
            }, R.string.address_for_driver_route_detail, R.string.like_street_number, favoriteModel.getDetailAddress(), new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    strArr2[0] = editable.toString();
                }
            }, R.string.save, new View.OnClickListener(favoriteModel2, strArr, strArr2) {
                private final /* synthetic */ FavoriteModel f$1;
                private final /* synthetic */ String[] f$2;
                private final /* synthetic */ String[] f$3;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                }

                public final void onClick(View view) {
                    c.this.a(this.f$1, this.f$2, this.f$3, view);
                }
            }, R.string.remove, new View.OnClickListener(favoriteModel2) {
                private final /* synthetic */ FavoriteModel f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    c.this.a(this.f$1, view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(FavoriteModel favoriteModel, String[] strArr, String[] strArr2, View view) {
        boolean z = false;
        String str = strArr[0];
        String str2 = strArr2[0];
        if (!(getInteractor() == null || getView() == null)) {
            if (str == null || str.isEmpty()) {
                ((FavoriteAddressView) getView()).showErrorDialog((int) R.string.favorite_address_title_error);
            } else {
                if (str2 == null) {
                    str2 = "";
                }
                favoriteModel.setName(str);
                favoriteModel.setDetailAddress(str2);
                ((a) getInteractor()).a(favoriteModel);
                z = true;
            }
        }
        if (z && getView() != null) {
            ((FavoriteAddressView) getView()).cancelEditFavoriteAddressDialog();
        }
    }

    public final void onAddFavoriteAddressClicked() {
        this.f734b.sendAnalyticsEvent(c.C0021c.UX, c.b.FAVORITE, "Add From List");
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getRouter() != null) {
                ((e) aVar.getRouter()).routeToAddFavoriteAddress();
            }
        }
    }

    public final void onError(String str) {
        FavoriteAddressView favoriteAddressView = (FavoriteAddressView) getView();
        if (favoriteAddressView != null) {
            favoriteAddressView.showErrorDialog(str);
        }
    }

    public final void onLoading() {
        if (getView() != null) {
            ((FavoriteAddressView) getView()).showLoadingDialog();
        }
    }

    public final void onHideLoading() {
        if (getView() != null) {
            ((FavoriteAddressView) getView()).hideLoadingDialog();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (getView() != null) {
            ((FavoriteAddressView) getView()).showEmptyLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(List<FavoriteModel> list, boolean z) {
        FavoriteAddressView favoriteAddressView = (FavoriteAddressView) getView();
        if (favoriteAddressView != null) {
            if (list == null || list.size() <= 0) {
                favoriteAddressView.showEmptyLayout();
                return;
            }
            favoriteAddressView.hideEmptyLayout();
            this.f733a = new FavoriteAddressAdapter(list, z);
            favoriteAddressView.setupRecyclerView(this.f733a);
        }
    }

    public final void onEditFavoriteSucceed() {
        if (getView() != null && ((FavoriteAddressView) getView()).getContext() != null) {
            ((FavoriteAddressView) getView()).showToast(((FavoriteAddressView) getView()).getContext().getResources().getString(R.string.saved_successfully), R.color.colorPrimary);
        }
    }

    public final void onShortcutCreated(FavoriteModel favoriteModel) {
        if (getView() != null && ((FavoriteAddressView) getView()).getContext() != null && Build.VERSION.SDK_INT < 26) {
            ((FavoriteAddressView) getView()).showToast(((FavoriteAddressView) getView()).getContext().getResources().getString(R.string.fav_shortcut_toast).replace("[fav_name]", favoriteModel.getName()), R.color.colorPrimary);
        }
    }

    public final void onDeleteFavoriteError() {
        if (getView() != null && ((FavoriteAddressView) getView()).getContext() != null) {
            ((FavoriteAddressView) getView()).showToast(((FavoriteAddressView) getView()).getContext().getString(R.string.error_deleting_favorite), R.color.cherry);
        }
    }

    public final void onInitialize() {
        if (getView() != null && ((FavoriteAddressView) getView()).getContext() != null) {
            BaseApplication.get(((FavoriteAddressView) getView()).getContext()).getAppComponent().inject(this);
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((FavoriteAddressView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((FavoriteAddressView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(FavoriteModel favoriteModel, View view) {
        if (getInteractor() != null) {
            ((a) getInteractor()).b(favoriteModel);
        }
        if (getView() != null) {
            ((FavoriteAddressView) getView()).cancelEditFavoriteAddressDialog();
        }
    }
}
