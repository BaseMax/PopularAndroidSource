.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final appName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final authorName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "authorName"
    .end annotation
.end field

.field public final category:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "category"
    .end annotation
.end field

.field public final hasInAppPurchase:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "hasInAppPurchase"
    .end annotation
.end field

.field public final image:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "image"
    .end annotation
.end field

.field public final incompatible:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "incompatible"
    .end annotation
.end field

.field public final inlineVersion:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "inlineVersion"
    .end annotation
.end field

.field public final installCountVerbose:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "installCountVerbose"
    .end annotation
.end field

.field public final installCountVerboseDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "installCountVerboseDescription"
    .end annotation
.end field

.field public final installCountVerboseLabel:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "installCountVerboseLabel"
    .end annotation
.end field

.field public final isEnabled:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "isEnabled"
    .end annotation
.end field

.field public final minSdkVersion:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "minimumSdkVersion"
    .end annotation
.end field

.field public final noDiscountPriceString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "priceBeforeDiscountString"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final price:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final priceString:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "priceString"
    .end annotation
.end field

.field public final rate:Ljava/lang/Float;
    .annotation runtime Lc/e/d/a/c;
        value = "rate"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final screenshots:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "screenshots"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;",
            ">;"
        }
    .end annotation
.end field

.field public final shortDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "shortDescription"
    .end annotation
.end field

.field public final versionCode:Ljava/lang/Long;
    .annotation runtime Lc/e/d/a/c;
        value = "versionCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p13

    move-object/from16 v6, p21

    const-string v7, "packageName"

    invoke-static {p1, v7}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "appName"

    invoke-static {p2, v7}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "image"

    invoke-static {p3, v7}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "authorName"

    invoke-static {v4, v7}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "noDiscountPriceString"

    invoke-static {v5, v7}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "referrer"

    invoke-static {v6, v7}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->appName:Ljava/lang/String;

    iput-object v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->image:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->versionCode:Ljava/lang/Long;

    move-object v1, p5

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->minSdkVersion:Ljava/lang/Integer;

    move-object v1, p6

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->inlineVersion:Ljava/lang/Integer;

    move-object v1, p7

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->rate:Ljava/lang/Float;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->isEnabled:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->authorName:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->hasInAppPurchase:Ljava/lang/Boolean;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->price:Ljava/lang/Integer;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->priceString:Ljava/lang/String;

    iput-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->noDiscountPriceString:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->category:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->incompatible:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->shortDescription:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerbose:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseLabel:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseDescription:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->screenshots:Ljava/util/List;

    iput-object v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->referrer:Ljava/lang/String;

    return-void
.end method

.method private final toScreenShot(Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;
    .locals 2

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->Companion:Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;->createImageScreenshot(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasInAppPurchase()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->hasInAppPurchase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncompatible()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->incompatible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getInlineVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->inlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInstallCountVerbose()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerbose:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallCountVerboseDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallCountVerboseLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinSdkVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->minSdkVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getNoDiscountPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->noDiscountPriceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->price:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPriceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->priceString:Ljava/lang/String;

    return-object v0
.end method

.method public final getRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->rate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenshots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->screenshots:Ljava/util/List;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->versionCode:Ljava/lang/Long;

    return-object v0
.end method

.method public final hasDetail()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->category:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->shortDescription:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerbose:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseLabel:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_c

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseDescription:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->screenshots:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public final isEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->isEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final toPageAppItem(Ljava/lang/Boolean;)Lcom/farsitel/bazaar/common/model/page/PageAppItem;
    .locals 32

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->packageName:Ljava/lang/String;

    .line 2
    iget-object v3, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->appName:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->authorName:Ljava/lang/String;

    .line 4
    iget-object v5, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->versionCode:Ljava/lang/Long;

    .line 5
    iget-object v6, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->rate:Ljava/lang/Float;

    .line 6
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->price:Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v9, v1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 7
    :goto_0
    iget-object v10, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->priceString:Ljava/lang/String;

    .line 8
    iget-object v11, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->noDiscountPriceString:Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->isEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object v12, v8

    .line 10
    :goto_1
    iget-object v13, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->hasInAppPurchase:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    move-object/from16 v14, p1

    goto :goto_2

    :cond_2
    move-object v14, v8

    .line 11
    :goto_2
    iget-object v15, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->image:Ljava/lang/String;

    .line 12
    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->inlineVersion:Ljava/lang/Integer;

    .line 13
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->minSdkVersion:Ljava/lang/Integer;

    .line 14
    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->incompatible:Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_4

    const/4 v7, 0x1

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    .line 15
    :goto_4
    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->referrer:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->hasDetail()Z

    move-result v17

    const/16 v18, 0x0

    if-eqz v17, :cond_7

    move-object/from16 v17, v1

    .line 17
    iget-object v1, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->category:Ljava/lang/String;

    move-object/from16 p1, v7

    .line 18
    iget-object v7, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->shortDescription:Ljava/lang/String;

    move-object/from16 v26, v8

    .line 19
    iget-object v8, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerbose:Ljava/lang/String;

    move-object/from16 v27, v15

    .line 20
    iget-object v15, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseLabel:Ljava/lang/String;

    move-object/from16 v28, v14

    .line 21
    iget-object v14, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->installCountVerboseDescription:Ljava/lang/String;

    move-object/from16 v29, v13

    .line 22
    iget-object v13, v0, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->screenshots:Ljava/util/List;

    if-eqz v13, :cond_6

    move-object/from16 v30, v12

    .line 23
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v31, v11

    const/16 v11, 0xa

    invoke-static {v13, v11}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 25
    check-cast v13, Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;

    .line 26
    invoke-direct {v0, v13}, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->toScreenShot(Lcom/farsitel/bazaar/data/dto/responsedto/DetailInfoScreenshotDto;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object/from16 v25, v12

    goto :goto_6

    :cond_6
    move-object/from16 v31, v11

    move-object/from16 v30, v12

    move-object/from16 v25, v18

    .line 27
    :goto_6
    new-instance v11, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;

    move-object/from16 v19, v11

    move-object/from16 v20, v1

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v15

    move-object/from16 v24, v14

    invoke-direct/range {v19 .. v25}, Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v18, v11

    goto :goto_7

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 p1, v7

    move-object/from16 v26, v8

    move-object/from16 v31, v11

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move-object/from16 v28, v14

    move-object/from16 v27, v15

    :goto_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x1e0000

    const/16 v24, 0x0

    .line 28
    new-instance v25, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-object/from16 v15, v17

    move-object/from16 v1, v25

    move-object/from16 v17, p1

    move v7, v9

    move-object/from16 v14, v26

    move-object v8, v10

    move-object/from16 v9, v31

    move-object/from16 v10, v30

    move-object/from16 v11, v29

    move-object/from16 v12, v28

    move-object/from16 v13, v27

    invoke-direct/range {v1 .. v24}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    return-object v25
.end method
