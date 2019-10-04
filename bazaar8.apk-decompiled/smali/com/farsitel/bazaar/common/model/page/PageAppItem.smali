.class public final Lcom/farsitel/bazaar/common/model/page/PageAppItem;
.super Ljava/lang/Object;
.source "AppItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;
.implements Lcom/farsitel/bazaar/common/model/DownloadableEntity;
.implements Lcom/farsitel/bazaar/common/model/PurchasableEntity;


# instance fields
.field public _iconUrl:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public final authorName:Ljava/lang/String;

.field public final entityId:Ljava/lang/String;

.field public entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final entityType:Lcom/farsitel/bazaar/common/model/EntityType;

.field public getEntityStateForInitializeView:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final hasInAppPurchase:Ljava/lang/Boolean;

.field public final iapVisibility:Z

.field public final iconUrl:Ljava/lang/String;

.field public final inlineVersion:Ljava/lang/Integer;

.field public installedVersionCode:Ljava/lang/Long;

.field public final isAd:Ljava/lang/Boolean;

.field public isApplicationInstalled:Z

.field public isBought:Z

.field public final isCompatible:Z

.field public final isEnabled:Ljava/lang/Boolean;

.field public final isFree:Z

.field public latestVersionCodeOnServer:Ljava/lang/Long;

.field public final longInfo:Ljava/lang/String;

.field public final minSDK:Ljava/lang/Integer;

.field public miniAppDetails:Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;

.field public final noDiscountPriceString:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final price:I

.field public final priceString:Ljava/lang/String;

.field public progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

.field public final rate:Ljava/lang/Float;

.field public referrer:Ljava/lang/String;

.field public final shortInfo:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p16

    move-object/from16 v4, p20

    const-string v5, "packageName"

    invoke-static {p1, v5}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "appName"

    invoke-static {p2, v5}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "referrer"

    invoke-static {v3, v5}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "_entityState"

    invoke-static {v4, v5}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->appName:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->authorName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->latestVersionCodeOnServer:Ljava/lang/Long;

    move-object v1, p5

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->rate:Ljava/lang/Float;

    move v1, p6

    iput v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->price:I

    move-object v1, p7

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->priceString:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->noDiscountPriceString:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->hasInAppPurchase:Ljava/lang/Boolean;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isAd:Ljava/lang/Boolean;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->_iconUrl:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->inlineVersion:Ljava/lang/Integer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->minSDK:Ljava/lang/Integer;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isCompatible:Z

    iput-object v3, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->referrer:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->miniAppDetails:Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->shortInfo:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->longInfo:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 2
    iput-object v4, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityStateForInitializeView:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 4
    sget-object v1, Lcom/farsitel/bazaar/common/model/EntityType;->APP:Lcom/farsitel/bazaar/common/model/EntityType;

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityType:Lcom/farsitel/bazaar/common/model/EntityType;

    .line 5
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityId:Ljava/lang/String;

    .line 6
    sget-object v1, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->VITRIN_APP:Lcom/farsitel/bazaar/common/model/page/CommonItemType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/CommonItemType;->getValue()I

    move-result v1

    iput v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->viewType:I

    .line 7
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->hasInAppPurchase:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->iapVisibility:Z

    .line 8
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->priceString:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_5

    iget v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->price:I

    if-nez v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    iput-boolean v2, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isFree:Z

    .line 9
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->_iconUrl:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://cafe.bzrcdn.net/1/icons/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_128x128.webp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V
    .locals 24

    const/high16 v0, 0x20000

    and-int v0, p22, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object/from16 v20, v1

    goto :goto_0

    :cond_0
    move-object/from16 v20, p18

    :goto_0
    const/high16 v0, 0x40000

    and-int v0, p22, v0

    if-eqz v0, :cond_1

    move-object/from16 v21, v1

    goto :goto_1

    :cond_1
    move-object/from16 v21, p19

    :goto_1
    const/high16 v0, 0x80000

    and-int v0, p22, v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-object/from16 v22, v0

    goto :goto_2

    :cond_2
    move-object/from16 v22, p20

    :goto_2
    const/high16 v0, 0x100000

    and-int v0, p22, v0

    if-eqz v0, :cond_3

    move-object/from16 v23, v1

    goto :goto_3

    :cond_3
    move-object/from16 v23, p21

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    .line 11
    invoke-direct/range {v2 .. v23}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanBeInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isFree:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isBought()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isCompatible:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INCOMPATIBLE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    :goto_0
    return-object v0
.end method

.method public getEntityType()Lcom/farsitel/bazaar/common/model/EntityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityType:Lcom/farsitel/bazaar/common/model/EntityType;

    return-object v0
.end method

.method public final getGetEntityStateForInitializeView()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isApplicationInstalled:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getHasInAppPurchase()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->hasInAppPurchase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIapVisibility()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->iapVisibility:Z

    return v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getInlineVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->inlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInstallButtonLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isInlineOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lc/c/a/c/a;->run_inline:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.run_inline)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getCanBeInstalled()Z

    move-result v0

    const-string v1, "context.getString(R.string.install)"

    if-eqz v0, :cond_1

    sget v0, Lc/c/a/c/a;->install:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->priceString:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->priceString:Ljava/lang/String;

    goto :goto_2

    .line 4
    :cond_4
    sget v0, Lc/c/a/c/a;->install:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final getInstalledVersionCode()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->installedVersionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLatestVersionCodeOnServer()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->latestVersionCodeOnServer:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLongInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->longInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinSDK()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->minSDK:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMiniAppDetails()Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->miniAppDetails:Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;

    return-object v0
.end method

.method public final getNoDiscountPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->noDiscountPriceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->price:I

    return v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-object v0
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->shortInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->viewType:I

    return v0
.end method

.method public final get_iconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->_iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final isAd()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isAd:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isApplicationInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isApplicationInstalled:Z

    return v0
.end method

.method public isBought()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isBought:Z

    return v0
.end method

.method public final isCompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isCompatible:Z

    return v0
.end method

.method public final isEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isFree:Z

    return v0
.end method

.method public final isInline()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->inlineVersion:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->inlineVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final isInlineOnly()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isInline()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->minSDK:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->minSDK:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->appName:Ljava/lang/String;

    return-void
.end method

.method public final setApplicationInstalled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isApplicationInstalled:Z

    return-void
.end method

.method public setBought(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->isBought:Z

    return-void
.end method

.method public setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->MALICIOUS_APP:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    :cond_0
    return-void
.end method

.method public final setGetEntityStateForInitializeView(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityStateForInitializeView:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-void
.end method

.method public final setInstalledVersionCode(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->installedVersionCode:Ljava/lang/Long;

    return-void
.end method

.method public final setLatestVersionCodeOnServer(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->latestVersionCodeOnServer:Ljava/lang/Long;

    return-void
.end method

.method public final setMiniAppDetails(Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->miniAppDetails:Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;

    return-void
.end method

.method public setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-void
.end method

.method public final setReferrer(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->referrer:Ljava/lang/String;

    return-void
.end method

.method public final set_iconUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->_iconUrl:Ljava/lang/String;

    return-void
.end method
