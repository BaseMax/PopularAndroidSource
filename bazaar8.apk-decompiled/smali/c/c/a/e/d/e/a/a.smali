.class public final Lc/c/a/e/d/e/a/a;
.super Ljava/lang/Object;
.source "BoughtAppResponseDto.kt"


# instance fields
.field public final iconUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "url"
    .end annotation
.end field

.field public final isCompatible:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isCompatible"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field

.field public final rating:F
    .annotation runtime Lc/e/d/a/c;
        value = "rating"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 32

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 2
    new-instance v2, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-object v8, v2

    .line 3
    iget-object v9, v0, Lc/c/a/e/d/e/a/a;->packageName:Ljava/lang/String;

    .line 4
    iget-object v10, v0, Lc/c/a/e/d/e/a/a;->name:Ljava/lang/String;

    .line 5
    iget v1, v0, Lc/c/a/e/d/e/a/a;->rating:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v6, 0x1

    .line 6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v18, v19

    .line 8
    iget-object v1, v0, Lc/c/a/e/d/e/a/a;->iconUrl:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 9
    new-instance v1, Lc/c/a/c/d/c$d;

    invoke-direct {v1}, Lc/c/a/c/d/c$d;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v6, v3}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 10
    iget-boolean v1, v0, Lc/c/a/e/d/e/a/a;->isCompatible:Z

    move/from16 v23, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v14, 0x3e8

    const-string v15, "1000"

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v30, 0x1e0000

    const/16 v31, 0x0

    .line 11
    invoke-direct/range {v8 .. v31}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x0

    move-object v1, v7

    const/4 v9, 0x1

    move-object v6, v8

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V

    .line 13
    invoke-virtual {v7}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->setBought(Z)V

    return-object v7
.end method
