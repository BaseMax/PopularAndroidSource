package cab.snapp.passenger.units.setting;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.b.d;
import cab.snapp.snappdialog.dialogViews.a.i;
import cab.snapp.snappuikit.SnappCheckBox;
import cab.snapp.snappuikit.c;
import java.util.ArrayList;
import java.util.Arrays;

public class SettingView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1183a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f1184b;
    private c c;
    /* access modifiers changed from: private */
    public int d = -1;
    @BindView(2131362935)
    TextView defaultWaletTextView;
    /* access modifiers changed from: private */
    public int e = 1;
    private b f;
    private b g;
    private r h;
    private ArrayList<String> i;
    @BindView(2131362937)
    TextView languageSelectSummaryTextView;
    @BindView(2131362938)
    TextView languageSelectTitleTextView;
    @BindView(2131362914)
    SnappCheckBox newsLetterCheckBox;
    @BindView(2131362916)
    TextView newsLetterSummary;
    @BindView(2131362923)
    SnappCheckBox rideInfoEmailCheckBox;
    @BindView(2131362925)
    TextView rideInfoEmailSummary;
    @BindView(2131362927)
    SnappCheckBox rideInfoSMSCheckBox;
    @BindView(2131362929)
    TextView rideInfoSMSSummary;
    @BindView(2131362931)
    SnappCheckBox rideTransactionSMSCheckBox;
    @BindView(2131362933)
    TextView rideTransactionSummary;
    @BindView(2131362911)
    SnappCheckBox statisticInfoCheckBox;
    @BindView(2131362939)
    SnappCheckBox trafficMapCheckBox;
    @BindView(2131362940)
    TextView trafficMapSummary;
    @BindView(2131362919)
    TextView trafficSectionTitle;
    @BindView(2131362941)
    TextView trafficShowItemTitle;

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.i = new ArrayList<>(Arrays.asList(new String[]{getContext().getString(R.string.default_wallet_snapp), getContext().getString(R.string.default_wallet_ap)}));
    }

    public SettingView(Context context) {
        super(context);
    }

    public SettingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SettingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @OnClick({2131362914, 2131362923, 2131362927, 2131362931, 2131362911, 2131362939})
    public void onCheckBoxClick(SnappCheckBox snappCheckBox) {
        c cVar = this.f1183a;
        if (cVar != null) {
            cVar.checkBoxClicked(snappCheckBox);
        }
    }

    @OnClick({2131362917, 2131362916, 2131362926, 2131362925, 2131362930, 2131362929, 2131362934, 2131362933, 2131362941, 2131362940, 2131362938, 2131362937, 2131362936, 2131362935})
    public void onItemsTitleOrSummaryClick(View view) {
        switch (view.getId()) {
            case R.id.view_setting_add_to_news_letter_summary_textView /*2131362916*/:
            case R.id.view_setting_add_to_news_letter_title_textView /*2131362917*/:
                this.f1183a.onItemsTitleOrSummaryClick(this.newsLetterCheckBox);
                break;
            case R.id.view_setting_receive_ride_emails_summary_textView /*2131362925*/:
            case R.id.view_setting_receive_ride_emails_title_textView /*2131362926*/:
                this.f1183a.onItemsTitleOrSummaryClick(this.rideInfoEmailCheckBox);
                return;
            case R.id.view_setting_receive_ride_sms_summary_textView /*2131362929*/:
            case R.id.view_setting_receive_ride_sms_title_textView /*2131362930*/:
                this.f1183a.onItemsTitleOrSummaryClick(this.rideInfoSMSCheckBox);
                return;
            case R.id.view_setting_ride_transaction_sms_summary_textView /*2131362933*/:
            case R.id.view_setting_ride_transaction_sms_title_textView /*2131362934*/:
                this.f1183a.onItemsTitleOrSummaryClick(this.rideTransactionSMSCheckBox);
                return;
            case R.id.view_setting_select_default_wallet_summary_textView /*2131362935*/:
            case R.id.view_setting_select_default_wallet_title_textView /*2131362936*/:
                this.f1183a.defaultWalletSelectTextViewClicked();
                break;
            case R.id.view_setting_select_language_summary_textView /*2131362937*/:
            case R.id.view_setting_select_language_title_textView /*2131362938*/:
                this.f1183a.languageSelectTextViewClicked();
                return;
            case R.id.view_setting_show_traffic_summary_textView /*2131362940*/:
            case R.id.view_setting_show_traffic_title_textView /*2131362941*/:
                this.f1183a.onItemsTitleOrSummaryClick(this.trafficMapCheckBox);
                return;
        }
    }

    public void showMapSetting() {
        this.trafficSectionTitle.setVisibility(0);
        this.trafficMapSummary.setVisibility(0);
        this.trafficMapCheckBox.setVisibility(0);
        this.trafficShowItemTitle.setVisibility(0);
    }

    public void hideMapSetting() {
        this.trafficSectionTitle.setVisibility(8);
        this.trafficMapSummary.setVisibility(8);
        this.trafficMapCheckBox.setVisibility(8);
        this.trafficShowItemTitle.setVisibility(8);
    }

    public void setNewsLetterCheckBox(boolean z) {
        this.newsLetterCheckBox.setChecked(z);
    }

    public void setRideInfoEmailCheckBox(boolean z) {
        this.rideInfoEmailCheckBox.setChecked(z);
    }

    public void setRideInfoSMSCheckBox(boolean z) {
        this.rideInfoSMSCheckBox.setChecked(z);
    }

    public void setTransactionCheckBox(boolean z) {
        this.rideTransactionSMSCheckBox.setChecked(z);
    }

    public void setStatisticalInfoCheckBox(boolean z) {
        this.statisticInfoCheckBox.setChecked(z);
    }

    public void setTrafficMapCheckBox(boolean z) {
        this.trafficMapCheckBox.setChecked(z);
    }

    public void setNewsLetterSummary(boolean z) {
        setSummaryState(this.newsLetterSummary, z);
    }

    public void setRideInfoEmailSummary(boolean z) {
        setSummaryState(this.rideInfoEmailSummary, z);
    }

    public void setRideInfoSMSSummary(boolean z) {
        setSummaryState(this.rideInfoSMSSummary, z);
    }

    public void setTransactionSummary(boolean z) {
        setSummaryState(this.rideTransactionSummary, z);
    }

    public void setTrafficMapSummary(boolean z) {
        setSummaryState(this.trafficMapSummary, z);
    }

    public void setLanguageSummary(String str) {
        this.languageSelectSummaryTextView.setText(str);
    }

    public void setSummaryState(TextView textView, boolean z) {
        Context context;
        int i2;
        if (textView != null) {
            if (z) {
                context = getContext();
                i2 = R.string.enabled;
            } else {
                context = getContext();
                i2 = R.string.disabled;
            }
            textView.setText(context.getString(i2));
        }
    }

    public void showSelectLanguageDialog() {
        if (getContext() != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(getContext().getString(R.string.persian));
            arrayList.add(getContext().getString(R.string.english));
            this.f = new b.a(getContext()).setIconFont(R.string.ic_font_select_lang).setTheme(0).setDialogTitle((int) R.string.select_language).setDialogViewType(new i.a().setMessageList(arrayList).setSingleItemSelectedListener(new d() {
                public final void onSingleItemSelected(int i, String str) {
                    int unused = SettingView.this.d = i;
                }
            }).build()).setPositiveButtonText((int) R.string.select_this_language).setPositiveButton((int) R.string.select_this_language, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    SettingView.this.b(view);
                }
            }).build();
            this.f.show();
        }
    }

    public void showSelectDefaultWalletDialog() {
        if (getContext() != null) {
            this.g = new b.a(getContext()).setDialogTitle((int) R.string.default_wallet).setIcon(R.drawable.ic_wallet).setDialogViewType(new i.a().setMessageList(this.i).setDefaultCheckedItemPosition(this.e).setMessage(getContext().getString(R.string.default_wallet_dialog_description)).setSingleItemSelectedListener(new d() {
                public final void onSingleItemSelected(int i, String str) {
                    int unused = SettingView.this.e = i;
                }
            }).build()).setPositiveButton((int) R.string.default_wallet_confirmation, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    SettingView.this.a(view);
                }
            }).build();
            this.g.show();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        setSelectedDefaultWalletText(this.i.get(this.e));
        int i2 = this.e;
        b bVar = this.g;
        if (bVar != null) {
            bVar.dismiss();
            this.f1183a.defaultWalletSelectedAtIndex(i2);
        }
    }

    public void setSelectedDefaultWalletText(String str) {
        this.defaultWaletTextView.setText(str);
    }

    public void setSelectedDefaultWalletIndex(int i2) {
        this.e = i2;
        setSelectedDefaultWalletText(this.i.get(i2));
    }

    public void showLoadingDialog() {
        r rVar = this.h;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoadingDialog() {
        r rVar = this.h;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void setPresenter(c cVar) {
        this.f1183a = cVar;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1184b = ButterKnife.bind((Object) this, (View) this);
        this.h = new r(getContext());
        this.c = new c(this);
        this.c.setTitle((int) R.string.settings);
        this.c.setBackButton(R.drawable.ic_arrow_back_white_24dp, new View.OnClickListener() {
            public final void onClick(View view) {
                if (SettingView.this.f1183a != null) {
                    SettingView.this.f1183a.onBackPressed();
                }
            }
        });
    }

    public void removeApWalletFromDefaultWalletList() {
        this.i.remove(1);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        b bVar = this.f;
        if (bVar != null) {
            bVar.dismiss();
            this.f1183a.languageSelectedAtIndex(this.d);
        }
    }
}
