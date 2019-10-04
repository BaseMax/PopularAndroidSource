package cab.snapp.passenger.units.favorite_add_address;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CompoundButton;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.play.R;
import com.google.android.gms.common.api.k;

public final class d extends BasePresenter<FavoriteAddAddressView, b> {

    /* renamed from: a  reason: collision with root package name */
    View.OnClickListener f712a = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationPositiveButtonToAppMetrica();
            view.getContext().startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
        }
    };

    /* renamed from: b  reason: collision with root package name */
    View.OnClickListener f713b = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationNegativeButtonClickedToAppMetrica();
        }
    };
    View.OnClickListener c = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationPositiveButtonToAppMetrica();
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", view.getContext().getPackageName(), null));
            view.getContext().startActivity(intent);
        }
    };
    View.OnClickListener d = new View.OnClickListener() {
        public final void onClick(View view) {
            ((b) d.this.getInteractor()).reportPopUpLocationNegativeButtonClickedToAppMetrica();
        }
    };

    public final void onInitialize(boolean z) {
        if (getView() != null) {
            if (z) {
                ((FavoriteAddAddressView) getView()).showMapBoxCopyright();
            } else {
                ((FavoriteAddAddressView) getView()).hideMapBoxCopyright();
            }
            ((FavoriteAddAddressView) getView()).setToolbarTitle(R.string.where_are_you);
            ((FavoriteAddAddressView) getView()).setToolbarBackButton();
            ((FavoriteAddAddressView) getView()).setToolbarMenu();
        }
    }

    public final void onLocationMoveStarted() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).makePinSmall();
        }
    }

    public final void onLocationMoveFinished() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).makePinNormal();
        }
    }

    public final void onError(Throwable th) {
        if (getView() != null) {
            if (!(th instanceof e) || ((e) th).getErrorCode() != 1077) {
                ((FavoriteAddAddressView) getView()).showToast(th.getLocalizedMessage(), R.color.cherry);
            } else {
                ((FavoriteAddAddressView) getView()).showToast(th.getMessage(), R.color.cherry);
            }
        }
    }

    public final void onAddLocationStarted() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).showLoadingDialog();
        }
    }

    public final void onAddLocationFinished() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).cancelLoadingDialog();
            ((Activity) ((FavoriteAddAddressView) getView()).getContext()).onBackPressed();
        }
    }

    public final void onPinAddressUpdated(String str) {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).setFormattedAddress(str);
        }
    }

    public final void onLocationIsUnavailable(k kVar) {
        if (getView() != null) {
            if (kVar != null) {
                ((FavoriteAddAddressView) getView()).showLocationNotAvailableDialog(new View.OnClickListener(kVar) {
                    private final /* synthetic */ k f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void onClick(View view) {
                        d.this.a(this.f$1, view);
                    }
                }, this.f713b);
            } else {
                ((FavoriteAddAddressView) getView()).showLocationNotAvailableDialog(this.f712a, this.f713b);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(k kVar, View view) {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).cancelNoLocationDialog();
        }
        if (getInteractor() != null) {
            ((b) getInteractor()).requestEditLocationSetting(kVar);
            ((b) getInteractor()).reportPopUpLocationPositiveButtonToAppMetrica();
        }
    }

    public final void onPermissionRequestIsDenied() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).showNoPermissionDialog(this.c, this.d);
        }
    }

    public final void onFavoriteLocationAdded() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).showLocationAddedToast();
        }
    }

    public final void onShortcutCreated(FavoriteModel favoriteModel) {
        if (getView() != null && ((FavoriteAddAddressView) getView()).getContext() != null && Build.VERSION.SDK_INT < 26) {
            ((FavoriteAddAddressView) getView()).showToast(((FavoriteAddAddressView) getView()).getContext().getResources().getString(R.string.fav_shortcut_toast).replace("[fav_name]", favoriteModel.getName()), R.color.colorPrimary);
        }
    }

    public final void onPinClicked() {
        if (getView() != null) {
            final String[] strArr = {""};
            final String[] strArr2 = {""};
            boolean[] zArr = {true};
            ((FavoriteAddAddressView) getView()).showAddFavoriteDialog(R.drawable.ic_fav_address_pin, R.string.favorite_address_title_dialog, R.string.favorite_address_title, R.string.like_home_co, new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    strArr[0] = editable.toString();
                }
            }, R.string.address_for_driver_route_detail, R.string.like_street_number, new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    strArr2[0] = editable.toString();
                }
            }, R.string.add_shrotcut_to_home, new CompoundButton.OnCheckedChangeListener(zArr) {
                private final /* synthetic */ boolean[] f$0;

                {
                    this.f$0 = r1;
                }

                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    d.a(this.f$0, compoundButton, z);
                }
            }, R.string.add_this_address, new View.OnClickListener(strArr, strArr2, zArr) {
                private final /* synthetic */ String[] f$1;
                private final /* synthetic */ String[] f$2;
                private final /* synthetic */ boolean[] f$3;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                }

                public final void onClick(View view) {
                    d.this.a(this.f$1, this.f$2, this.f$3, view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(boolean[] zArr, CompoundButton compoundButton, boolean z) {
        zArr[0] = z;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String[] strArr, String[] strArr2, boolean[] zArr, View view) {
        boolean z = false;
        String str = strArr[0];
        String str2 = strArr2[0];
        boolean z2 = zArr[0];
        if (!(getInteractor() == null || getView() == null)) {
            if (str == null || str.isEmpty()) {
                ((FavoriteAddAddressView) getView()).showToast(R.string.favorite_address_title_error);
            } else {
                if (str2 == null) {
                    str2 = "";
                }
                ((b) getInteractor()).a(str, str2, z2);
                z = true;
            }
        }
        if (z && getView() != null) {
            ((FavoriteAddAddressView) getView()).cancelAddFavoriteDialog();
        }
    }

    public final void onMyLocationClicked() {
        if (getInteractor() != null) {
            ((b) getInteractor()).requestMyLocation();
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((b) getInteractor()).handleBack();
        }
    }

    public final void onSearchClicked() {
        if (getInteractor() != null) {
            ((b) getInteractor()).navigateToSearch();
        }
    }

    public final void dismissAddFavoriteDialog() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).dismissAddFavoriteDialog();
        }
    }

    public final void showAddFavoriteDialogIfNeeded() {
        if (getView() != null) {
            ((FavoriteAddAddressView) getView()).showAddFavoriteDialogIfNeeded();
        }
    }
}
