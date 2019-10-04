package cab.snapp.passenger.units.favorite_address.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.g.a;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.favorite_address.adapter.FavoriteAddressAdapter;
import com.squareup.picasso.Picasso;
import java.util.List;

public final class FavoriteAddressAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private List<FavoriteModel> f728a;

    /* renamed from: b  reason: collision with root package name */
    private a f729b;
    private boolean c;

    class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(2131361981)
        Button cellFavoriteAddressAddBtn;
        @BindView(2131361982)
        TextView cellFavoriteAddressAreaTv;
        @BindView(2131361984)
        TextView cellFavoriteAddressDetailTv;
        @BindView(2131361983)
        TextView cellFavoriteAddressDetailTvTitle;
        @BindView(2131361985)
        ImageButton cellFavoriteAddressEditBtn;
        @BindView(2131361986)
        ImageView cellFavoriteAddressMapIv;
        @BindView(2131361987)
        AppCompatTextView cellFavoriteAddressSelectBtn;
        @BindView(2131361988)
        TextView cellFavoriteAddressTitleTv;

        ViewHolder(View view) {
            super(view);
            ButterKnife.bind((Object) this, view);
        }
    }

    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.cellFavoriteAddressAddBtn = (Button) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_add_btn, "field 'cellFavoriteAddressAddBtn'", Button.class);
            viewHolder.cellFavoriteAddressEditBtn = (ImageButton) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_edit_btn, "field 'cellFavoriteAddressEditBtn'", ImageButton.class);
            viewHolder.cellFavoriteAddressMapIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_map, "field 'cellFavoriteAddressMapIv'", ImageView.class);
            viewHolder.cellFavoriteAddressAreaTv = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_area_tv, "field 'cellFavoriteAddressAreaTv'", TextView.class);
            viewHolder.cellFavoriteAddressTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_title_tv, "field 'cellFavoriteAddressTitleTv'", TextView.class);
            viewHolder.cellFavoriteAddressDetailTv = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_detail_tv, "field 'cellFavoriteAddressDetailTv'", TextView.class);
            viewHolder.cellFavoriteAddressDetailTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_detail_title_tv, "field 'cellFavoriteAddressDetailTvTitle'", TextView.class);
            viewHolder.cellFavoriteAddressSelectBtn = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.cell_favorite_address_select_btn, "field 'cellFavoriteAddressSelectBtn'", AppCompatTextView.class);
        }

        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder != null) {
                this.target = null;
                viewHolder.cellFavoriteAddressAddBtn = null;
                viewHolder.cellFavoriteAddressEditBtn = null;
                viewHolder.cellFavoriteAddressMapIv = null;
                viewHolder.cellFavoriteAddressAreaTv = null;
                viewHolder.cellFavoriteAddressTitleTv = null;
                viewHolder.cellFavoriteAddressDetailTv = null;
                viewHolder.cellFavoriteAddressDetailTvTitle = null;
                viewHolder.cellFavoriteAddressSelectBtn = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public FavoriteAddressAdapter(List<FavoriteModel> list, boolean z) {
        this.f728a = list;
        this.c = z;
    }

    public final a getItemClickListener() {
        return this.f729b;
    }

    public final void setItemClickListener(a aVar) {
        this.f729b = aVar;
    }

    public final void updateData(List<FavoriteModel> list) {
        if (list != null && list.size() > 0) {
            this.f728a.addAll(list);
            notifyDataSetChanged();
        }
    }

    public final FavoriteModel getItem(int i) {
        try {
            if (this.f728a == null || this.f728a.size() <= i) {
                return null;
            }
            return this.f728a.get(i);
        } catch (Exception e) {
            e.printStackTrace();
            com.a.a.a.logException(e);
            return null;
        }
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_favorite_address, viewGroup, false));
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        FavoriteModel favoriteModel = this.f728a.get(i);
        if (favoriteModel.getFormattedAddress() == null || favoriteModel.getFormattedAddress().getFormattedAddress() == null || favoriteModel.getFormattedAddress().getFormattedAddress().isEmpty()) {
            viewHolder.cellFavoriteAddressAreaTv.setText("");
        } else {
            viewHolder.cellFavoriteAddressAreaTv.setText(favoriteModel.getFormattedAddress().getFormattedAddress());
        }
        if (favoriteModel.getDetailAddress() == null || favoriteModel.getDetailAddress().isEmpty()) {
            viewHolder.cellFavoriteAddressDetailTvTitle.setText(viewHolder.itemView.getContext().getString(R.string.enter_address_for_driver_route_detail));
            viewHolder.cellFavoriteAddressDetailTv.setText("");
            a aVar = this.f729b;
            if (aVar != null) {
                aVar.onClick(viewHolder.cellFavoriteAddressDetailTv.getId(), i, null);
            }
        } else {
            viewHolder.cellFavoriteAddressDetailTvTitle.setText(viewHolder.itemView.getContext().getString(R.string.address_for_driver_route_detail));
            viewHolder.cellFavoriteAddressDetailTv.setText(favoriteModel.getDetailAddress());
            viewHolder.cellFavoriteAddressDetailTv.setOnClickListener(null);
        }
        if (favoriteModel.getName() == null || favoriteModel.getName().isEmpty()) {
            viewHolder.cellFavoriteAddressTitleTv.setText("");
        } else {
            viewHolder.cellFavoriteAddressTitleTv.setText(favoriteModel.getName());
        }
        if (favoriteModel.getFormattedAddress() != null) {
            String mapUrl = favoriteModel.getMapUrl();
            if (mapUrl != null && !TextUtils.isEmpty(mapUrl)) {
                Picasso.get().load(mapUrl).fit().centerCrop().into(viewHolder.cellFavoriteAddressMapIv);
            }
        }
        if (this.f729b != null) {
            viewHolder.cellFavoriteAddressAddBtn.setOnClickListener(new View.OnClickListener(viewHolder, i) {
                private final /* synthetic */ FavoriteAddressAdapter.ViewHolder f$1;
                private final /* synthetic */ int f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onClick(View view) {
                    FavoriteAddressAdapter.this.c(this.f$1, this.f$2, view);
                }
            });
            viewHolder.cellFavoriteAddressEditBtn.setOnClickListener(new View.OnClickListener(viewHolder, i) {
                private final /* synthetic */ FavoriteAddressAdapter.ViewHolder f$1;
                private final /* synthetic */ int f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onClick(View view) {
                    FavoriteAddressAdapter.this.b(this.f$1, this.f$2, view);
                }
            });
            if (this.c) {
                viewHolder.cellFavoriteAddressSelectBtn.setEnabled(true);
                viewHolder.cellFavoriteAddressSelectBtn.setOnClickListener(new View.OnClickListener(viewHolder, i) {
                    private final /* synthetic */ FavoriteAddressAdapter.ViewHolder f$1;
                    private final /* synthetic */ int f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void onClick(View view) {
                        FavoriteAddressAdapter.this.a(this.f$1, this.f$2, view);
                    }
                });
            } else {
                viewHolder.cellFavoriteAddressSelectBtn.setEnabled(false);
            }
        }
        viewHolder.cellFavoriteAddressAddBtn.setVisibility(0);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(ViewHolder viewHolder, int i, View view) {
        this.f729b.onClick(viewHolder.cellFavoriteAddressAddBtn.getId(), i, null);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ViewHolder viewHolder, int i, View view) {
        this.f729b.onClick(viewHolder.cellFavoriteAddressEditBtn.getId(), i, null);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ViewHolder viewHolder, int i, View view) {
        this.f729b.onClick(viewHolder.cellFavoriteAddressSelectBtn.getId(), i, null);
    }

    public final int getItemCount() {
        List<FavoriteModel> list = this.f728a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }
}
