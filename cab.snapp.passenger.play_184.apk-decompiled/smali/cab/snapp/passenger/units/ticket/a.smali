.class public Lcab/snapp/passenger/units/ticket/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/ticket/d;",
        "Lcab/snapp/passenger/units/ticket/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public relation:Ljava/lang/String;

.field public rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

.field public ticketItem:Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

.field public ticketType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ticket/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120264

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ticket/c;->onSendSuccess(Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->pressBack()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ticket/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ticket/c;->onSendFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$VeOFnqjmUY1asqJcP-Y9TVJ0C_M(Lcab/snapp/passenger/units/ticket/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ticket/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$WqkOA6dsnQ6fTpsbctL-1IviqF0(Lcab/snapp/passenger/units/ticket/a;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/ticket/a;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method


# virtual methods
.method public handleIssueDescLength(Ljava/lang/CharSequence;)V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ticket/c;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/ticket/c;->onShowIssueDescCounts(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 10

    .line 148
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/ticket/a;)V

    .line 154
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ticket/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ticket/c;->onInitialize()V

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 162
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Key Support Type"

    .line 165
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcab/snapp/passenger/units/ticket/a;->ticketType:I

    :cond_2
    const-string v2, "Key Support Relation"

    .line 169
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcab/snapp/passenger/units/ticket/a;->relation:Ljava/lang/String;

    :cond_3
    const-string v2, "Key Ride History Info"

    .line 173
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/RideHistoryInfo;

    iput-object v2, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    :cond_4
    const-string v2, "Key Ticket Item"

    .line 177
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 179
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    iput-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->ticketItem:Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    .line 183
    :cond_5
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->ticketItem:Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    const-string v2, ""

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_6
    move-object v4, v2

    .line 184
    :goto_0
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->ticketItem:Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_7
    move-object v5, v2

    .line 185
    :goto_1
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 186
    :goto_2
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    .line 187
    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getHumanReadableID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_9
    move-object v6, v2

    .line 191
    :goto_3
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    const-string v3, " "

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const v9, 0x7f1200e7

    invoke-virtual {v7, v9}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v7}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getOriginFormattedAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v1, v2

    .line 192
    :goto_4
    iget-object v7, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-eqz v7, :cond_b

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v7, 0x7f120266

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 197
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcab/snapp/passenger/units/ticket/c;

    invoke-virtual/range {v3 .. v8}, Lcab/snapp/passenger/units/ticket/c;->onShowTicketDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 206
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 207
    iget-object v0, p0, Lcab/snapp/passenger/units/ticket/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Support Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public pressBack()V
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ticket/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public sendTicket(Ljava/lang/String;)V
    .locals 2

    .line 98
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;-><init>()V

    .line 99
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->relation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->setRelation(Ljava/lang/String;)V

    .line 100
    iget v1, p0, Lcab/snapp/passenger/units/ticket/a;->ticketType:I

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->setTicketType(I)V

    .line 101
    iget-object v1, p0, Lcab/snapp/passenger/units/ticket/a;->ticketItem:Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->setType(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;->setText(Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcab/snapp/passenger/units/ticket/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 108
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->sendTicket(Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/ticket/-$$Lambda$a$WqkOA6dsnQ6fTpsbctL-1IviqF0;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/ticket/-$$Lambda$a$WqkOA6dsnQ6fTpsbctL-1IviqF0;-><init>(Lcab/snapp/passenger/units/ticket/a;)V

    new-instance v1, Lcab/snapp/passenger/units/ticket/-$$Lambda$a$VeOFnqjmUY1asqJcP-Y9TVJ0C_M;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ticket/-$$Lambda$a$VeOFnqjmUY1asqJcP-Y9TVJ0C_M;-><init>(Lcab/snapp/passenger/units/ticket/a;)V

    .line 109
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/ticket/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method
