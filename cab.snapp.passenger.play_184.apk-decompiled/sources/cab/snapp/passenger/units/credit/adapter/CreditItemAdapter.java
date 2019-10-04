package cab.snapp.passenger.units.credit.adapter;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.c.a.b;
import cab.snapp.passenger.data.models.Transaction;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.g.a;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.credit.adapter.CreditItemAdapter;
import java.text.DecimalFormat;
import java.util.List;

public final class CreditItemAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private final List<Transaction> f692a;

    /* renamed from: b  reason: collision with root package name */
    private a f693b;

    class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(2131362190)
        TextView itemCreditActionTv;
        @BindView(2131362191)
        FrameLayout itemCreditContainer;
        @BindView(2131362192)
        TextView itemCreditDateTv;
        @BindView(2131362193)
        TextView itemCreditDescTv;

        ViewHolder(View view) {
            super(view);
            ButterKnife.bind((Object) this, view);
        }
    }

    public class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.itemCreditContainer = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.item_credit_container, "field 'itemCreditContainer'", FrameLayout.class);
            viewHolder.itemCreditDateTv = (TextView) Utils.findRequiredViewAsType(view, R.id.item_credit_date_tv, "field 'itemCreditDateTv'", TextView.class);
            viewHolder.itemCreditActionTv = (TextView) Utils.findRequiredViewAsType(view, R.id.item_credit_action_tv, "field 'itemCreditActionTv'", TextView.class);
            viewHolder.itemCreditDescTv = (TextView) Utils.findRequiredViewAsType(view, R.id.item_credit_desc_tv, "field 'itemCreditDescTv'", TextView.class);
        }

        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder != null) {
                this.target = null;
                viewHolder.itemCreditContainer = null;
                viewHolder.itemCreditDateTv = null;
                viewHolder.itemCreditActionTv = null;
                viewHolder.itemCreditDescTv = null;
                return;
            }
            throw new IllegalStateException("Bindings already cleared.");
        }
    }

    public CreditItemAdapter(List<Transaction> list) {
        this.f692a = list;
    }

    public final a getClickListener() {
        return this.f693b;
    }

    public final void setClickListener(a aVar) {
        this.f693b = aVar;
    }

    public final ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_credit, viewGroup, false));
    }

    public final void onBindViewHolder(ViewHolder viewHolder, int i) {
        String str;
        Transaction transaction = this.f692a.get(i);
        Context context = viewHolder.itemView.getContext();
        if (g.isCurrentLocalRtl()) {
            viewHolder.itemCreditDateTv.setGravity(3);
            viewHolder.itemCreditDateTv.setText(g.changeNumbersBasedOnCurrentLocale(b.getJalaliTimeDate(transaction.getCreatedAt()).replace(" ", "‎ ")));
        } else {
            viewHolder.itemCreditDateTv.setGravity(5);
            viewHolder.itemCreditDateTv.setText(transaction.getCreatedAt());
        }
        if (transaction.getDescription() == null || transaction.getDescription().isEmpty()) {
            str = context.getResources().getString(R.string.credit_default_type);
            switch (transaction.getTransactionType()) {
                case 1:
                    str = context.getResources().getString(R.string.credit_for_ride);
                    break;
                case 2:
                    str = context.getResources().getString(R.string.credit_ussd_payment);
                    break;
                case 3:
                    str = context.getResources().getString(R.string.credit_online_payment);
                    break;
                case 4:
                    str = context.getResources().getString(R.string.credit_cash_payment);
                    break;
                case 5:
                    str = context.getResources().getString(R.string.credit_cancel_ride);
                    break;
                case 6:
                    str = context.getString(R.string.credit_for_refferal);
                    break;
                case 7:
                    str = context.getString(R.string.credit_for_voucher);
                    break;
                case 8:
                    str = context.getString(R.string.credit_for_initial);
                    break;
                case 9:
                    str = context.getString(R.string.backpay_credit);
                    break;
                case 10:
                    str = context.getString(R.string.migration_from_taxiyaab);
                    break;
            }
        } else {
            str = transaction.getDescription();
        }
        viewHolder.itemCreditDescTv.setText(str);
        if (transaction.getDebtor() > 0.0d) {
            viewHolder.itemCreditDateTv.setBackground(context.getResources().getDrawable(R.color.colorPrimary));
            viewHolder.itemCreditDescTv.setTextColor(context.getResources().getColor(R.color.colorPrimary));
            String a2 = a(Double.valueOf(Math.abs(transaction.getDebtor())));
            SpannableString spannableString = new SpannableString(a2 + "  " + context.getResources().getString(R.string.credit_decreased));
            spannableString.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.green_blue_two)), 0, a2.length(), 33);
            spannableString.setSpan(new AbsoluteSizeSpan(16, true), 0, a2.length(), 33);
            viewHolder.itemCreditActionTv.setText(spannableString);
        } else if (transaction.getCreditor() > 0.0d) {
            viewHolder.itemCreditDateTv.setBackground(context.getResources().getDrawable(R.color.colorAccent));
            viewHolder.itemCreditDescTv.setTextColor(context.getResources().getColor(R.color.green_blue_two));
            String a3 = a(Double.valueOf(transaction.getCreditor()));
            SpannableString spannableString2 = new SpannableString(a3 + "  " + context.getResources().getString(R.string.credit_raised));
            spannableString2.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.green_blue_two)), 0, a3.length(), 33);
            spannableString2.setSpan(new AbsoluteSizeSpan(16, true), 0, a3.length(), 33);
            viewHolder.itemCreditActionTv.setText(spannableString2);
        }
        if (this.f693b != null) {
            viewHolder.itemCreditContainer.setOnClickListener(new View.OnClickListener(viewHolder, i, transaction) {
                private final /* synthetic */ CreditItemAdapter.ViewHolder f$1;
                private final /* synthetic */ int f$2;
                private final /* synthetic */ Transaction f$3;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                }

                public final void onClick(View view) {
                    CreditItemAdapter.this.a(this.f$1, this.f$2, this.f$3, view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ViewHolder viewHolder, int i, Transaction transaction, View view) {
        this.f693b.onClick(viewHolder.itemCreditContainer.getId(), i, transaction);
    }

    private static String a(Double d) {
        return g.changeNumbersBasedOnCurrentLocale(new DecimalFormat("#,###").format(d));
    }

    public final int getItemCount() {
        List<Transaction> list = this.f692a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final void updateData(List<Transaction> list) {
        List<Transaction> list2 = this.f692a;
        if (list2 != null) {
            list2.addAll(list);
            notifyDataSetChanged();
        }
    }
}
