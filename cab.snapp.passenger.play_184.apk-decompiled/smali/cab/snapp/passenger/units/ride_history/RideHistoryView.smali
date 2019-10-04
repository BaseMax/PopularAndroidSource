.class public Lcab/snapp/passenger/units/ride_history/RideHistoryView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/ride_history/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/ride_history/c;

.field private b:Lcab/snapp/passenger/f/r;

.field loading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a026f
    .end annotation
.end field

.field rideHistoryEmptyLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a026c
    .end annotation
.end field

.field rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0273
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->a:Lcab/snapp/passenger/units/ride_history/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_history/c;->onBackButtonClicked()V

    return-void
.end method

.method public static synthetic lambda$nQUeZYDdgZw-q5TSSA-A6JPrc6k(Lcab/snapp/passenger/units/ride_history/RideHistoryView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fullScrollUp()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public hideEmptyList()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryEmptyLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 182
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 183
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 184
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->b:Lcab/snapp/passenger/f/r;

    .line 185
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f1201da

    .line 186
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 187
    new-instance v1, Lcab/snapp/passenger/units/ride_history/-$$Lambda$RideHistoryView$nQUeZYDdgZw-q5TSSA-A6JPrc6k;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_history/-$$Lambda$RideHistoryView$nQUeZYDdgZw-q5TSSA-A6JPrc6k;-><init>(Lcab/snapp/passenger/units/ride_history/RideHistoryView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 191
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 192
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcab/snapp/passenger/units/ride_history/RideHistoryView$1;

    invoke-direct {v2, p0, v0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView$1;-><init>(Lcab/snapp/passenger/units/ride_history/RideHistoryView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setAdapter(Lcab/snapp/passenger/a/h;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 24
    check-cast p1, Lcab/snapp/passenger/units/ride_history/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->setPresenter(Lcab/snapp/passenger/units/ride_history/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/ride_history/c;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->a:Lcab/snapp/passenger/units/ride_history/c;

    return-void
.end method

.method public showEmptyList()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryEmptyLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public showLoading()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->b:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showRequestError(I)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->getContext()Landroid/content/Context;

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

    .line 165
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/RideHistoryView;->rideHistoryRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
