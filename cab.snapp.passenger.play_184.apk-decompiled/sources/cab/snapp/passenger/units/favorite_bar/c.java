package cab.snapp.passenger.units.favorite_bar;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.a.f;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.f.b.b.c;
import java.util.List;
import javax.inject.Inject;

public final class c extends BasePresenter<FavoriteBarView, a> implements f.c {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.passenger.f.b.b.c f745a;

    /* renamed from: b  reason: collision with root package name */
    private f f746b;
    private RecyclerView.LayoutManager c;

    public final void onFavoriteModelListReady(List<FavoriteModel> list) {
        FavoriteBarView favoriteBarView = (FavoriteBarView) getView();
        if (favoriteBarView != null && favoriteBarView.getContext() != null) {
            BaseApplication.get(favoriteBarView.getContext()).getAppComponent().inject(this);
            f fVar = this.f746b;
            if (fVar == null) {
                this.f746b = new f(favoriteBarView.getContext(), list, this);
            } else {
                fVar.updateData(list);
            }
            if (this.c == null) {
                this.c = new LinearLayoutManager(favoriteBarView.getContext(), 0, false);
            }
            favoriteBarView.loadFavoriteList(this.f746b, this.c);
        }
    }

    public final void onFavoriteClick(FavoriteModel favoriteModel) {
        this.f745a.sendAnalyticsEvent(c.C0021c.UX, c.b.FAVORITE, "Select Favorite");
        if (getInteractor() != null) {
            ((a) getInteractor()).favoriteSelected(favoriteModel);
        }
    }

    public final void onAddFavoriteClick() {
        if (getInteractor() != null) {
            ((a) getInteractor()).handleAddFavorite();
        }
    }
}
