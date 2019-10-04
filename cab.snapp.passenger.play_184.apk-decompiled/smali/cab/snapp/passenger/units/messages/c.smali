.class public final Lcab/snapp/passenger/units/messages/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/messages/MessagesView;",
        "Lcab/snapp/passenger/units/messages/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final itemMoreClicked(I)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/c;->a:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;->getItemAtPosition(I)Lcab/snapp/passenger/data/models/Messages;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Messages;->getMessageUrl()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/a;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CONTENT_URL_KEY"

    .line 1111
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const-string v2, "IS_FROM_INBOX"

    .line 1112
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1113
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/messages/d;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/messages/d;->routeToWebHost(Landroid/os/Bundle;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final onAfterDataRequest()V
    .locals 1

    .line 2089
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/MessagesView;

    if-eqz v0, :cond_0

    .line 2095
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/MessagesView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onBackButtonClicked()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onBeforeDataRequest()V
    .locals 1

    .line 2075
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/MessagesView;

    if-eqz v0, :cond_0

    .line 2081
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/MessagesView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onDataRequestError(Ljava/lang/String;)V
    .locals 0

    .line 3061
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/messages/MessagesView;

    if-eqz p1, :cond_0

    .line 3067
    invoke-virtual {p1}, Lcab/snapp/passenger/units/messages/MessagesView;->showEmptyView()V

    :cond_0
    return-void
.end method

.method public final onDataRequestSucceed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Messages;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/MessagesView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 138
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/MessagesView;->hideEmptyView()V

    .line 139
    new-instance v1, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;

    invoke-direct {v1, p1}, Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/messages/c;->a:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;

    .line 140
    iget-object p1, p0, Lcab/snapp/passenger/units/messages/c;->a:Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/messages/MessagesView;->setupRecyclerView(Lcab/snapp/passenger/units/messages/adapter/MessagesAdapter;)V

    return-void

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/MessagesView;->showEmptyView()V

    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/MessagesView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/MessagesView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/MessagesView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/MessagesView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 153
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
