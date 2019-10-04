package cab.snapp.passenger.units.favorite_address;

import android.content.Context;
import android.location.Location;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.e;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.f.n;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.g.a;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.favorite_address.adapter.FavoriteAddressAdapter;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.d;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappFloatingActionButton;
import cab.snapp.snappuikit.c;
import com.google.android.gms.maps.model.LatLng;

public class FavoriteAddressView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f722a;

    /* renamed from: b  reason: collision with root package name */
    protected c f723b;
    protected r c;
    private b d;
    private FavoriteAddressAdapter e;
    private b f;
    @BindView(2131362625)
    SnappFloatingActionButton viewFavoriteAddressAddBtn;
    @BindView(2131362627)
    LinearLayout viewFavoriteAddressEmpty;
    @BindView(2131362631)
    RecyclerView viewFavoriteAddressRecyclerView;

    public FavoriteAddressView(Context context) {
        super(context);
    }

    public FavoriteAddressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FavoriteAddressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362625})
    public void onAddFavoriteAddressClick() {
        c cVar = this.f722a;
        if (cVar != null) {
            cVar.onAddFavoriteAddressClicked();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.f722a.onBackButtonClicked();
    }

    public void showErrorDialog(String str) {
        this.d = new b.a(getContext()).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                FavoriteAddressView.this.a(view);
            }
        }).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        b bVar = this.d;
        if (bVar != null) {
            bVar.dismiss();
            this.d.cancel();
        }
    }

    public void showLoadingDialog() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoadingDialog() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showEmptyLayout() {
        this.viewFavoriteAddressRecyclerView.setVisibility(8);
        this.viewFavoriteAddressEmpty.setVisibility(0);
    }

    public void hideEmptyLayout() {
        this.viewFavoriteAddressRecyclerView.setVisibility(0);
        this.viewFavoriteAddressEmpty.setVisibility(8);
    }

    public void setupRecyclerView(FavoriteAddressAdapter favoriteAddressAdapter) {
        this.e = favoriteAddressAdapter;
        this.viewFavoriteAddressRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        this.viewFavoriteAddressRecyclerView.setHasFixedSize(true);
        this.viewFavoriteAddressRecyclerView.addItemDecoration(new cab.snapp.snappuikit.c.c((int) e.convertDpToPixel(getContext(), 8.0f)));
        favoriteAddressAdapter.setItemClickListener(new a() {
            public final void onClick(int i, int i2, Object obj) {
                FavoriteAddressView.this.onItemClick(i, i2, obj);
            }
        });
        this.viewFavoriteAddressRecyclerView.setAdapter(favoriteAddressAdapter);
    }

    public void onItemClick(int i, int i2, Object obj) {
        FavoriteAddressAdapter favoriteAddressAdapter = this.e;
        if (favoriteAddressAdapter != null) {
            switch (i) {
                case R.id.cell_favorite_address_add_btn /*2131361981*/:
                    c cVar = this.f722a;
                    FavoriteModel item = favoriteAddressAdapter.getItem(i2);
                    if (cVar.getInteractor() != null) {
                        a aVar = (a) cVar.getInteractor();
                        if (aVar.getActivity() != null) {
                            new n(aVar.getActivity()).createHomeScreenShortcut(item);
                            if (aVar.getPresenter() != null) {
                                ((c) aVar.getPresenter()).onShortcutCreated(item);
                                break;
                            }
                        }
                    }
                    break;
                case R.id.cell_favorite_address_detail_tv /*2131361984*/:
                    c cVar2 = this.f722a;
                    favoriteAddressAdapter.getItem(i2);
                    if (cVar2.getInteractor() != null) {
                        cVar2.getInteractor();
                    }
                    return;
                case R.id.cell_favorite_address_edit_btn /*2131361985*/:
                    this.f722a.a(favoriteAddressAdapter.getItem(i2));
                    return;
                case R.id.cell_favorite_address_select_btn /*2131361987*/:
                    c cVar3 = this.f722a;
                    FavoriteModel item2 = favoriteAddressAdapter.getItem(i2);
                    if (cVar3.getInteractor() != null) {
                        a aVar2 = (a) cVar3.getInteractor();
                        if (aVar2.f726a.getCurrentState() == 0) {
                            Location location = aVar2.c.getLocation();
                            if (!(location == null || aVar2.getRouter() == null)) {
                                aVar2.f726a.setOriginLatLng(new LatLng(location.getLatitude(), location.getLongitude()));
                                aVar2.f726a.setDestinationLatLng(new LatLng(item2.getFormattedAddress().getLat(), item2.getFormattedAddress().getLng()));
                                aVar2.f726a.setDestinationPlaceId(item2.getId());
                                aVar2.f726a.setDestinationFormattedAddress(item2.getName());
                                aVar2.f726a.setDestinationFormattedDetailsAddress(item2.getDetailAddress());
                            }
                        } else if (aVar2.f726a.getCurrentState() == 1) {
                            aVar2.f726a.setDestinationLatLng(new LatLng(item2.getFormattedAddress().getLat(), item2.getFormattedAddress().getLng()));
                            aVar2.f726a.setDestinationPlaceId(item2.getId());
                            aVar2.f726a.setDestinationFormattedAddress(item2.getName());
                            aVar2.f726a.setDestinationFormattedDetailsAddress(item2.getDetailAddress());
                        }
                        if (aVar2.getRouter() != null) {
                            ((e) aVar2.getRouter()).navigateUp();
                            break;
                        }
                    }
                    break;
            }
        }
    }

    public void showEditFavoriteAddressDialog(int i, int i2, int i3, int i4, String str, TextWatcher textWatcher, int i5, int i6, String str2, TextWatcher textWatcher2, int i7, View.OnClickListener onClickListener, int i8, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            int i9 = i3;
            int i10 = i4;
            String str3 = str;
            TextWatcher textWatcher3 = textWatcher;
            int i11 = i5;
            int i12 = i6;
            String str4 = str2;
            TextWatcher textWatcher4 = textWatcher2;
            d.a secondEtTextWatcher = new d.a().setFirstEditTextTitle(getContext().getString(i3)).setFirstEditTextHint(getContext().getString(i4)).setFirstEditTextText(str).setFirstEtTextWatcher(textWatcher).setSecondEditTextTitle(getContext().getString(i5)).setSecondEditTextHint(getContext().getString(i6)).setSecondEditTextText(str2).setSecondEtTextWatcher(textWatcher2);
            int i13 = i;
            int i14 = i2;
            b.a dialogViewType = new b.a(getContext()).setIcon(i).setDialogTitle(i2).setDialogViewType(secondEtTextWatcher.build());
            int i15 = i7;
            View.OnClickListener onClickListener3 = onClickListener;
            this.f = dialogViewType.setPositiveButton(i7, onClickListener).setNegativeButton(i8, onClickListener2).showOnBuild(true).build();
        }
    }

    public void cancelEditFavoriteAddressDialog() {
        b bVar = this.f;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.f.dismiss();
            }
            this.f.cancel();
        }
    }

    public void showErrorDialog(int i) {
        if (getContext() != null) {
            showErrorDialog(getContext().getString(i));
        }
    }

    public void showToast(String str, int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.c = new r(getContext());
        this.f723b = new c(this);
        this.f723b.setTitle((int) R.string.favorite_addresses);
        this.f723b.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                FavoriteAddressView.this.b(view);
            }
        });
    }

    public void setPresenter(c cVar) {
        this.f722a = cVar;
    }
}
