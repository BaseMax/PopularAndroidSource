.class public Lcom/ebay/mobile/activities/ComposeNewMessageActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "ComposeNewMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/ebay/app/DialogFragmentCallback;
.implements Lcom/ebay/mobile/connection/messages/ComposeMessageObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/ComposeNewMessageActivity$ContactSellerLinkProcessor;,
        Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;,
        Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;,
        Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;
    }
.end annotation


# static fields
.field protected static final PARAM_MESSAGE_HIDE_PHOTO_LAYOUT:Ljava/lang/String; = "message_hide_photo_layout"

.field protected static final PARAM_MESSAGE_REQUEST_PARAM:Ljava/lang/String; = "message_request_param"

.field protected static final PARAM_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

.field private isCustomMessage:Z

.field private isHideAddPhotos:Z

.field private isTablet:Z

.field private replyText:Ljava/lang/String;

.field private requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

.field private shouldEnableSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ComposeNewMessageAct"

    const-string v2, "Compose New Message Activity"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->shouldEnableSend:Z

    .line 98
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isCustomMessage:Z

    .line 99
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isHideAddPhotos:Z

    .line 100
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isTablet:Z

    return-void
.end method

.method private static addIntentParameters(Landroid/content/Intent;Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;ZZ)V
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "message_request_param"

    .line 192
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "message_type"

    .line 193
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "message_hide_photo_layout"

    .line 194
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;ZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    invoke-static {v0, p3, p1, p2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->addIntentParameters(Landroid/content/Intent;Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;ZZ)V

    return-object v0
.end method

.method private initiateSend()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    invoke-virtual {v1}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->setBody(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    .line 330
    invoke-virtual {v1}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->setSubject(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    .line 331
    invoke-virtual {v1}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->getPhotoUrls()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->setPictureUrls(Ljava/util/ArrayList;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    .line 332
    invoke-virtual {v1}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->getSubjectType()Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->setQuestionType(Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    const v0, 0x7f1200aa

    .line 334
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/ebay/mobile/util/UserNotifications;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 336
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getParentMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->replyToMessage(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$400(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->sendBuyerMessage(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->sendSellerMessage(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private replyToMessage(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 12

    .line 496
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Connect$B;->messageParameterChecks:Lcom/ebay/mobile/dcs/Dcs$Connect$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    .line 497
    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    const p1, 0x7f12077c

    .line 500
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f120785

    .line 501
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f1208ab

    .line 502
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 509
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "M2M"

    .line 513
    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    .line 516
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 518
    :cond_2
    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 520
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200aa

    .line 521
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 520
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 523
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getItem()Lcom/ebay/nautilus/domain/data/EbayItem;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    goto :goto_1

    .line 524
    :cond_3
    iget-wide v1, v1, Lcom/ebay/nautilus/domain/data/EbayItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 525
    :goto_1
    invoke-static {v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v6

    .line 527
    new-instance v0, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v5

    .line 528
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getParentMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getPictureUrls()Ljava/util/ArrayList;

    move-result-object v11

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/ebay/common/net/api/trading/AddMemberMessageRTQNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 530
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v3}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private sendBuyerMessage(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 13

    .line 463
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "M2M"

    .line 466
    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    .line 469
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v1, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    sget-object p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 477
    sget-object p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v0, "sendBuyerMessage: sending a buyer message to ourself;"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->trackM2MEvent(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    .line 484
    new-instance v12, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    .line 485
    invoke-static {v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v3

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$500(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    move-result-object v4

    .line 486
    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$400(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Z

    move-result v5

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$600(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$100(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v8

    .line 487
    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$700(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$800(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v12, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendSellerMessage(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 13

    .line 373
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "M2M"

    .line 377
    invoke-static {p1, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    .line 380
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->trackM2MEvent(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    .line 388
    iget-object v1, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    sget-object p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 392
    sget-object p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v0, "sendSellerMessage: sending a seller message to ourself;"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_1
    new-instance v12, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    .line 397
    invoke-static {v0}, Lcom/ebay/mobile/util/EbayApiUtil;->getTradingApi(Lcom/ebay/nautilus/domain/app/Authentication;)Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;

    move-result-object v3

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$500(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    move-result-object v4

    .line 398
    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$400(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Z

    move-result v5

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$600(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$100(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v8

    .line 399
    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$700(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$800(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/ebay/common/net/api/trading/AddMemberMessageAAQNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/net/api/trading/EbayTradingApi;Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;ZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v12, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 1069
    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1056
    new-instance v0, Lcom/ebay/app/AlertDialogFragment$Builder;

    invoke-direct {v0}, Lcom/ebay/app/AlertDialogFragment$Builder;-><init>()V

    .line 1057
    invoke-virtual {v0, p2}, Lcom/ebay/app/AlertDialogFragment$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    .line 1058
    invoke-virtual {v0, p3}, Lcom/ebay/app/AlertDialogFragment$Builder;->setPositiveButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    if-eqz p1, :cond_0

    .line 1060
    invoke-virtual {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    :cond_0
    if-eqz p4, :cond_1

    .line 1062
    invoke-virtual {v0, p4}, Lcom/ebay/app/AlertDialogFragment$Builder;->setNegativeButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;

    .line 1063
    :cond_1
    invoke-virtual {v0, p5}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/ebay/app/AlertDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showProgress(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ebay/app/ModalProgressFragment;->show(Landroidx/fragment/app/FragmentManager;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/app/ModalProgressFragment;->hide(Landroidx/fragment/app/FragmentManager;)V

    :goto_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;IZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 167
    invoke-static {p0, p2, p3, p4}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->buildIntent(Landroid/content/Context;ZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Landroid/content/Intent;

    move-result-object p2

    .line 168
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 118
    invoke-static {p0, v1, v0, v0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivity(Landroid/app/Activity;IZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    return-void
.end method

.method public static startActivity(Landroidx/fragment/app/Fragment;IZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 132
    invoke-static {p0, p1, p2, v0, p3}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->startActivity(Landroidx/fragment/app/Fragment;IZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V

    return-void
.end method

.method public static startActivity(Landroidx/fragment/app/Fragment;IZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {v0, p2, p3, p4}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->buildIntent(Landroid/content/Context;ZZLcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Landroid/content/Intent;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private trackM2MEvent(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)V
    .locals 7

    .line 414
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getTrackingData()Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 416
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getTrackingData()Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    move-result-object v0

    .line 417
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v2, "M2M"

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 418
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v1

    .line 419
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->getMessageTag()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->getMessageTag()Ljava/util/Map;

    move-result-object v2

    .line 420
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_0
    const/4 v3, 0x0

    .line 423
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    invoke-virtual {v6}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 426
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->BUYER_ASK_QUESTION:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const-string v2, "itm"

    .line 431
    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getItemId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string/jumbo p1, "shipsiteid"

    .line 432
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->getSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v2

    iget v2, v2, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string p1, "curprice"

    .line 433
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->getCurrentPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string p1, "leaf"

    .line 434
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->getPrimaryCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 437
    :cond_3
    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->access$900(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;)Ljava/lang/String;

    move-result-object p1

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 440
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/experimentation/Treatment;->fromString(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 442
    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setExperimentEventTargetTags(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 444
    :cond_4
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;->getSid()Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 446
    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentificationProvider;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 447
    :cond_5
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_2

    .line 451
    :cond_6
    sget-object p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_7

    .line 452
    sget-object p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "M2M message: Tracking data is missing"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateSentMessageFolder()V
    .locals 3

    .line 536
    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFolderContentsDataManager$KeyParams;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFolderContentsDataManager$KeyParams;-><init>(J)V

    .line 539
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFolderContentsDataManager;->getIfExists(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFolderContentsDataManager;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/messages/MessageFolderContentsDataManager;->reloadData()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected createUI()V
    .locals 9

    .line 283
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v1

    .line 284
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$100(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-static {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$200(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->shouldShowFeeWarning()Z

    move-result v0

    .line 287
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "compose.fragment"

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    iput-object v4, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    .line 288
    iget-object v4, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-nez v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    .line 291
    invoke-static {v4}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isCustomMessage:Z

    iget-boolean v6, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isHideAddPhotos:Z

    iget-object v7, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    .line 292
    invoke-virtual {v7}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getParentMessageId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move v8, v0

    .line 290
    invoke-static/range {v1 .. v8}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    .line 293
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0425

    .line 294
    iget-object v3, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    const-string v4, "compose_fragment"

    invoke-virtual {v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 295
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 301
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isCustomMessage:Z

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->shouldEnableSend:Z

    return-void
.end method

.method public getRequestParams()Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1122
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->initiateSend()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->isMessageEdited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->onCancelClicked()V

    goto :goto_0

    .line 1028
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1075
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->cancelLoader(I)V

    return-void
.end method

.method public onCancelClicked()V
    .locals 4

    .line 993
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->isMessageEdited()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120766

    .line 994
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1208ab

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202e5

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 998
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isTablet:Z

    .line 201
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isTablet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x1001

    .line 202
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->setToolbarFlags(I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->setToolbarFlags(I)V

    .line 206
    :goto_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d014a

    .line 208
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->setContentView(I)V

    .line 210
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "message_request_param"

    .line 211
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    iput-object v2, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    const-string v2, "message_type"

    .line 212
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isCustomMessage:Z

    const-string v2, "message_hide_photo_layout"

    .line 213
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isHideAddPhotos:Z

    .line 215
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getParentMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120b70

    .line 217
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->setTitle(I)V

    .line 218
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getInlineReplyText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->replyText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const v0, 0x7f120768

    .line 221
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->setTitle(I)V

    :goto_1
    if-nez p1, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->createUI()V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 242
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1088
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 1089
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showProgress(Z)V

    return-void
.end method

.method public onDialogFragmentResult(Landroidx/fragment/app/DialogFragment;II)V
    .locals 1

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p3, v0, :cond_1

    .line 1009
    iget-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-eqz p1, :cond_0

    .line 1010
    iget-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    invoke-virtual {p1}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->clearPhotoManagerState()V

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p3, v0, :cond_1

    .line 1017
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEnableSendButton(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->shouldEnableSend:Z

    .line 349
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 264
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a09cd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->initiateSend()V

    return v2

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;->isMessageEdited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->onCancelClicked()V

    return v2

    .line 278
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 231
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onPause()V

    const-string v0, "input_method"

    .line 234
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f0a0425

    .line 236
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const v0, 0x7f0a09cd

    .line 250
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 253
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->shouldEnableSend:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 256
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->shouldEnableSend:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onRegisterFragment(Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    if-nez v0, :cond_0

    .line 1082
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->composeNewMessageFragment:Lcom/ebay/mobile/connection/messages/ComposeNewMessageFragment;

    :cond_0
    return-void
.end method

.method public onSendClicked()V
    .locals 0

    .line 987
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->initiateSend()V

    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 6

    .line 555
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 558
    invoke-direct {p0, v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showProgress(Z)V

    .line 559
    instance-of v1, p2, Lcom/ebay/nautilus/shell/content/FwNetLoader;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/ebay/nautilus/shell/content/FwNetLoader;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/content/FwNetLoader;->isError()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p1, v3, :cond_1

    const p1, 0x7f12076c

    .line 561
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, v3}, Lcom/ebay/mobile/util/UserNotifications;->showToast(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 562
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->updateSentMessageFolder()V

    .line 563
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->setResult(I)V

    .line 564
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->finish()V

    goto/16 :goto_1

    .line 566
    :cond_1
    instance-of v1, p2, Lcom/ebay/common/content/EbaySimpleNetLoader;

    if-eqz v1, :cond_7

    .line 568
    check-cast p2, Lcom/ebay/common/content/EbaySimpleNetLoader;

    .line 569
    invoke-static {p2}, Lcom/ebay/mobile/util/Util;->checkForIAFTokenError(Lcom/ebay/common/content/EbaySimpleNetLoader;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    invoke-static {p0}, Lcom/ebay/mobile/MyApp;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    goto :goto_1

    .line 571
    :cond_2
    invoke-static {p2}, Lcom/ebay/mobile/util/Util;->checkForPPAUpgradeError(Lcom/ebay/common/content/EbaySimpleNetLoader;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 572
    invoke-static {p0, v0}, Lcom/ebay/mobile/viewitem/PpaUpgradeConfirmDialog;->create(Landroid/app/Activity;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 573
    :cond_3
    invoke-static {p0}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    if-ne p1, v3, :cond_4

    .line 575
    new-array p1, v3, [Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    .line 576
    invoke-static {}, Lcom/ebay/nautilus/domain/content/InternalDomainError;->getNoNetworkMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->create([Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/FragmentActivity;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    goto :goto_1

    .line 581
    :cond_4
    invoke-virtual {p2}, Lcom/ebay/common/content/EbaySimpleNetLoader;->getServiceErrorsAndWarnings()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/EbayResponseError;->longMessage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    const p1, 0x7f120785

    .line 586
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v2, p1

    const p1, 0x7f12077c

    .line 588
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->isStateSaved()Z

    move-result p1

    if-nez p1, :cond_7

    const p1, 0x7f1208ab

    .line 595
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 0

    .line 547
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->onTaskStarted(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 549
    invoke-direct {p0, p2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->showProgress(Z)V

    :cond_0
    return-void
.end method

.method protected shouldShowFeeWarning()Z
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity;->requestParams:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->getItem()Lcom/ebay/nautilus/domain/data/EbayItem;

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 310
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 313
    sget-object v4, Lcom/ebay/mobile/dcs/Dcs$Connect$B;->sellerFeeRecoup:Lcom/ebay/mobile/dcs/Dcs$Connect$B;

    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/EbayItem;->sellerUserId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/EbayItem;->sellerUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/EbayItem;->listingStatus:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/EbayItem;->listingStatus:Ljava/lang/String;

    const-string v2, "Active"

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/EbayItem;->listingType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/EbayItem;->listingType:Ljava/lang/String;

    const-string v1, "LeadGeneration"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
