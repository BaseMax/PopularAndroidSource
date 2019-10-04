.class public final Lc/c/a/e/d/c/a/d;
.super Ljava/lang/Object;
.source "AppDetailResponseDto.kt"


# instance fields
.field public final PackageDiff:Lc/c/a/e/d/c/a/m;
    .annotation runtime Lc/e/d/a/c;
        value = "PackageDiffs"
    .end annotation
.end field

.field public final appDetailsInline:Lc/c/a/e/d/c/a/g;
    .annotation runtime Lc/e/d/a/c;
        value = "inline"
    .end annotation
.end field

.field public final appDetailsStats:Lc/c/a/e/d/c/a/i;
    .annotation runtime Lc/e/d/a/c;
        value = "stats"
    .end annotation
.end field

.field public final appEmail:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "appEmail"
    .end annotation
.end field

.field public final appPhone:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "appPhone"
    .end annotation
.end field

.field public final applicationType:Ljava/lang/Integer;
    .annotation runtime Lc/e/d/a/c;
        value = "applicationType"
    .end annotation
.end field

.field public final articles:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "articles"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/c/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public final authorName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "authorName"
    .end annotation
.end field

.field public final authorSlug:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "authorSlug"
    .end annotation
.end field

.field public final categoryName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "categoryName"
    .end annotation
.end field

.field public final categorySlug:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "categorySlug"
    .end annotation
.end field

.field public final commentUtility:Lc/c/a/e/d/c/a/f;
    .annotation runtime Lc/e/d/a/c;
        value = "commentUtility"
    .end annotation
.end field

.field public final contentRating:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "contentRating"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final editorChoice:Lc/c/a/e/d/c/a/k;
    .annotation runtime Lc/e/d/a/c;
        value = "editorChoice"
    .end annotation
.end field

.field public final hasInAppPurchase:Ljava/lang/Boolean;
    .annotation runtime Lc/e/d/a/c;
        value = "hasInAppPurchase"
    .end annotation
.end field

.field public final homePage:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "homepage"
    .end annotation
.end field

.field public final iconUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "icon"
    .end annotation
.end field

.field public final incompatible:Z
    .annotation runtime Lc/e/d/a/c;
        value = "incompatible"
    .end annotation
.end field

.field public final incompatibleMessage:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "incompatibleMessage"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final packageInfo:Lc/c/a/e/d/c/a/n;
    .annotation runtime Lc/e/d/a/c;
        value = "package"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final price:Lc/c/a/e/d/c/a/h;
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final ratingImage:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "ratingImage"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final relatedPage:Lc/c/a/e/d/c/a/o;
    .annotation runtime Lc/e/d/a/c;
        value = "relatedPage"
    .end annotation
.end field

.field public final screenshots:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "screenShots"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/c/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public final shamad:Lc/c/a/e/d/c/a/q;
    .annotation runtime Lc/e/d/a/c;
        value = "shamad"
    .end annotation
.end field

.field public final shareable:Z
    .annotation runtime Lc/e/d/a/c;
        value = "shareable"
    .end annotation
.end field

.field public final shortDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "shortDescription"
    .end annotation
.end field

.field public final tinyRatingImage:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "tinyRatingImage"
    .end annotation
.end field

.field public final videoShot:Lc/c/a/e/d/c/a/s;
    .annotation runtime Lc/e/d/a/c;
        value = "videoTrailer"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;
    .locals 39

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lc/c/a/e/d/c/a/d;->name:Ljava/lang/String;

    .line 2
    iget-object v3, v0, Lc/c/a/e/d/c/a/d;->iconUrl:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lc/c/a/e/d/c/a/d;->packageName:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->appDetailsStats:Lc/c/a/e/d/c/a/i;

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/i;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;

    move-result-object v5

    .line 5
    iget-object v6, v0, Lc/c/a/e/d/c/a/d;->appEmail:Ljava/lang/String;

    .line 6
    iget-object v7, v0, Lc/c/a/e/d/c/a/d;->appPhone:Ljava/lang/String;

    .line 7
    iget-object v8, v0, Lc/c/a/e/d/c/a/d;->homePage:Ljava/lang/String;

    .line 8
    iget-object v9, v0, Lc/c/a/e/d/c/a/d;->authorName:Ljava/lang/String;

    .line 9
    iget-object v10, v0, Lc/c/a/e/d/c/a/d;->authorSlug:Ljava/lang/String;

    .line 10
    iget-object v11, v0, Lc/c/a/e/d/c/a/d;->categoryName:Ljava/lang/String;

    .line 11
    iget-object v12, v0, Lc/c/a/e/d/c/a/d;->categorySlug:Ljava/lang/String;

    .line 12
    iget-object v13, v0, Lc/c/a/e/d/c/a/d;->description:Ljava/lang/String;

    .line 13
    iget-object v14, v0, Lc/c/a/e/d/c/a/d;->ratingImage:Ljava/lang/String;

    .line 14
    iget-object v15, v0, Lc/c/a/e/d/c/a/d;->tinyRatingImage:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->contentRating:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 16
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->videoShot:Lc/c/a/e/d/c/a/s;

    const/16 v17, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/s;->a()Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_0

    :cond_0
    move-object/from16 v18, v17

    .line 17
    :goto_0
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->price:Lc/c/a/e/d/c/a/h;

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/h;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;

    move-result-object v19

    .line 18
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->hasInAppPurchase:Ljava/lang/Boolean;

    move-object/from16 v20, v1

    .line 19
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->packageInfo:Lc/c/a/e/d/c/a/n;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/n;->a()Lcom/farsitel/bazaar/common/model/appdetail/Package;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_1

    :cond_1
    move-object/from16 v21, v17

    .line 20
    :goto_1
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->articles:Ljava/util/List;

    move-object/from16 v22, v15

    const/16 v15, 0xa

    if-eqz v1, :cond_3

    move-object/from16 v23, v14

    .line 21
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v24, v13

    invoke-static {v1, v15}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 23
    check-cast v13, Lc/c/a/e/d/c/a/j;

    .line 24
    invoke-virtual {v13}, Lc/c/a/e/d/c/a/j;->a()Lcom/farsitel/bazaar/common/model/appdetail/Article;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v25, v14

    goto :goto_3

    :cond_3
    move-object/from16 v24, v13

    move-object/from16 v23, v14

    move-object/from16 v25, v17

    .line 25
    :goto_3
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->screenshots:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 26
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v1, v15}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 28
    check-cast v14, Lc/c/a/e/d/c/a/p;

    .line 29
    invoke-virtual {v14}, Lc/c/a/e/d/c/a/p;->a()Lcom/farsitel/bazaar/common/model/appdetail/Screenshot;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object/from16 v26, v13

    goto :goto_5

    :cond_5
    move-object/from16 v26, v17

    .line 30
    :goto_5
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->relatedPage:Lc/c/a/e/d/c/a/o;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/o;->a()Ljava/util/List;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_6

    :cond_6
    move-object/from16 v27, v17

    .line 31
    :goto_6
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->appDetailsInline:Lc/c/a/e/d/c/a/g;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/g;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_7

    :cond_7
    move-object/from16 v28, v17

    .line 32
    :goto_7
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->PackageDiff:Lc/c/a/e/d/c/a/m;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/m;->a()Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;

    move-result-object v1

    move-object/from16 v29, v1

    goto :goto_8

    :cond_8
    move-object/from16 v29, v17

    .line 33
    :goto_8
    iget-object v15, v0, Lc/c/a/e/d/c/a/d;->shortDescription:Ljava/lang/String;

    .line 34
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->commentUtility:Lc/c/a/e/d/c/a/f;

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/f;->a()Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;

    move-result-object v30

    .line 35
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->shamad:Lc/c/a/e/d/c/a/q;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/q;->a()Lcom/farsitel/bazaar/common/model/appdetail/Shamed;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_9

    :cond_9
    move-object/from16 v31, v17

    .line 36
    :goto_9
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->editorChoice:Lc/c/a/e/d/c/a/k;

    invoke-virtual {v1}, Lc/c/a/e/d/c/a/k;->a()Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;

    move-result-object v32

    .line 37
    iget-boolean v14, v0, Lc/c/a/e/d/c/a/d;->incompatible:Z

    .line 38
    iget-object v13, v0, Lc/c/a/e/d/c/a/d;->incompatibleMessage:Ljava/lang/String;

    .line 39
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->applicationType:Ljava/lang/Integer;

    move-object/from16 v17, v1

    .line 40
    iget-object v1, v0, Lc/c/a/e/d/c/a/d;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    :goto_a
    move-object/from16 v33, v1

    .line 41
    new-instance v34, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;

    move-object/from16 v35, v17

    move-object/from16 v1, v34

    move-object/from16 v36, v13

    move-object/from16 v13, v24

    move/from16 v37, v14

    move-object/from16 v14, v23

    move-object/from16 v38, v15

    move-object/from16 v15, v22

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v26

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    move-object/from16 v25, v29

    move-object/from16 v26, v38

    move-object/from16 v27, v30

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    move/from16 v30, v37

    move-object/from16 v31, v36

    move-object/from16 v32, v35

    invoke-direct/range {v1 .. v33}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/VideoShot;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsPrice;Ljava/lang/Boolean;Lcom/farsitel/bazaar/common/model/appdetail/Package;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsInline;Lcom/farsitel/bazaar/common/model/appdetail/PackageDiff;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/appdetail/AppDetailsComment;Lcom/farsitel/bazaar/common/model/appdetail/Shamed;Lcom/farsitel/bazaar/common/model/appdetail/EditorChoice;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v34
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/e/d/c/a/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/e/d/c/a/d;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->name:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appEmail:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->appEmail:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appPhone:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->appPhone:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->homePage:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->homePage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->authorName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->authorName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->authorSlug:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->authorSlug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->categoryName:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->categoryName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->categorySlug:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->categorySlug:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->description:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->contentRating:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->contentRating:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->ratingImage:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->ratingImage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->tinyRatingImage:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->tinyRatingImage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->videoShot:Lc/c/a/e/d/c/a/s;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->videoShot:Lc/c/a/e/d/c/a/s;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->price:Lc/c/a/e/d/c/a/h;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->price:Lc/c/a/e/d/c/a/h;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/a/e/d/c/a/d;->shareable:Z

    iget-boolean v3, p1, Lc/c/a/e/d/c/a/d;->shareable:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->hasInAppPurchase:Ljava/lang/Boolean;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->hasInAppPurchase:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->packageInfo:Lc/c/a/e/d/c/a/n;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->packageInfo:Lc/c/a/e/d/c/a/n;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->articles:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->articles:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->screenshots:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->screenshots:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->relatedPage:Lc/c/a/e/d/c/a/o;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->relatedPage:Lc/c/a/e/d/c/a/o;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->PackageDiff:Lc/c/a/e/d/c/a/m;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->PackageDiff:Lc/c/a/e/d/c/a/m;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appDetailsInline:Lc/c/a/e/d/c/a/g;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->appDetailsInline:Lc/c/a/e/d/c/a/g;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appDetailsStats:Lc/c/a/e/d/c/a/i;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->appDetailsStats:Lc/c/a/e/d/c/a/i;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->shortDescription:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->shortDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->commentUtility:Lc/c/a/e/d/c/a/f;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->commentUtility:Lc/c/a/e/d/c/a/f;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->shamad:Lc/c/a/e/d/c/a/q;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->shamad:Lc/c/a/e/d/c/a/q;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->editorChoice:Lc/c/a/e/d/c/a/k;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->editorChoice:Lc/c/a/e/d/c/a/k;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/a/e/d/c/a/d;->incompatible:Z

    iget-boolean v3, p1, Lc/c/a/e/d/c/a/d;->incompatible:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->incompatibleMessage:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->incompatibleMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->applicationType:Ljava/lang/Integer;

    iget-object v3, p1, Lc/c/a/e/d/c/a/d;->applicationType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/c/a/d;->referrer:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lc/c/a/e/d/c/a/d;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->appEmail:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->appPhone:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->homePage:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->authorSlug:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->categoryName:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->categorySlug:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->description:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->contentRating:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->ratingImage:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->tinyRatingImage:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->videoShot:Lc/c/a/e/d/c/a/s;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/s;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->price:Lc/c/a/e/d/c/a/h;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/h;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/c/a/d;->shareable:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :cond_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->hasInAppPurchase:Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_11
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->packageInfo:Lc/c/a/e/d/c/a/n;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/n;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_12
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->articles:Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_13
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->screenshots:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_14
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->relatedPage:Lc/c/a/e/d/c/a/o;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/o;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_15
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->PackageDiff:Lc/c/a/e/d/c/a/m;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/m;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_16
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->appDetailsInline:Lc/c/a/e/d/c/a/g;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/g;->hashCode()I

    move-result v2

    goto :goto_16

    :cond_17
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->appDetailsStats:Lc/c/a/e/d/c/a/i;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/i;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_18
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->shortDescription:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_19
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->commentUtility:Lc/c/a/e/d/c/a/f;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/f;->hashCode()I

    move-result v2

    goto :goto_19

    :cond_1a
    const/4 v2, 0x0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->shamad:Lc/c/a/e/d/c/a/q;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/q;->hashCode()I

    move-result v2

    goto :goto_1a

    :cond_1b
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->editorChoice:Lc/c/a/e/d/c/a/k;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lc/c/a/e/d/c/a/k;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1c
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lc/c/a/e/d/c/a/d;->incompatible:Z

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->incompatibleMessage:Ljava/lang/String;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1e
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->applicationType:Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1d

    :cond_1f
    const/4 v2, 0x0

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/c/a/d;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_20
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDetailResponseDto(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homePage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->homePage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->authorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorSlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->authorSlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", categorySlug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->categorySlug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->contentRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ratingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->ratingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tinyRatingImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->tinyRatingImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoShot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->videoShot:Lc/c/a/e/d/c/a/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->price:Lc/c/a/e/d/c/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/c/a/d;->shareable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInAppPurchase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->hasInAppPurchase:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->packageInfo:Lc/c/a/e/d/c/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", articles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->articles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", screenshots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->screenshots:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", relatedPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->relatedPage:Lc/c/a/e/d/c/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", PackageDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->PackageDiff:Lc/c/a/e/d/c/a/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appDetailsInline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appDetailsInline:Lc/c/a/e/d/c/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appDetailsStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->appDetailsStats:Lc/c/a/e/d/c/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shortDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", commentUtility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->commentUtility:Lc/c/a/e/d/c/a/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shamad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->shamad:Lc/c/a/e/d/c/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", editorChoice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->editorChoice:Lc/c/a/e/d/c/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", incompatible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/e/d/c/a/d;->incompatible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incompatibleMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->incompatibleMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->applicationType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/c/a/d;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
