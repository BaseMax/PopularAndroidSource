package cab.snapp.passenger.units.favorite_bar;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class FavoriteBarView_ViewBinding implements Unbinder {
    private FavoriteBarView target;

    public FavoriteBarView_ViewBinding(FavoriteBarView favoriteBarView) {
        this(favoriteBarView, favoriteBarView);
    }

    public FavoriteBarView_ViewBinding(FavoriteBarView favoriteBarView, View view) {
        this.target = favoriteBarView;
        favoriteBarView.favoriteRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_favorite_bar_recycler, "field 'favoriteRecycler'", RecyclerView.class);
    }

    public void unbind() {
        FavoriteBarView favoriteBarView = this.target;
        if (favoriteBarView != null) {
            this.target = null;
            favoriteBarView.favoriteRecycler = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
