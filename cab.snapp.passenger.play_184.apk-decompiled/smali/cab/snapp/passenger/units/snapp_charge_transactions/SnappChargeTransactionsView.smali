.class public Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/snapp_charge_transactions/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/snapp_charge_transactions/c;

.field protected b:Lbutterknife/Unbinder;

.field backLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c3
    .end annotation
.end field

.field emptyStatRl:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02c0
    .end annotation
.end field

.field snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02c1
    .end annotation
.end field

.field snappLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a02c2
    .end annotation
.end field

.field toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01d9
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public fullScrollUp()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public hideEmptyList()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->emptyStatRl:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public onBackLayoutClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01c3
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->a:Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 124
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 125
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->b:Lbutterknife/Unbinder;

    .line 126
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 127
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;

    invoke-direct {v2, p0, v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView$1;-><init>(Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setAdapter(Lcab/snapp/passenger/a/b;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 31
    check-cast p1, Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->setPresenter(Lcab/snapp/passenger/units/snapp_charge_transactions/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/snapp_charge_transactions/c;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->a:Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showEmptyList()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->emptyStatRl:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    return-void
.end method

.method public showRequestError(I)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public smoothScrollList(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/SnappChargeTransactionsView;->snappChargeTransactionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
