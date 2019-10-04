.class public final Lcab/snapp/passenger/units/support/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/a/n$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/support/SupportView;",
        "Lcab/snapp/passenger/units/support/a;",
        ">;",
        "Lcab/snapp/passenger/a/n$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final onItemClicked(ILcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/support/a;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/support/a;->handleTicketItemClick(Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V

    :cond_0
    return-void
.end method

.method public final onShowTickets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/SupportView;

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcab/snapp/passenger/a/n;

    invoke-direct {v1, p1, p0}, Lcab/snapp/passenger/a/n;-><init>(Ljava/util/List;Lcab/snapp/passenger/a/n$a;)V

    .line 34
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/SupportView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 35
    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/support/SupportView;->loadTickets(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcab/snapp/passenger/a/n;)V

    :cond_0
    return-void
.end method

.method public final onSnappBoxSupportClicked()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/a;->callSnappBoxSupport()V

    :cond_0
    return-void
.end method

.method public final onSnappSupportClicked()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/a;->callSnappSupport()V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/SupportView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/SupportView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/SupportView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/SupportView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 87
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
