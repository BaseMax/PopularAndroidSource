.class public final Lcab/snapp/passenger/units/ticket/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/ticket/TicketView;",
        "Lcab/snapp/passenger/units/ticket/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ticket/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/ticket/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/a;->pressBack()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public final onInitialize()V
    .locals 2

    .line 33
    new-instance v0, Lcab/snapp/passenger/units/ticket/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/ticket/c$1;-><init>(Lcab/snapp/passenger/units/ticket/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ticket/c;->a:Landroid/text/TextWatcher;

    .line 55
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/c;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ticket/TicketView;->setIssueDescEtTextWatcher(Landroid/text/TextWatcher;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->setStatusBarColor()V

    return-void
.end method

.method public final onSendFail(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_1

    const v1, 0x7f06004b

    .line 130
    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/ticket/TicketView;->showToast(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSendSuccess(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_1

    const v1, 0x7f06004d

    .line 146
    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/ticket/TicketView;->showToast(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 149
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getIssueDescEt()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcab/snapp/c/c;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onSendTicketClicked()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ticket/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getIssueDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/ticket/a;->sendTicket(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onShowIssueDescCounts(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_0

    .line 1115
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ticket/TicketView;->setIssueDescCount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onShowTicketDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ticket/TicketView;->setTicketTitle(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/ticket/TicketView;->setTicketDescription(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 81
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->showRideInfoLayout()V

    .line 82
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/units/ticket/TicketView;->setRideTitleAndCode(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p4}, Lcab/snapp/passenger/units/ticket/TicketView;->setRideAddress(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->hideRideInfoLayout()V

    :cond_1
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/TicketView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/TicketView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 192
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
