package cab.snapp.passenger.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.play.R;
import java.util.List;

public final class f extends RecyclerView.Adapter<d> {

    /* renamed from: a  reason: collision with root package name */
    private final int f372a = 1;

    /* renamed from: b  reason: collision with root package name */
    private final int f373b = 2;
    private Context c;
    private List<FavoriteModel> d;
    private c e;

    public class a extends d {
        public a(View view) {
            super(view);
        }
    }

    public class b extends d {

        /* renamed from: a  reason: collision with root package name */
        AppCompatTextView f375a;

        public b(View view) {
            super(view);
            this.f375a = (AppCompatTextView) view.findViewById(R.id.favorite_bar_favorite_row_layout_address_name_tv);
        }
    }

    public interface c {
        void onAddFavoriteClick();

        void onFavoriteClick(FavoriteModel favoriteModel);
    }

    public class d extends RecyclerView.ViewHolder {
        View c;

        public d(View view) {
            super(view);
            this.c = view;
        }
    }

    public f(Context context, List<FavoriteModel> list, c cVar) {
        this.c = context;
        this.d = list;
        this.e = cVar;
    }

    public final void updateData(List<FavoriteModel> list) {
        this.d = list;
        notifyDataSetChanged();
    }

    public final d onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = this.c;
        if (context == null) {
            return null;
        }
        if (i == 1) {
            return new b(LayoutInflater.from(context).inflate(R.layout.favorite_bar_favorite_row_layout, viewGroup, false));
        }
        return new a(LayoutInflater.from(context).inflate(R.layout.favorite_bar_empty_row_layout, viewGroup, false));
    }

    public final void onBindViewHolder(d dVar, int i) {
        if (dVar instanceof b) {
            List<FavoriteModel> list = this.d;
            if (list != null && !list.isEmpty()) {
                FavoriteModel favoriteModel = this.d.get(i);
                if (favoriteModel != null) {
                    ((b) dVar).f375a.setText(favoriteModel.getName());
                    dVar.c.setOnClickListener(new View.OnClickListener(favoriteModel) {
                        private final /* synthetic */ FavoriteModel f$1;

                        {
                            this.f$1 = r2;
                        }

                        public final void onClick(View view) {
                            f.this.a(this.f$1, view);
                        }
                    });
                }
            }
            return;
        }
        dVar.c.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                f.this.a(view);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(FavoriteModel favoriteModel, View view) {
        c cVar = this.e;
        if (cVar != null) {
            cVar.onFavoriteClick(favoriteModel);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        c cVar = this.e;
        if (cVar != null) {
            cVar.onAddFavoriteClick();
        }
    }

    public final int getItemViewType(int i) {
        List<FavoriteModel> list = this.d;
        return (list == null || list.isEmpty()) ? 2 : 1;
    }

    public final int getItemCount() {
        List<FavoriteModel> list = this.d;
        if (list == null || list.isEmpty()) {
            return 1;
        }
        return this.d.size();
    }
}
