package cab.snapp.passenger.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import cab.snapp.passenger.a.j;
import cab.snapp.passenger.a.k;
import cab.snapp.passenger.data.models.RideRatingModel;
import cab.snapp.passenger.data.models.ride_rating.RideRatingReason;
import cab.snapp.passenger.play.R;
import java.util.List;

public final class k extends PagerAdapter {

    /* renamed from: a  reason: collision with root package name */
    private final a f404a;

    /* renamed from: b  reason: collision with root package name */
    private final RideRatingModel f405b;
    private List<b> c;

    public interface a {
        void onReasonClicked(RideRatingReason rideRatingReason, boolean z, j jVar);
    }

    public static class b {
        public final boolean isNegative;

        public b(boolean z) {
            this.isNegative = z;
        }
    }

    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final View f406a;

        /* renamed from: b  reason: collision with root package name */
        private final RecyclerView f407b;
        private final TextView c;
        private j d;

        public c(View view) {
            this.f406a = view;
            this.f407b = (RecyclerView) view.findViewById(R.id.view_ride_rating_reason_page_recycler);
            this.c = (TextView) view.findViewById(R.id.view_ride_rating_reason_page_title);
            this.f407b.setLayoutManager(new GridLayoutManager(view.getContext(), 2));
        }

        public final void initialize(RideRatingModel rideRatingModel, b bVar, a aVar) {
            this.d = new j(this.f406a.getContext(), rideRatingModel, bVar.isNegative);
            this.f407b.setAdapter(this.d);
            this.d.setOnItemClickListener(new j.a(aVar, bVar) {
                private final /* synthetic */ k.a f$1;
                private final /* synthetic */ k.b f$2;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                }

                public final void onItemClick(int i, RideRatingReason rideRatingReason) {
                    k.c.this.a(this.f$1, this.f$2, i, rideRatingReason);
                }
            });
            int starRate = rideRatingModel.getStarRate();
            if (starRate == 1) {
                hideTitle();
                return;
            }
            int i = R.string.what_did_you_like;
            if (starRate < 5) {
                TextView textView = this.c;
                if (bVar.isNegative) {
                    i = R.string.what_went_wrong;
                }
                textView.setText(i);
                showTitle();
                return;
            }
            TextView textView2 = this.c;
            if (bVar.isNegative) {
                i = R.string.how_can_it_be_improved;
            }
            textView2.setText(i);
            showTitle();
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void a(a aVar, b bVar, int i, RideRatingReason rideRatingReason) {
            if (aVar != null) {
                aVar.onReasonClicked(rideRatingReason, bVar.isNegative, this.d);
            }
        }

        public final void setTitle(int i) {
            this.c.setText(i);
        }

        public final void hideTitle() {
            this.c.setVisibility(8);
        }

        public final void showTitle() {
            this.c.setVisibility(0);
        }
    }

    public final boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public k(RideRatingModel rideRatingModel, List<b> list, a aVar) {
        this.c = list;
        this.f404a = aVar;
        this.f405b = rideRatingModel;
    }

    public final void setItems(List<b> list) {
        this.c = list;
    }

    public final int getCount() {
        return this.c.size();
    }

    public final void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    public final Object instantiateItem(ViewGroup viewGroup, int i) {
        c cVar = new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.view_ride_rating_reason_page, viewGroup, false));
        cVar.initialize(this.f405b, this.c.get(i), this.f404a);
        viewGroup.addView(cVar.f406a);
        return cVar.f406a;
    }
}
