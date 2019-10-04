.class public Lcab/snapp/passenger/units/setting/SettingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/setting/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/setting/c;

.field protected b:Lbutterknife/Unbinder;

.field private c:Lcab/snapp/snappuikit/c;

.field private d:I

.field defaultWaletTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0477
    .end annotation
.end field

.field private e:I

.field private f:Lcab/snapp/snappdialog/b;

.field private g:Lcab/snapp/snappdialog/b;

.field private h:Lcab/snapp/passenger/f/r;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field languageSelectSummaryTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0479
    .end annotation
.end field

.field languageSelectTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047a
    .end annotation
.end field

.field newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0462
    .end annotation
.end field

.field newsLetterSummary:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0464
    .end annotation
.end field

.field rideInfoEmailCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046b
    .end annotation
.end field

.field rideInfoEmailSummary:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046d
    .end annotation
.end field

.field rideInfoSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a046f
    .end annotation
.end field

.field rideInfoSMSSummary:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0471
    .end annotation
.end field

.field rideTransactionSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0473
    .end annotation
.end field

.field rideTransactionSummary:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0475
    .end annotation
.end field

.field statisticInfoCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a045f
    .end annotation
.end field

.field trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047b
    .end annotation
.end field

.field trafficMapSummary:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047c
    .end annotation
.end field

.field trafficSectionTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0467
    .end annotation
.end field

.field trafficShowItemTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a047d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->d:I

    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->d:I

    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 71
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->d:I

    const/4 p1, 0x1

    .line 72
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/setting/SettingView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->d:I

    return p1
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 441
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->i:Ljava/util/ArrayList;

    iget v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSelectedDefaultWalletText(Ljava/lang/String;)V

    .line 442
    iget p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    .line 1467
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->g:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 1471
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 1472
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->defaultWalletSelectedAtIndex(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/setting/SettingView;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    return p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 2454
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->f:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_0

    .line 2458
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 2459
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    iget v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->d:I

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->languageSelectedAtIndex(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$0P8MKGl8XZYdnhtwdMYnLfYVYwA(Lcab/snapp/passenger/units/setting/SettingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$jscLqbfXJaCiVaSfvzm8tUADKyA(Lcab/snapp/passenger/units/setting/SettingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideLoadingDialog()V
    .locals 1

    .line 506
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->h:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public hideMapSetting()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficSectionTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappCheckBox;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficShowItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120090

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public onCheckBoxClick(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0462,
            0x7f0a046b,
            0x7f0a046f,
            0x7f0a0473,
            0x7f0a045f,
            0x7f0a047b
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->checkBoxClicked(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 524
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 525
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->b:Lbutterknife/Unbinder;

    .line 526
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->h:Lcab/snapp/passenger/f/r;

    .line 527
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->c:Lcab/snapp/snappuikit/c;

    .line 1222
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->c:Lcab/snapp/snappuikit/c;

    const v1, 0x7f120211

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 1223
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->c:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/setting/SettingView$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/setting/SettingView$1;-><init>(Lcab/snapp/passenger/units/setting/SettingView;)V

    const v2, 0x7f0800bd

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemsTitleOrSummaryClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0465,
            0x7f0a0464,
            0x7f0a046e,
            0x7f0a046d,
            0x7f0a0472,
            0x7f0a0471,
            0x7f0a0476,
            0x7f0a0475,
            0x7f0a047d,
            0x7f0a047c,
            0x7f0a047a,
            0x7f0a0479,
            0x7f0a0478,
            0x7f0a0477
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 172
    :pswitch_1
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->onItemsTitleOrSummaryClick(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void

    .line 179
    :pswitch_2
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/c;->languageSelectTextViewClicked()V

    return-void

    .line 185
    :pswitch_3
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/c;->defaultWalletSelectTextViewClicked()V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->onItemsTitleOrSummaryClick(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void

    .line 158
    :pswitch_5
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->onItemsTitleOrSummaryClick(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void

    .line 151
    :pswitch_6
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->onItemsTitleOrSummaryClick(Lcab/snapp/snappuikit/SnappCheckBox;)V

    return-void

    .line 144
    :pswitch_7
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->onItemsTitleOrSummaryClick(Lcab/snapp/snappuikit/SnappCheckBox;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0464
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public removeApWalletFromDefaultWalletList()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->i:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setLanguageSummary(Ljava/lang/String;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->languageSelectSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNewsLetterCheckBox(Z)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setNewsLetterSummary(Z)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSummaryState(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 31
    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setPresenter(Lcab/snapp/passenger/units/setting/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/setting/c;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->a:Lcab/snapp/passenger/units/setting/c;

    return-void
.end method

.method public setRideInfoEmailCheckBox(Z)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setRideInfoEmailSummary(Z)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSummaryState(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public setRideInfoSMSCheckBox(Z)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setRideInfoSMSSummary(Z)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSummaryState(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public setSelectedDefaultWalletIndex(I)V
    .locals 1

    .line 486
    iput p1, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    .line 487
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSelectedDefaultWalletText(Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedDefaultWalletText(Ljava/lang/String;)V
    .locals 1

    .line 479
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->defaultWaletTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStatisticalInfoCheckBox(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->statisticInfoCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setSummaryState(Landroid/widget/TextView;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1200ad

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120096

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTrafficMapCheckBox(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setTrafficMapSummary(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSummaryState(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public setTransactionCheckBox(Z)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setTransactionSummary(Z)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/setting/SettingView;->setSummaryState(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->h:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showMapSetting()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficSectionTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappCheckBox;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->trafficShowItemTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public showSelectDefaultWalletDialog()V
    .locals 4

    .line 416
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 421
    :cond_0
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/setting/SettingView$3;-><init>(Lcab/snapp/passenger/units/setting/SettingView;)V

    .line 429
    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/i$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/i$a;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/units/setting/SettingView;->i:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object v1

    iget v2, p0, Lcab/snapp/passenger/units/setting/SettingView;->e:I

    .line 431
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setDefaultCheckedItemPosition(I)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object v1

    .line 432
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12008f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object v1

    .line 433
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setSingleItemSelectedListener(Lcab/snapp/snappdialog/b/d;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->build()Lcab/snapp/snappdialog/dialogViews/a/i;

    move-result-object v0

    .line 436
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12008c

    .line 437
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    const v2, 0x7f080190

    .line 438
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    .line 439
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12008e

    new-instance v2, Lcab/snapp/passenger/units/setting/-$$Lambda$SettingView$jscLqbfXJaCiVaSfvzm8tUADKyA;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/setting/-$$Lambda$SettingView$jscLqbfXJaCiVaSfvzm8tUADKyA;-><init>(Lcab/snapp/passenger/units/setting/SettingView;)V

    .line 440
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->g:Lcab/snapp/snappdialog/b;

    .line 445
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->g:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showSelectLanguageDialog()V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120197

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v1, Lcab/snapp/passenger/units/setting/SettingView$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/setting/SettingView$2;-><init>(Lcab/snapp/passenger/units/setting/SettingView;)V

    .line 391
    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/i$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;-><init>()V

    .line 393
    invoke-virtual {v2, v0}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object v0

    .line 394
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setSingleItemSelectedListener(Lcab/snapp/snappdialog/b/d;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->build()Lcab/snapp/snappdialog/dialogViews/a/i;

    move-result-object v0

    .line 398
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120114

    .line 399
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 400
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    const v2, 0x7f1201fe

    .line 401
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    .line 402
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120200

    .line 403
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButtonText(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/setting/-$$Lambda$SettingView$0P8MKGl8XZYdnhtwdMYnLfYVYwA;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/setting/-$$Lambda$SettingView$0P8MKGl8XZYdnhtwdMYnLfYVYwA;-><init>(Lcab/snapp/passenger/units/setting/SettingView;)V

    .line 404
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->f:Lcab/snapp/snappdialog/b;

    .line 408
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method
