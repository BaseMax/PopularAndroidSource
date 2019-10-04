.class public Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/charge_recently/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/charge_recently/c;

.field protected b:Lbutterknife/Unbinder;

.field private c:Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;

.field closeIv:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01ba
    .end annotation
.end field

.field recentMobileNumberNotFound:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025e
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025f
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01ba
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->a:Lcab/snapp/passenger/units/charge_recently/c;

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1080
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge_recently/a;->a()V

    .line 58
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->c:Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public hideNotFoundError()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recentMobileNumberNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 83
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public setAdapter(Lcab/snapp/passenger/a/d;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setController(Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->c:Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 25
    check-cast p1, Lcab/snapp/passenger/units/charge_recently/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->setPresenter(Lcab/snapp/passenger/units/charge_recently/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/charge_recently/c;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->a:Lcab/snapp/passenger/units/charge_recently/c;

    return-void
.end method

.method public showNotFoundError()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_recently/ChargeRecentlyMobileNumbersView;->recentMobileNumberNotFound:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method
