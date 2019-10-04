.class public Lcab/snapp/passenger/units/referral/ReferralView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/referral/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/referral/c;

.field appsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e2
    .end annotation
.end field

.field private b:Lcab/snapp/snappuikit/c;

.field codeTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e0
    .end annotation
.end field

.field introTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e3
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03e1
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcab/snapp/passenger/units/referral/ReferralView;->a:Lcab/snapp/passenger/units/referral/c;

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1}, Lcab/snapp/passenger/units/referral/c;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$w22yuG0N9CCE4ogY07bM_89by-E(Lcab/snapp/passenger/units/referral/ReferralView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/referral/ReferralView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fillReferralAppsRecyclerView(Lcab/snapp/passenger/units/referral/a/a;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->appsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 167
    iget-object p2, p0, Lcab/snapp/passenger/units/referral/ReferralView;->appsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 191
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 192
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 193
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->b:Lcab/snapp/snappuikit/c;

    .line 1149
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->b:Lcab/snapp/snappuikit/c;

    const v1, 0x7f1200e5

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 1150
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->b:Lcab/snapp/snappuikit/c;

    new-instance v1, Lcab/snapp/passenger/units/referral/-$$Lambda$ReferralView$w22yuG0N9CCE4ogY07bM_89by-E;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/referral/-$$Lambda$ReferralView$w22yuG0N9CCE4ogY07bM_89by-E;-><init>(Lcab/snapp/passenger/units/referral/ReferralView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method onReferalCodeClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03e0
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->a:Lcab/snapp/passenger/units/referral/c;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/c;->onReferalCodeClicked()V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 23
    check-cast p1, Lcab/snapp/passenger/units/referral/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/referral/ReferralView;->setPresenter(Lcab/snapp/passenger/units/referral/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/referral/c;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcab/snapp/passenger/units/referral/ReferralView;->a:Lcab/snapp/passenger/units/referral/c;

    return-void
.end method

.method public setReferralCodeText(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->codeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReferralIntroText(Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->introTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/ReferralView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
