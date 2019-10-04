package cab.snapp.passenger.units.favorite_address;

import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappFloatingActionButton;

public class FavoriteAddressView_ViewBinding implements Unbinder {
    private FavoriteAddressView target;
    private View view7f0a0341;

    public FavoriteAddressView_ViewBinding(FavoriteAddressView favoriteAddressView) {
        this(favoriteAddressView, favoriteAddressView);
    }

    public FavoriteAddressView_ViewBinding(final FavoriteAddressView favoriteAddressView, View view) {
        this.target = favoriteAddressView;
        favoriteAddressView.viewFavoriteAddressRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_favorite_address_rv, "field 'viewFavoriteAddressRecyclerView'", RecyclerView.class);
        favoriteAddressView.viewFavoriteAddressEmpty = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_favorite_address_empty, "field 'viewFavoriteAddressEmpty'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_favorite_address_add_btn, "field 'viewFavoriteAddressAddBtn' and method 'onAddFavoriteAddressClick'");
        favoriteAddressView.viewFavoriteAddressAddBtn = (SnappFloatingActionButton) Utils.castView(findRequiredView, R.id.view_favorite_address_add_btn, "field 'viewFavoriteAddressAddBtn'", SnappFloatingActionButton.class);
        this.view7f0a0341 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                favoriteAddressView.onAddFavoriteAddressClick();
            }
        });
    }

    public void unbind() {
        FavoriteAddressView favoriteAddressView = this.target;
        if (favoriteAddressView != null) {
            this.target = null;
            favoriteAddressView.viewFavoriteAddressRecyclerView = null;
            favoriteAddressView.viewFavoriteAddressEmpty = null;
            favoriteAddressView.viewFavoriteAddressAddBtn = null;
            this.view7f0a0341.setOnClickListener(null);
            this.view7f0a0341 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
