.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;
    }
.end annotation


# static fields
.field public static final synthetic $$delegatedProperties:[Lh/i/i;


# instance fields
.field public final _appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final appRate:F

.field public final appSize:Ljava/lang/String;

.field public final appSizeLabel:Ljava/lang/String;

.field public final appSizeWithLabel:Ljava/lang/String;

.field public appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final appType$delegate:Lh/c;

.field public final applicationType:Ljava/lang/Integer;

.field public final authorName:Ljava/lang/String;

.field public final authorSlug:Ljava/lang/String;

.field public final categoryName:Ljava/lang/String;

.field public final categorySlug:Ljava/lang/String;

.field public final defaultSortTypeChoice:Ljava/lang/String;

.field public getAppStateForInitializeView:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final hasInAppPurchase:Z

.field public final iconURL:Ljava/lang/String;

.field public final incompatible:Z

.field public final incompatibleMessage:Ljava/lang/String;

.field public final inlineVersion:Ljava/lang/Integer;

.field public final installLabel:Ljava/lang/String;

.field public isApplicationInstalled:Z

.field public isBought:Z

.field public final isDualInlineApp:Z

.field public final isFree:Z

.field public final isInlineOnly:Z

.field public isUnInstallable:Ljava/lang/Boolean;

.field public final name:Ljava/lang/String;

.field public final packageId:I

.field public final packageName:Ljava/lang/String;

.field public final prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

.field public progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

.field public final referrer:Ljava/lang/String;

.field public final reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

.field public final reviewCount:Ljava/lang/String;

.field public final tinyRatingImage:Ljava/lang/String;

.field public final verboseInstallCountRange:Ljava/lang/String;

.field public final verboseInstallCountRangeDescription:Ljava/lang/String;

.field public final verboseInstallCountRangeLabel:Ljava/lang/String;

.field public final versionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "appType"

    const-string v4, "getAppType()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->$$delegatedProperties:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    move-object/from16 v10, p23

    move-object/from16 v11, p24

    move-object/from16 v12, p25

    move-object/from16 v13, p29

    const-string v14, "packageName"

    invoke-static {v1, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "name"

    invoke-static {v2, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "iconURL"

    invoke-static {v3, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "authorName"

    invoke-static {v4, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "verboseInstallCountRange"

    invoke-static {v5, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "verboseInstallCountRangeDescription"

    invoke-static {v6, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reviewCount"

    invoke-static {v7, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "categoryName"

    invoke-static {v8, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "categorySlug"

    invoke-static {v9, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "prices"

    invoke-static {v10, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "defaultSortTypeChoice"

    invoke-static {v11, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reviewActionItem"

    invoke-static {v12, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "_appState"

    invoke-static {v13, v14}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v14, p1

    iput v14, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    move-wide/from16 v14, p3

    iput-wide v14, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    iput-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    iput-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    iput-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    iput-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    iput-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    iput-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    iput-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    iput-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    iput-object v12, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    iput-object v13, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    .line 2
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppStateForInitializeView:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 4
    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$appType$2;

    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$appType$2;-><init>(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    invoke-static {v1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v1

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appType$delegate:Lh/c;

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppType()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->INLINE:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isInlineOnly:Z

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppType()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;->DUAL:Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp:Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeWithLabel:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->installLabel:Ljava/lang/String;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPrice()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    iput-boolean v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isFree:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;ILh/f/b/f;)V
    .locals 34

    const/high16 v0, 0x4000000

    and-int v0, p32, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v30, 0x0

    goto :goto_0

    :cond_0
    move/from16 v30, p28

    :goto_0
    const/high16 v0, 0x8000000

    and-int v0, p32, v0

    if-eqz v0, :cond_1

    .line 10
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UNDEFINED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-object/from16 v31, v0

    goto :goto_1

    :cond_1
    move-object/from16 v31, p29

    :goto_1
    const/high16 v0, 0x10000000

    and-int v0, p32, v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object/from16 v32, v0

    goto :goto_2

    :cond_2
    move-object/from16 v32, p30

    :goto_2
    const/high16 v0, 0x20000000

    and-int v0, p32, v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v33, v0

    goto :goto_3

    :cond_3
    move-object/from16 v33, p31

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    move-object/from16 v28, p26

    move-object/from16 v29, p27

    invoke-direct/range {v2 .. v33}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;-><init>(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getApplicationType$p(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    return-object p0
.end method

.method private final component26()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    return-object v0
.end method

.method private final component28()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p32

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    goto :goto_c

    :cond_c
    move/from16 v15, p14

    :goto_c
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    move-object/from16 p16, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 p16, v15

    move-object/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_10

    move-object/from16 p17, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 p17, v15

    move-object/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    if-eqz v16, :cond_11

    move-object/from16 p18, v15

    iget-boolean v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    goto :goto_11

    :cond_11
    move-object/from16 p18, v15

    move/from16 v15, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    if-eqz v16, :cond_12

    move/from16 p19, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move/from16 p19, v15

    move-object/from16 v15, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    if-eqz v16, :cond_13

    move-object/from16 p20, v15

    iget-boolean v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    goto :goto_13

    :cond_13
    move-object/from16 p20, v15

    move/from16 v15, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_14

    move/from16 p21, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move/from16 p21, v15

    move-object/from16 v15, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    if-eqz v16, :cond_15

    move-object/from16 p22, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    goto :goto_15

    :cond_15
    move-object/from16 p22, v15

    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    if-eqz v16, :cond_16

    move-object/from16 p23, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 p23, v15

    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    if-eqz v16, :cond_17

    move-object/from16 p24, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    goto :goto_17

    :cond_17
    move-object/from16 p24, v15

    move-object/from16 v15, p25

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    if-eqz v16, :cond_18

    move-object/from16 p25, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 p25, v15

    move-object/from16 v15, p26

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    if-eqz v16, :cond_19

    move-object/from16 p26, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    goto :goto_19

    :cond_19
    move-object/from16 p26, v15

    move-object/from16 v15, p27

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1a

    move-object/from16 p27, v15

    iget-boolean v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    goto :goto_1a

    :cond_1a
    move-object/from16 p27, v15

    move/from16 v15, p28

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1b

    move/from16 p28, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_1b

    :cond_1b
    move/from16 p28, v15

    move-object/from16 v15, p29

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1c

    move-object/from16 p29, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    goto :goto_1c

    :cond_1c
    move-object/from16 p29, v15

    move-object/from16 v15, p30

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p31

    :goto_1d
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p30, v15

    move-object/from16 p31, v1

    invoke-virtual/range {p0 .. p31}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->copy(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    return-object v0
.end method

.method private final getAppType()Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appType$delegate:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->$$delegatedProperties:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem$AppType;

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()F
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    return v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    return v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    return v0
.end method

.method public final component29()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    return-wide v0
.end method

.method public final component30()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
    .locals 33

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    const-string v0, "packageName"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconURL"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorName"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verboseInstallCountRange"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verboseInstallCountRangeDescription"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reviewCount"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorySlug"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prices"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSortTypeChoice"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reviewActionItem"

    move-object/from16 v1, p25

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_appState"

    move-object/from16 v1, p29

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v32, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-direct/range {v0 .. v31}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;-><init>(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;)V

    return-object v32
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    iget v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    return v2

    :cond_6
    :goto_5
    return v0
.end method

.method public final getAppRate()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    return v0
.end method

.method public final getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSizeLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSizeWithLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeWithLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isInlineOnly:Z

    if-nez v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->INCOMPATIBLE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    :goto_0
    return-object v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanBeInstalled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPrice()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

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

.method public final getCategoryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategorySlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultSortTypeChoice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_1

    sget v0, Lc/c/a/c/a;->low_storage:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getGetAppStateForInitializeView()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isApplicationInstalled:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->UPDATE_NEEDED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getHasError()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FAILED_STORAGE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

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

.method public final getHasInAppPurchase()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    return v0
.end method

.method public final getIconURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    return v0
.end method

.method public final getIncompatibleMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getInlineVersion()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getInstallLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->installLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;->getPrice()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPrices()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    return-object v0
.end method

.method public final getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getReviewActionItem()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    return-object v0
.end method

.method public final getReviewCount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    return-object v0
.end method

.method public final getTinyRatingImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseInstallCountRange()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseInstallCountRangeDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerboseInstallCountRangeLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    return-wide v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->APP_INFO:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :cond_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :cond_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_11
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_12
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_13
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_14
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_15
    const/4 v1, 0x0

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_16
    const/4 v1, 0x0

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    :cond_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_18
    const/4 v1, 0x0

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_19
    const/4 v1, 0x0

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_1a
    add-int/2addr v0, v2

    return v0
.end method

.method public final isApplicationInstalled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isApplicationInstalled:Z

    return v0
.end method

.method public final isBought()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    return v0
.end method

.method public final isDualInlineApp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isDualInlineApp:Z

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isFree:Z

    return v0
.end method

.method public final isInlineOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isInlineOnly:Z

    return v0
.end method

.method public final isUnInstallable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setAppState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-void
.end method

.method public final setApplicationInstalled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isApplicationInstalled:Z

    return-void
.end method

.method public final setBought(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    return-void
.end method

.method public final setGetAppStateForInitializeView(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppStateForInitializeView:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-void
.end method

.method public final setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-void
.end method

.method public final setUnInstallable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfoItem(packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->versionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inlineVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->inlineVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->iconURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorSlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->authorSlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseInstallCountRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseInstallCountRangeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", verboseInstallCountRangeDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->verboseInstallCountRangeDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categorySlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->categorySlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSizeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->appSizeLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasInAppPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->hasInAppPurchase:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tinyRatingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->tinyRatingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", incompatible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incompatibleMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->incompatibleMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->prices:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSortTypeChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->defaultSortTypeChoice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewActionItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->reviewActionItem:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->applicationType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBought="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isBought:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", _appState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->_appState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUnInstallable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->isUnInstallable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
