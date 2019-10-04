.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;
.super Ljava/lang/Object;
.source "AppDetail.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/appdetail/AppInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/farsitel/bazaar/common/model/appdetail/AppInfo$Companion;

.field public static final MAX_SHOWN_ARTICLES:I = 0x3


# instance fields
.field public final appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

.field public final appEmail:Ljava/lang/String;

.field public final appPhone:Ljava/lang/String;

.field public final appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

.field public final applicationType:Ljava/lang/Integer;

.field public final articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Article;",
            ">;"
        }
    .end annotation
.end field

.field public final authorName:Ljava/lang/String;

.field public final authorSlug:Ljava/lang/String;

.field public final categoryName:Ljava/lang/String;

.field public final categorySlug:Ljava/lang/String;

.field public final comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

.field public final contentRating:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

.field public final hasInAppPurchase:Ljava/lang/Boolean;

.field public final homePage:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final incompatible:Z

.field public final incompatibleMessage:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

.field public final packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

.field public final packageName:Ljava/lang/String;

.field public final price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

.field public final ratingImage:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final relatedPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;"
        }
    .end annotation
.end field

.field public final shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

.field public final shortDescription:Ljava/lang/String;

.field public final tinyRatingImage:Ljava/lang/String;

.field public final videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo$Companion;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->Companion:Lcom/farsitel/bazaar/common/model/appdetail/AppInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;Ljava/lang/Boolean;Lcom/farsitel/bazaar/common/model/appdetail/Package;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;Lcom/farsitel/bazaar/common/model/appdetail/Shamed;Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;",
            "Ljava/lang/Boolean;",
            "Lcom/farsitel/bazaar/common/model/appdetail/Package;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Article;",
            ">;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;",
            "Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;",
            "Lcom/farsitel/bazaar/common/model/appdetail/Shamed;",
            "Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p17

    move-object/from16 v9, p26

    move-object/from16 v10, p28

    move-object/from16 v11, p32

    const-string v12, "name"

    invoke-static {p1, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "iconUrl"

    invoke-static {p2, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "packageName"

    invoke-static {v3, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "appStat"

    invoke-static {v4, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "authorName"

    invoke-static {v5, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "categoryName"

    invoke-static {v6, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "categorySlug"

    invoke-static {v7, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "price"

    invoke-static {v8, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "comment"

    invoke-static {v9, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "editorChoice"

    invoke-static {v10, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "referrer"

    invoke-static {v11, v12}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    iput-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    iput-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    iput-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    iput-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    iput-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    iput-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    iput-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    move/from16 v1, p29

    iput-boolean v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    iput-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;Ljava/lang/Boolean;Lcom/farsitel/bazaar/common/model/appdetail/Package;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;Lcom/farsitel/bazaar/common/model/appdetail/Shamed;Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p33

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    move-object/from16 p15, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    goto :goto_f

    :cond_f
    move-object/from16 p15, v15

    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    if-eqz v16, :cond_10

    move-object/from16 p16, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    goto :goto_10

    :cond_10
    move-object/from16 p16, v15

    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    if-eqz v16, :cond_11

    move-object/from16 p17, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object/from16 p17, v15

    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    if-eqz v16, :cond_12

    move-object/from16 p18, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    goto :goto_12

    :cond_12
    move-object/from16 p18, v15

    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    if-eqz v16, :cond_13

    move-object/from16 p19, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    goto :goto_13

    :cond_13
    move-object/from16 p19, v15

    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    if-eqz v16, :cond_14

    move-object/from16 p20, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    goto :goto_14

    :cond_14
    move-object/from16 p20, v15

    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    if-eqz v16, :cond_15

    move-object/from16 p21, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    goto :goto_15

    :cond_15
    move-object/from16 p21, v15

    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    if-eqz v16, :cond_16

    move-object/from16 p22, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    goto :goto_16

    :cond_16
    move-object/from16 p22, v15

    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    if-eqz v16, :cond_17

    move-object/from16 p23, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    goto :goto_17

    :cond_17
    move-object/from16 p23, v15

    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    if-eqz v16, :cond_18

    move-object/from16 p24, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 p24, v15

    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    if-eqz v16, :cond_19

    move-object/from16 p25, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    goto :goto_19

    :cond_19
    move-object/from16 p25, v15

    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1a

    move-object/from16 p26, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    goto :goto_1a

    :cond_1a
    move-object/from16 p26, v15

    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1b

    move-object/from16 p27, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    goto :goto_1b

    :cond_1b
    move-object/from16 p27, v15

    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1c

    move-object/from16 p28, v15

    iget-boolean v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    goto :goto_1c

    :cond_1c
    move-object/from16 p28, v15

    move/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    if-eqz v16, :cond_1d

    move/from16 p29, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move/from16 p29, v15

    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    if-eqz v16, :cond_1e

    move-object/from16 p30, v15

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    goto :goto_1e

    :cond_1e
    move-object/from16 p30, v15

    move-object/from16 v15, p31

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p32

    :goto_1f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p31, v15

    move-object/from16 p32, v1

    invoke-virtual/range {p0 .. p32}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;Ljava/lang/Boolean;Lcom/farsitel/bazaar/common/model/appdetail/Package;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;Lcom/farsitel/bazaar/common/model/appdetail/Shamed;Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultSortReview()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->getSortTypeChoices()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    .line 3
    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->getDefaultSortTypeChoice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    move v2, v4

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return v1
.end method

.method private final getPackageVersion()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVersionCode()J

    move-result-wide v0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->getMinInlinePlatformVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->getMinInlinePlatformVersion()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method

.method private final toAppInfoItem(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;
    .locals 36

    move-object/from16 v0, p0

    .line 1
    new-instance v35, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    .line 2
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getId()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 3
    :goto_0
    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVersionCode()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, -0x1

    .line 5
    :goto_1
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;->getMinInlinePlatformVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 6
    :goto_2
    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    .line 7
    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    .line 8
    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    .line 9
    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getVerboseInstallCountRange()Ljava/lang/String;

    move-result-object v12

    .line 11
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getVerboseInstallCountRangeLabel()Ljava/lang/String;

    move-result-object v13

    .line 12
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getVerboseInstallCountRangeDescription()Ljava/lang/String;

    move-result-object v14

    .line 13
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getVerboseReviewCount()Ljava/lang/String;

    move-result-object v15

    .line 14
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate()F

    move-result v16

    .line 15
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    move-object/from16 v17, v15

    .line 16
    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    .line 17
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVerboseSize()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_3

    :cond_3
    const/16 v19, 0x0

    .line 18
    :goto_3
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVerboseSizeLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    goto :goto_4

    :cond_4
    const/16 v20, 0x0

    .line 19
    :goto_4
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move/from16 v26, v6

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    const/16 v26, 0x0

    .line 20
    :goto_5
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    move-object/from16 v21, v6

    .line 21
    iget-boolean v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    move/from16 v22, v6

    .line 22
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    move-object/from16 v23, v6

    .line 23
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;->toAppDetailPriceItem()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;

    move-result-object v24

    .line 24
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->getDefaultSortTypeChoice()Ljava/lang/String;

    move-result-object v25

    .line 25
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    move-object/from16 v27, v6

    .line 26
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    move-object/from16 v28, v6

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/high16 v33, 0x3c000000    # 0.0078125f

    const/16 v34, 0x0

    move-object/from16 v18, v1

    move-object/from16 v1, v35

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v26

    move-object/from16 v26, p1

    .line 27
    invoke-direct/range {v1 .. v34}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;-><init>(ILjava/lang/String;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPriceItem;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Ljava/lang/String;Ljava/lang/Integer;ZLcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;Ljava/lang/Boolean;ILh/f/b/f;)V

    return-object v35
.end method

.method private final toAppMoreDescriptionItem()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    new-instance v26, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    .line 2
    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    .line 4
    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    .line 5
    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 6
    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    .line 7
    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    .line 8
    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v8}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getInstallCountRange()Ljava/lang/String;

    move-result-object v8

    .line 9
    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVerboseSize()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 10
    :goto_0
    iget-object v10, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVerboseSizeLabel()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 11
    :goto_1
    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getPackageSize()Ljava/lang/Long;

    move-result-object v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 12
    :goto_2
    iget-object v12, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;->getSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    .line 13
    :goto_3
    iget-object v13, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVersionCode()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 14
    :goto_4
    iget-object v14, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getVersionName()Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    .line 15
    :goto_5
    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getLastUpdated()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    .line 16
    :goto_6
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getPermissions()Ljava/util/List;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    .line 17
    :goto_7
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getPermissionDescriptions()Ljava/util/List;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_8

    :cond_8
    const/16 v18, 0x0

    .line 18
    :goto_8
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getChangeLog()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_9

    :cond_9
    const/16 v19, 0x0

    .line 19
    :goto_9
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getHaveAdNetwork()Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_a

    :cond_a
    const/16 v20, 0x0

    .line 20
    :goto_a
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    move-object/from16 v21, v15

    .line 21
    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    move-object/from16 v22, v1

    .line 22
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Shamed;->getId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_b

    :cond_b
    const/16 v23, 0x0

    .line 23
    :goto_b
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Shamed;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    goto :goto_c

    :cond_c
    const/16 v24, 0x0

    .line 24
    :goto_c
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/Shamed;->getIcon()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_d

    :cond_d
    const/16 v27, 0x0

    .line 25
    :goto_d
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    move-object/from16 v25, v1

    move-object/from16 v1, v26

    move-object/from16 v28, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v28

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v27

    .line 26
    invoke-direct/range {v1 .. v25}, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v26

    .line 27
    :cond_e
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v1, 0x0

    throw v1
.end method

.method private final toChangeLogItem(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)Lcom/farsitel/bazaar/common/model/RecyclerData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->getChangeLog()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lc/c/a/c/b/i;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;

    invoke-direct {v1, v0, p1}, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)V

    :cond_1
    return-object v1
.end method

.method private final toDescriptionItems(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;

    invoke-direct {v2, v1, p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final toReviewActionItem(I)Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->getPackageVersion()J

    move-result-wide v5

    .line 2
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate1Count()I

    move-result v7

    .line 3
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate2Count()I

    move-result v8

    .line 4
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate3Count()I

    move-result v9

    .line 5
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate4Count()I

    move-result v10

    .line 6
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate5Count()I

    move-result v11

    .line 7
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->getSortTypeChoices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v1, v13}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 10
    check-cast v13, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;

    .line 11
    invoke-virtual {v13}, Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoice;->toSortTypeChoiceItem()Lcom/farsitel/bazaar/common/model/appdetail/SortTypeChoiceItem;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v1

    move-object v12, v1

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;->getDefaultSortTypeChoice()Ljava/lang/String;

    move-result-object v13

    .line 13
    new-instance v15, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-object v1, v15

    move/from16 v14, p1

    invoke-direct/range {v1 .. v14}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIIIILjava/util/List;Ljava/lang/String;I)V

    return-object v15
.end method

.method private final toReviewItem()Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;
    .locals 9

    .line 1
    new-instance v8, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate1Count()I

    move-result v1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate2Count()I

    move-result v2

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate3Count()I

    move-result v3

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate4Count()I

    move-result v4

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate5Count()I

    move-result v5

    .line 7
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getVerboseReviewCount()Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;->getRate()F

    move-result v7

    move-object v0, v8

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;-><init>(IIIIILjava/lang/String;F)V

    return-object v8
.end method

.method private final toScreenshotItem()Lcom/farsitel/bazaar/common/model/RecyclerData;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->getPoster()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v3, 0x1

    :cond_5
    if-nez v3, :cond_9

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->Companion:Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;

    .line 4
    iget-object v3, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->getToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 5
    iget-object v5, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    invoke-virtual {v5}, Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;->getPoster()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {v1, v3, v5}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot$Companion;->createVideoScreenshot(Ljava/lang/String;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8
    :cond_6
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 9
    :cond_7
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    :cond_8
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    .line 10
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    const/16 v3, 0xa

    if-eqz v1, :cond_b

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    .line 14
    invoke-virtual {v6}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->toScreenShotItem()Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_d

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    .line 19
    new-instance v3, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->getMainUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;->isImage()Z

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 20
    :cond_c
    new-instance v2, Lcom/farsitel/bazaar/common/model/appdetail/ScreenshotSectionItem;

    invoke-direct {v2, v1}, Lcom/farsitel/bazaar/common/model/appdetail/ScreenshotSectionItem;-><init>(Ljava/util/List;)V

    :cond_d
    return-object v2
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    return-object v0
.end method

.method public final component17()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    return-object v0
.end method

.method public final component18()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component19()Lcom/farsitel/bazaar/common/model/appdetail/Package;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Article;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    return-object v0
.end method

.method public final component21()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    return-object v0
.end method

.method public final component22()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    return-object v0
.end method

.method public final component23()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    return-object v0
.end method

.method public final component24()Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    return-object v0
.end method

.method public final component27()Lcom/farsitel/bazaar/common/model/appdetail/Shamed;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    return-object v0
.end method

.method public final component28()Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    return-object v0
.end method

.method public final component29()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;Ljava/lang/Boolean;Lcom/farsitel/bazaar/common/model/appdetail/Package;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;Lcom/farsitel/bazaar/common/model/appdetail/Shamed;Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;",
            "Ljava/lang/Boolean;",
            "Lcom/farsitel/bazaar/common/model/appdetail/Package;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Article;",
            ">;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;",
            "Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;",
            "Lcom/farsitel/bazaar/common/model/appdetail/Shamed;",
            "Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    const-string v0, "name"

    move-object/from16 v33, v1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appStat"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorName"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryName"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorySlug"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorChoice"

    move-object/from16 v1, p28

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    move-object/from16 v1, p32

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v34, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-direct/range {v0 .. v32}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;Ljava/lang/Boolean;Lcom/farsitel/bazaar/common/model/appdetail/Package;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;Lcom/farsitel/bazaar/common/model/appdetail/Shamed;Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v34
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getAppDetailInline()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    return-object v0
.end method

.method public final getAppEmail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppStat()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    return-object v0
.end method

.method public final getApplicationType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Article;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    return-object v0
.end method

.method public final getAuthorName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorSlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategorySlug()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    return-object v0
.end method

.method public final getComment()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    return-object v0
.end method

.method public final getContentRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getEditorChoice()Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    return-object v0
.end method

.method public final getHasInAppPurchase()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHomePage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    return v0
.end method

.method public final getIncompatibleMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageDiff()Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    return-object v0
.end method

.method public final getPackageInfo()Lcom/farsitel/bazaar/common/model/appdetail/Package;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    return-object v0
.end method

.method public final getRatingImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getRelatedPage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    return-object v0
.end method

.method public final getScreenshots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    return-object v0
.end method

.method public final getShamed()Lcom/farsitel/bazaar/common/model/appdetail/Shamed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getTinyRatingImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoShot()Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/Package;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_18
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_19
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/appdetail/Shamed;->hashCode()I

    move-result v2

    goto :goto_1a

    :cond_1a
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1b
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1d
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1d

    :cond_1e
    const/4 v2, 0x0

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1f
    add-int/2addr v0, v1

    return v0
.end method

.method public final toAppDetailRecyclerList(Ljava/util/List;I)Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->getDefaultSortReview()I

    move-result v3

    .line 3
    invoke-direct {v0, v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toReviewActionItem(I)Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object v3

    .line 4
    invoke-direct {v0, v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toAppInfoItem(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v4

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toAppMoreDescriptionItem()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v5

    .line 6
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->getEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;->toEditorChoiceItem()Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toScreenshotItem()Lcom/farsitel/bazaar/common/model/RecyclerData;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toAppMoreDescriptionItem()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toChangeLogItem(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)Lcom/farsitel/bazaar/common/model/RecyclerData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-direct {v0, v5}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toDescriptionItems(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->toReviewItem()Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v4, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    move/from16 v5, p2

    invoke-direct {v4, v5}, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 14
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 16
    move-object v9, v8

    check-cast v9, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 17
    new-instance v8, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x31ff

    const/16 v25, 0x0

    .line 18
    invoke-static/range {v9 .. v25}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->copy$default(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;ZZZLcom/farsitel/bazaar/common/model/reviews/VoteState;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object v9

    .line 19
    invoke-direct {v8, v9}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;-><init>(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    .line 20
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_5

    .line 23
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_5
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    :cond_6
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 28
    check-cast v4, Lcom/farsitel/bazaar/common/model/appdetail/Article;

    .line 29
    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/appdetail/Article;->toArticleItem()Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_7
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_8

    .line 31
    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleTitleItem;

    invoke-direct {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ArticleTitleItem;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v6, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 34
    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    invoke-direct {v1, v6}, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_8
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    const/4 v3, 0x1

    :cond_e
    if-nez v3, :cond_10

    .line 36
    :cond_f
    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    .line 37
    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    .line 38
    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    .line 39
    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    .line 40
    invoke-direct {v1, v3, v4, v5}, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_10
    new-instance v1, Lcom/farsitel/bazaar/common/model/appdetail/ReportItem;

    invoke-direct {v1}, Lcom/farsitel/bazaar/common/model/appdetail/ReportItem;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appStat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appStat:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homePage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->homePage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorSlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->authorSlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categorySlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->categorySlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->ratingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tinyRatingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->tinyRatingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->contentRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoShot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->videoShot:Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->price:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasInAppPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->hasInAppPurchase:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageInfo:Lcom/farsitel/bazaar/common/model/appdetail/Package;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", articles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->articles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->screenshots:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->relatedPage:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appDetailInline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->appDetailInline:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->packageDiff:Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->comment:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shamed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->shamed:Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editorChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->editorChoice:Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", incompatible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incompatibleMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->incompatibleMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->applicationType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
