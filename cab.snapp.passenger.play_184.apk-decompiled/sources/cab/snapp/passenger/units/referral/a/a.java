package cab.snapp.passenger.units.referral.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cab.snapp.passenger.play.R;
import java.util.List;

public final class a extends RecyclerView.Adapter<C0023a> {

    /* renamed from: a  reason: collision with root package name */
    private final List<ResolveInfo> f1051a;

    /* renamed from: b  reason: collision with root package name */
    private final cab.snapp.passenger.units.referral.b.a f1052b;
    private Context c;
    private PackageManager d;

    /* renamed from: cab.snapp.passenger.units.referral.a.a$a  reason: collision with other inner class name */
    public static class C0023a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f1053a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f1054b;

        public C0023a(View view) {
            super(view);
            this.f1053a = (TextView) view.findViewById(R.id.item__referral_label);
            this.f1054b = (ImageView) view.findViewById(R.id.item_referral_icon);
        }
    }

    public a(cab.snapp.passenger.units.referral.b.a aVar, List<ResolveInfo> list) {
        this.f1052b = aVar;
        this.f1051a = list;
    }

    public final C0023a onCreateViewHolder(ViewGroup viewGroup, int i) {
        this.c = viewGroup.getContext();
        this.d = this.c.getPackageManager();
        return new C0023a(LayoutInflater.from(this.c).inflate(R.layout.item_referral_app_grid, viewGroup, false));
    }

    public final void onBindViewHolder(C0023a aVar, int i) {
        ResolveInfo resolveInfo = this.f1051a.get(i);
        if (resolveInfo != null) {
            aVar.f1053a.setText(resolveInfo.loadLabel(this.d));
            aVar.f1054b.setImageDrawable(resolveInfo.loadIcon(this.d));
            aVar.f1054b.setOnClickListener(new View.OnClickListener(resolveInfo) {
                private final /* synthetic */ ResolveInfo f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    a.this.a(this.f$1, view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ResolveInfo resolveInfo, View view) {
        this.f1052b.shareAppsClicked(resolveInfo);
    }

    public final int getItemCount() {
        return this.f1051a.size();
    }
}
