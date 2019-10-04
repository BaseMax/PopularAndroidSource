package cab.snapp.passenger.units.favorite_address;

import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.f.n;
import java.util.List;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    g f726a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    c f727b;
    @Inject
    e c;
    @Inject
    cab.snapp.passenger.f.b.b.c d;

    /* access modifiers changed from: private */
    public static /* synthetic */ void c(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(List list) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onHideLoading();
            ((c) getPresenter()).a((List<FavoriteModel>) list, a());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onHideLoading();
            if (th instanceof cab.snapp.passenger.data_access_layer.a.e) {
                ((cab.snapp.passenger.data_access_layer.a.e) th).getMessage();
                ((c) getPresenter()).a();
                return;
            }
            th.getMessage();
            ((c) getPresenter()).a();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(List list) throws Exception {
        ((c) getPresenter()).a((List<FavoriteModel>) list, a());
    }

    private boolean a() {
        return this.f726a.getCurrentState() == 0 || this.f726a.getCurrentState() == 1;
    }

    /* access modifiers changed from: package-private */
    public final void a(FavoriteModel favoriteModel) {
        addDisposable(this.f727b.edit(favoriteModel.getId(), favoriteModel.getName(), favoriteModel.getDetailAddress()).subscribe(new io.reactivex.e.g(favoriteModel) {
            private final /* synthetic */ FavoriteModel f$1;

            {
                this.f$1 = r2;
            }

            public final void accept(Object obj) {
                a.this.a(this.f$1, (Boolean) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.b((Throwable) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(FavoriteModel favoriteModel, Boolean bool) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onEditFavoriteSucceed();
            new n(getActivity()).updateHomeScreenShortcut(favoriteModel);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onError(th.getMessage());
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(FavoriteModel favoriteModel) {
        if (getActivity() != null) {
            new n(getActivity()).removeHomeScreenShortcut(favoriteModel);
        }
        if (favoriteModel != null && getPresenter() != null) {
            ((c) getPresenter()).onLoading();
            addDisposable(this.f727b.remove(favoriteModel.getId()).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Boolean) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Throwable) obj);
                }
            }));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onHideLoading();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onDeleteFavoriteError();
            ((c) getPresenter()).onHideLoading();
        }
    }

    public void finish() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(getController() == null || getRouter() == null)) {
                ((e) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
                ((c) getPresenter()).setStatusBarColor();
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onLoading();
            }
            if (getPresenter() == null || this.f727b.getCachedData() == null || this.f727b.getCachedData().size() <= 0) {
                addDisposable(this.f727b.fetchAndRefreshData().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.b((List) obj);
                    }
                }, new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.d((Throwable) obj);
                    }
                }));
            } else {
                ((c) getPresenter()).onHideLoading();
                ((c) getPresenter()).a(this.f727b.getCachedData(), a());
            }
            addDisposable(this.f727b.observeData().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((List) obj);
                }
            }, $$Lambda$a$ZWBOujIuwphbgGEQE2R6xhqr4kM.INSTANCE));
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.d.reportScreenName("Viewing Favourite Page");
    }
}
