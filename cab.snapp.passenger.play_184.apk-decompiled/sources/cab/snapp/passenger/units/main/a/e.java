package cab.snapp.passenger.units.main.a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.snapp_group.BannerItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceTypeItem;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.a.e;
import com.squareup.picasso.Picasso;
import java.util.List;

public final class e extends RecyclerView.Adapter {

    /* renamed from: a  reason: collision with root package name */
    private final int f898a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f899b = 1;
    private final int c = 2;
    /* access modifiers changed from: private */
    public List<BannerItem> d;
    /* access modifiers changed from: private */
    public List<ServiceItem> e;
    private List<ServiceTypeItem> f;
    /* access modifiers changed from: private */
    public d g;
    /* access modifiers changed from: private */
    public C0022e h;
    /* access modifiers changed from: private */
    public f i;
    private c j;
    private d k;
    /* access modifiers changed from: private */
    public Context l;

    public class a extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private ImageView f901b;
        private AppCompatTextView c;
        private AppCompatTextView d;
        private AppCompatTextView e;

        public a(View view) {
            super(view);
            this.f901b = (ImageView) view.findViewById(R.id.item_snapp_group_banner_background_image);
            this.c = (AppCompatTextView) view.findViewById(R.id.item_snapp_group_banner_title_textview);
            this.d = (AppCompatTextView) view.findViewById(R.id.item_snapp_group_banner_description_textview);
            this.e = (AppCompatTextView) view.findViewById(R.id.item_snapp_group_banner_action_textview);
            view.setOnClickListener(this);
        }

        public final void bindView(int i) {
            if (i >= 0 && i < e.this.d.size()) {
                BannerItem bannerItem = (BannerItem) e.this.d.get(i);
                this.f901b.setImageResource(R.drawable.placeholder);
                if (bannerItem.getImageUrl() != null && !bannerItem.getImageUrl().isEmpty()) {
                    Picasso.get().load(bannerItem.getImageUrl()).fit().centerCrop().into(this.f901b);
                }
                this.c.setText(bannerItem.getTitle());
                this.d.setText(bannerItem.getDescription());
                this.e.setText(bannerItem.getActionTitle());
                if (e.this.l != null) {
                    if (bannerItem.isDark()) {
                        if (Build.VERSION.SDK_INT >= 23) {
                            this.c.setTextColor(e.this.l.getColor(R.color.white));
                            this.d.setTextColor(e.this.l.getColor(R.color.white));
                            return;
                        }
                        this.c.setTextColor(e.this.l.getResources().getColor(R.color.white));
                        this.d.setTextColor(e.this.l.getResources().getColor(R.color.white));
                    } else if (Build.VERSION.SDK_INT >= 23) {
                        this.c.setTextColor(e.this.l.getColor(R.color.black));
                        this.d.setTextColor(e.this.l.getColor(R.color.black));
                    } else {
                        this.c.setTextColor(e.this.l.getResources().getColor(R.color.black));
                        this.d.setTextColor(e.this.l.getResources().getColor(R.color.black));
                    }
                }
            }
        }

        public final void onClick(View view) {
            if (e.this.g != null) {
                int adapterPosition = getAdapterPosition() - 2;
                if (adapterPosition != -1 && adapterPosition < e.this.d.size()) {
                    e.this.g.onContentClicked((BannerItem) e.this.d.get(adapterPosition), adapterPosition);
                }
            }
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* renamed from: b  reason: collision with root package name */
        private RecyclerView f903b;
        private f c;

        public b(View view) {
            super(view);
            this.f903b = (RecyclerView) view.findViewById(R.id.item_snapp_services_recyclerview);
            GridLayoutManager gridLayoutManager = new GridLayoutManager(e.this.l, this.f903b.getContext().getResources().getInteger(R.integer.snapp_group_services_span_count));
            this.c = new f(e.this.e, e.this.h);
            this.f903b.setLayoutManager(gridLayoutManager);
            if (g.getSavedLocale() == 10 || g.getSavedLocale() == 50 || g.getSavedLocale() == 40 || g.getSavedLocale() == 30) {
                this.f903b.setLayoutDirection(1);
            } else {
                this.f903b.setLayoutDirection(0);
            }
            this.f903b.setAdapter(this.c);
        }

        public final void bindView() {
            f fVar = this.c;
            if (fVar != null) {
                fVar.notifyDataSetChanged();
            }
        }
    }

    public class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f904a;
        public View alpha;

        /* renamed from: b  reason: collision with root package name */
        AppCompatTextView f905b;
        ImageView c;
        LinearLayout d;
        AppCompatTextView e;
        ImageView f;
        public View frame;
        LinearLayout g;
        AppCompatTextView h;
        ImageView i;

        public c(View view) {
            super(view);
            this.f904a = (LinearLayout) view.findViewById(R.id.item_snapp_group_header_first_item);
            this.d = (LinearLayout) view.findViewById(R.id.item_snapp_group_header_sec_item);
            this.g = (LinearLayout) view.findViewById(R.id.item_snapp_group_header_third_item);
            this.f904a.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    e.c.this.d(view);
                }
            });
            this.d.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    e.c.this.c(view);
                }
            });
            this.g.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    e.c.this.b(view);
                }
            });
            this.c = (ImageView) view.findViewById(R.id.item_snapp_group_header_first_item_imageview);
            this.f = (ImageView) view.findViewById(R.id.item_snapp_group_header_sec_item_imageview);
            this.i = (ImageView) view.findViewById(R.id.item_snapp_group_header_third_item_imageview);
            this.f905b = (AppCompatTextView) view.findViewById(R.id.item_snapp_group_header_first_item_textview);
            this.e = (AppCompatTextView) view.findViewById(R.id.item_snapp_group_header_sec_item_textview);
            this.h = (AppCompatTextView) view.findViewById(R.id.item_snapp_group_header_third_item_textview);
            this.frame = view.findViewById(R.id.item_snapp_group_header_frame);
            this.alpha = view.findViewById(R.id.item_snapp_group_header_alpha);
            this.alpha.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    e.c.this.a(view);
                }
            });
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void d(View view) {
            if (e.this.i != null) {
                e.this.i.onItemClicked(0);
            }
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void c(View view) {
            if (e.this.i != null) {
                e.this.i.onItemClicked(1);
            }
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void b(View view) {
            if (e.this.i != null) {
                e.this.i.onItemClicked(2);
            }
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            if (e.this.i != null) {
                try {
                    cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("Services", "TaponMap").build());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    com.a.a.a.logException(e2);
                }
                e.this.i.onItemClicked(0);
            }
        }
    }

    public interface d {
        void onContentClicked(BannerItem bannerItem, int i);
    }

    /* renamed from: cab.snapp.passenger.units.main.a.e$e  reason: collision with other inner class name */
    public interface C0022e {
        void onItemClicked(ServiceItem serviceItem);
    }

    public interface f {
        void onItemClicked(int i);
    }

    public final int getItemViewType(int i2) {
        if (i2 == 0) {
            return 0;
        }
        return i2 == 1 ? 1 : 2;
    }

    public e(List<BannerItem> list, List<ServiceItem> list2, List<ServiceTypeItem> list3) {
        this.d = list;
        this.e = list2;
        this.f = list3;
    }

    public final void setContentOnClickListener(d dVar) {
        this.g = dVar;
    }

    public final void setItemOnClickListener(C0022e eVar) {
        this.h = eVar;
    }

    public final void setRideItemOnClickListener(f fVar) {
        this.i = fVar;
    }

    public final void setSnappJekBottomSheetCallback(c cVar) {
        this.j = cVar;
    }

    public final void setSnappJekBottomSheetScrollListener(d dVar) {
        this.k = dVar;
    }

    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        this.l = viewGroup.getContext();
        if (i2 == 1) {
            return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_snapp_services, viewGroup, false));
        }
        if (i2 == 2) {
            return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_snapp_group_banner, viewGroup, false));
        }
        if (i2 != 0) {
            return null;
        }
        c cVar = new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_snapp_group_header, viewGroup, false));
        c cVar2 = this.j;
        if (cVar2 != null) {
            cVar2.setHeaderFrame(cVar.frame);
        }
        d dVar = this.k;
        if (dVar != null) {
            dVar.setAlphaView(cVar.alpha);
        }
        return cVar;
    }

    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof b) {
            ((b) viewHolder).bindView();
        } else if (viewHolder instanceof a) {
            ((a) viewHolder).bindView(i2 - 2);
        } else {
            if (viewHolder instanceof c) {
                c cVar = (c) viewHolder;
                int size = e.this.f.size();
                if (size == 1) {
                    cVar.f904a.setVisibility(0);
                    cVar.d.setVisibility(8);
                    cVar.g.setVisibility(8);
                } else if (size == 2) {
                    cVar.f904a.setVisibility(0);
                    cVar.d.setVisibility(0);
                    cVar.g.setVisibility(8);
                } else if (size != 3) {
                    cVar.f904a.setVisibility(0);
                    cVar.d.setVisibility(0);
                    cVar.g.setVisibility(0);
                } else {
                    cVar.f904a.setVisibility(0);
                    cVar.d.setVisibility(0);
                    cVar.g.setVisibility(0);
                }
                for (int i3 = 0; i3 < e.this.f.size(); i3++) {
                    ServiceTypeItem serviceTypeItem = e.this.f.get(i3);
                    if (i3 == 0) {
                        cVar.f905b.setText(serviceTypeItem.getName());
                        if (serviceTypeItem.getIconUrl() != null && !TextUtils.isEmpty(serviceTypeItem.getIconUrl())) {
                            Picasso.get().load(serviceTypeItem.getIconUrl()).fit().centerInside().error((int) R.drawable.ic_snapp_group_placeholder).into(cVar.c);
                        }
                    } else if (i3 == 1) {
                        cVar.e.setText(serviceTypeItem.getName());
                        if (serviceTypeItem.getIconUrl() != null && !TextUtils.isEmpty(serviceTypeItem.getIconUrl())) {
                            Picasso.get().load(serviceTypeItem.getIconUrl()).fit().centerInside().error((int) R.drawable.ic_snapp_group_placeholder).into(cVar.f);
                        }
                    } else if (i3 == 2) {
                        cVar.h.setText(serviceTypeItem.getName());
                        if (serviceTypeItem.getIconUrl() != null && !TextUtils.isEmpty(serviceTypeItem.getIconUrl())) {
                            Picasso.get().load(serviceTypeItem.getIconUrl()).fit().centerInside().error((int) R.drawable.ic_snapp_group_placeholder).into(cVar.i);
                        }
                    }
                }
            }
        }
    }

    public final int getItemCount() {
        return this.d.size() + 1 + 1;
    }
}
