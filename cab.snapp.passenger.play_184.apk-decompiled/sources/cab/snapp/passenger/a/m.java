package cab.snapp.passenger.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.data.models.SideMenuData;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import java.text.DecimalFormat;
import java.util.List;

public final class m extends RecyclerView.Adapter<f> {

    /* renamed from: a  reason: collision with root package name */
    private final int f412a = 0;

    /* renamed from: b  reason: collision with root package name */
    private final int f413b = 1;
    private final int c = 2;
    private final int d = 3;
    private Context e;
    private List<SideMenuData> f;
    private e g;
    private long h = -1;
    private String i;
    private boolean j;
    private boolean k;

    public class a extends f {

        /* renamed from: a  reason: collision with root package name */
        ImageView f414a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f415b;
        AppCompatTextView c;

        public a(View view) {
            super(view);
            this.f414a = (ImageView) view.findViewById(R.id.side_menu_row_badge_iv);
            this.f415b = (ImageView) view.findViewById(R.id.side_menu_row_icon_iv);
            this.c = (AppCompatTextView) view.findViewById(R.id.side_menu_row_title_tv);
        }
    }

    public class b extends f {

        /* renamed from: a  reason: collision with root package name */
        ImageView f416a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f417b;
        AppCompatTextView c;

        public b(View view) {
            super(view);
            this.f416a = (ImageView) view.findViewById(R.id.side_menu_row_badge_iv);
            this.f417b = (ImageView) view.findViewById(R.id.side_menu_row_icon_iv);
            this.c = (AppCompatTextView) view.findViewById(R.id.side_menu_row_title_tv);
        }
    }

    public class c extends f {

        /* renamed from: a  reason: collision with root package name */
        ImageView f418a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f419b;
        AppCompatTextView c;
        AppCompatTextView d;

        public c(View view) {
            super(view);
            this.f418a = (ImageView) view.findViewById(R.id.side_menu_row_badge_iv);
            this.f419b = (ImageView) view.findViewById(R.id.side_menu_row_icon_iv);
            this.c = (AppCompatTextView) view.findViewById(R.id.side_menu_row_title_tv);
            this.d = (AppCompatTextView) view.findViewById(R.id.side_menu_row_detail_title_tv);
        }
    }

    public class d extends f {

        /* renamed from: a  reason: collision with root package name */
        ImageView f420a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f421b;
        AppCompatTextView c;
        LinearLayout d;

        public d(View view) {
            super(view);
            this.f420a = (ImageView) view.findViewById(R.id.side_menu_row_badge_iv);
            this.f421b = (ImageView) view.findViewById(R.id.side_menu_row_icon_iv);
            this.c = (AppCompatTextView) view.findViewById(R.id.side_menu_row_title_tv);
            this.d = (LinearLayout) view.findViewById(R.id.side_menu_row_add_credit_btn_layout);
        }
    }

    public interface e {
        void onItemClick(int i, SideMenuData sideMenuData);
    }

    public class f extends RecyclerView.ViewHolder {
        View f;

        public f(View view) {
            super(view);
            this.f = view;
        }
    }

    public m(Context context, List<SideMenuData> list, String str, boolean z, boolean z2, e eVar) {
        this.e = context;
        this.f = list;
        this.i = str;
        this.k = z;
        this.j = z2;
        this.g = eVar;
    }

    public final void updateShowBadgeForBase(boolean z) {
        this.k = z;
        notifyDataSetChanged();
    }

    public final void updateShowBadgeForDetail(boolean z) {
        this.j = z;
        notifyDataSetChanged();
    }

    public final void updateCredit(long j2) {
        this.h = j2;
        notifyDataSetChanged();
    }

    public final void updateDetailTitle(String str) {
        this.i = str;
        notifyDataSetChanged();
    }

    public final void updateData(String str, boolean z, boolean z2) {
        this.i = str;
        this.k = z;
        this.j = z2;
        notifyDataSetChanged();
    }

    public final f onCreateViewHolder(ViewGroup viewGroup, int i2) {
        Context context = this.e;
        if (context != null) {
            if (i2 == 0) {
                return new d(LayoutInflater.from(context).inflate(R.layout.side_menu_credit_row_layout, viewGroup, false));
            }
            if (i2 == 1) {
                return new b(LayoutInflater.from(context).inflate(R.layout.side_menu_base_row_layout, viewGroup, false));
            }
            if (i2 == 2) {
                return new c(LayoutInflater.from(context).inflate(R.layout.side_menu_base_row_with_detail_layout, viewGroup, false));
            }
            if (i2 == 3) {
                return new a(LayoutInflater.from(context).inflate(R.layout.side_menu_gray_row_layout, viewGroup, false));
            }
        }
        return null;
    }

    public final void onBindViewHolder(f fVar, int i2) {
        List<SideMenuData> list = this.f;
        if (list != null && !list.isEmpty() && this.f.size() > i2) {
            SideMenuData sideMenuData = this.f.get(i2);
            if (sideMenuData != null) {
                fVar.f.setOnClickListener(new View.OnClickListener(i2, sideMenuData) {
                    private final /* synthetic */ int f$1;
                    private final /* synthetic */ SideMenuData f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void onClick(View view) {
                        m.this.a(this.f$1, this.f$2, view);
                    }
                });
                if (fVar instanceof d) {
                    d dVar = (d) fVar;
                    dVar.f420a.setVisibility(4);
                    dVar.f421b.setImageResource(sideMenuData.getIcon());
                    if (this.h == -1) {
                        dVar.c.setText("");
                        return;
                    }
                    dVar.c.setText(String.format(this.e.getResources().getString(sideMenuData.getTitle()), new Object[]{g.changeNumbersBasedOnCurrentLocale(DecimalFormat.getInstance().format(this.h))}));
                } else if (fVar instanceof c) {
                    c cVar = (c) fVar;
                    cVar.c.setText(sideMenuData.getTitle());
                    cVar.f419b.setImageResource(sideMenuData.getIcon());
                    cVar.d.setText(this.i);
                    if (!this.j || sideMenuData.getType() != 1) {
                        cVar.f418a.setVisibility(4);
                    } else {
                        cVar.f418a.setVisibility(0);
                    }
                } else if (fVar instanceof b) {
                    if (!this.k || sideMenuData.getType() != 5) {
                        ((b) fVar).f416a.setVisibility(4);
                    } else {
                        ((b) fVar).f416a.setVisibility(0);
                    }
                    b bVar = (b) fVar;
                    bVar.c.setText(sideMenuData.getTitle());
                    bVar.f417b.setImageResource(sideMenuData.getIcon());
                } else if (fVar instanceof a) {
                    a aVar = (a) fVar;
                    aVar.f414a.setVisibility(4);
                    aVar.c.setText(sideMenuData.getTitle());
                    aVar.f415b.setImageResource(sideMenuData.getIcon());
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i2, SideMenuData sideMenuData, View view) {
        e eVar = this.g;
        if (eVar != null) {
            eVar.onItemClick(i2, sideMenuData);
        }
    }

    public final int getItemViewType(int i2) {
        List<SideMenuData> list = this.f;
        int i3 = -1;
        if (list != null && !list.isEmpty() && this.f.size() > i2) {
            SideMenuData sideMenuData = this.f.get(i2);
            if (sideMenuData == null) {
                return -1;
            }
            if (sideMenuData.getType() == 0) {
                return 0;
            }
            i3 = 1;
            if (sideMenuData.getType() == 1) {
                return 2;
            }
            if (sideMenuData.getType() == 9) {
                return 3;
            }
        }
        return i3;
    }

    public final int getItemCount() {
        List<SideMenuData> list = this.f;
        if (list != null) {
            return list.size();
        }
        return 0;
    }
}
