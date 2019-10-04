package cab.snapp.passenger.units.favorite_bar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.f;

public class FavoriteBarView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f740a;
    @BindView(2131362632)
    RecyclerView favoriteRecycler;

    public FavoriteBarView(Context context) {
        super(context);
    }

    public FavoriteBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FavoriteBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void loadFavoriteList(f fVar, RecyclerView.LayoutManager layoutManager) {
        if (getContext() != null) {
            this.favoriteRecycler.setLayoutManager(layoutManager);
            this.favoriteRecycler.setAdapter(fVar);
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f740a = cVar;
    }
}
