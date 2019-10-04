.class public final Lc/c/a/n/b/u;
.super Ljava/lang/Object;
.source "AppDetailResponseOrder.kt"


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final c:Lc/c/a/n/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lc/c/a/n/b/u;

    invoke-direct {v0}, Lc/c/a/n/b/u;-><init>()V

    sput-object v0, Lc/c/a/n/b/u;->c:Lc/c/a/n/b/u;

    const/16 v0, 0x11

    .line 2
    new-array v1, v0, [Ljava/lang/Class;

    .line 3
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 6
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 7
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 8
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 9
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ScreenshotSectionItem;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    .line 10
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 11
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    .line 12
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    .line 13
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    .line 14
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 15
    const-class v2, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    .line 16
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ArticleTitleItem;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    .line 17
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    const/16 v17, 0xe

    aput-object v2, v1, v17

    .line 18
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    const/16 v17, 0xf

    aput-object v2, v1, v17

    .line 19
    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ReportItem;

    const/16 v17, 0x10

    aput-object v2, v1, v17

    .line 20
    invoke-static {v1}, Lh/a/l;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lc/c/a/n/b/u;->a:Ljava/util/ArrayList;

    .line 21
    new-array v0, v0, [Ljava/lang/Class;

    .line 22
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    aput-object v1, v0, v3

    .line 23
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;

    aput-object v1, v0, v4

    .line 24
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppScreenshotItem;

    aput-object v1, v0, v5

    .line 25
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/ScreenshotSectionItem;

    aput-object v1, v0, v6

    .line 26
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;

    aput-object v1, v0, v7

    .line 27
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;

    aput-object v1, v0, v8

    .line 28
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    aput-object v1, v0, v9

    .line 29
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    aput-object v1, v0, v10

    .line 30
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewInfoItem;

    aput-object v1, v0, v11

    .line 31
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    aput-object v1, v0, v12

    .line 32
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    aput-object v1, v0, v13

    .line 33
    const-class v1, Lcom/farsitel/bazaar/common/model/page/VitrinItem$App;

    aput-object v1, v0, v14

    .line 34
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/DeveloperInfoSectionItem;

    aput-object v1, v0, v15

    .line 35
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleTitleItem;

    aput-object v1, v0, v16

    .line 36
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 37
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 38
    const-class v1, Lcom/farsitel/bazaar/common/model/appdetail/ReportItem;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Lh/a/l;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lc/c/a/n/b/u;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lc/c/a/n/b/u;->a:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    sget-object p2, Lc/c/a/n/b/u;->b:Ljava/util/ArrayList;

    .line 2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method
