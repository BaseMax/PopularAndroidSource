.class final Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;
.super Lcom/ebay/nautilus/domain/content/DmAsyncTask;
.source "FollowingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/search/FollowingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FollowEntityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DmAsyncTask<",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager;",
        "Lcom/ebay/common/model/search/following/FollowDescriptor;",
        "Lcom/ebay/nautilus/domain/content/Content<",
        "Lcom/ebay/common/model/search/following/FollowDescriptor;",
        ">;",
        "Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;",
        ">;"
    }
.end annotation


# instance fields
.field private final auth:Lcom/ebay/nautilus/domain/app/Authentication;

.field private final country:Lcom/ebay/nautilus/domain/EbayCountry;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/search/FollowingDataManager;Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;Lcom/ebay/common/content/dm/search/FollowingDataManager$Observer;)V
    .locals 0
    .param p1    # Lcom/ebay/common/content/dm/search/FollowingDataManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1244
    invoke-virtual {p3, p2}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowContentHandler;->createWrapper(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DmTaskHandler;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/nautilus/domain/content/DmAsyncTask;-><init>(Lcom/ebay/nautilus/domain/content/DataManager;Ljava/lang/Object;Lcom/ebay/nautilus/domain/content/DmTaskHandler;Ljava/lang/Object;)V

    .line 1245
    invoke-virtual {p1}, Lcom/ebay/common/content/dm/search/FollowingDataManager;->getParams()Lcom/ebay/nautilus/domain/content/dm/UserContextObservingDataManager$KeyBase;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;

    iget-object p2, p2, Lcom/ebay/common/content/dm/search/FollowingDataManager$KeyParams;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iput-object p2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    .line 1246
    iget-object p1, p1, Lcom/ebay/common/content/dm/search/FollowingDataManager;->userContext:Lcom/ebay/nautilus/domain/content/dm/UserContext;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    return-void
.end method


# virtual methods
.method protected loadInBackground()Lcom/ebay/nautilus/domain/content/Content;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/common/model/search/following/FollowDescriptor;",
            ">;"
        }
    .end annotation

    .line 1252
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->getParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;

    .line 1255
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    iget-object v2, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1263
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->id:Ljava/lang/String;

    goto :goto_0

    .line 1259
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1267
    :goto_0
    new-instance v9, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;

    iget-object v4, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    iget-object v5, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->customTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->auth:Lcom/ebay/nautilus/domain/app/Authentication;

    iget-object v6, v2, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->country:Lcom/ebay/nautilus/domain/EbayCountry;

    iget-object v8, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->enabledNotifications:Ljava/util/List;

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/FollowType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/util/List;)V

    .line 1279
    invoke-virtual {p0, v9}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/net/api/search/following/EmptyResponse;

    .line 1280
    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v3

    .line 1286
    invoke-virtual {v3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1289
    iget-object v3, v9, Lcom/ebay/common/net/api/search/following/CreateFollowRequest;->followDescriptor:Lcom/ebay/common/model/search/following/FollowDescriptor;

    invoke-static {v3}, Lcom/ebay/common/model/search/following/FollowDescriptor;->create(Lcom/ebay/common/model/search/following/FollowDescriptor;)Lcom/ebay/common/model/search/following/FollowDescriptor;

    move-result-object v3

    .line 1290
    iput-object v1, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 1291
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1292
    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->followDate:Ljava/lang/String;

    .line 1293
    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->lastViewDate:Ljava/lang/String;

    .line 1294
    sget-object v1, Lcom/ebay/common/content/dm/search/FollowingDataManager$1;->$SwitchMap$com$ebay$nautilus$domain$data$FollowType:[I

    iget-object v4, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/FollowType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 1302
    :pswitch_0
    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->collectionId:Ljava/lang/String;

    goto :goto_1

    .line 1298
    :pswitch_1
    iget-object v1, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->id:Ljava/lang/String;

    iput-object v1, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->username:Ljava/lang/String;

    .line 1299
    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->id:Ljava/lang/String;

    iput-object v0, v3, Lcom/ebay/common/model/search/following/FollowDescriptor;->id:Ljava/lang/String;

    .line 1305
    :goto_1
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/search/following/EmptyResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Ljava/lang/Object;Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0

    .line 1312
    :cond_1
    iget v1, v2, Lcom/ebay/common/net/api/search/following/EmptyResponse;->responseCode:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/ebay/common/content/dm/search/FollowingDataManager$CreateFollowParams;->followType:Lcom/ebay/nautilus/domain/data/FollowType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/FollowType;->USER:Lcom/ebay/nautilus/domain/data/FollowType;

    if-ne v0, v1, :cond_2

    .line 1314
    invoke-virtual {v3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v0

    .line 1315
    instance-of v1, v0, Lcom/ebay/nautilus/kernel/net/HttpError;

    if-eqz v1, :cond_2

    .line 1316
    check-cast v0, Lcom/ebay/nautilus/kernel/net/HttpError;

    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/kernel/net/HttpError;->message:Ljava/lang/String;

    .line 1319
    :cond_2
    new-instance v0, Lcom/ebay/nautilus/domain/content/Content;

    invoke-direct {v0, v3}, Lcom/ebay/nautilus/domain/content/Content;-><init>(Lcom/ebay/nautilus/kernel/content/ResultStatus;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 1234
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/search/FollowingDataManager$FollowEntityTask;->loadInBackground()Lcom/ebay/nautilus/domain/content/Content;

    move-result-object v0

    return-object v0
.end method
