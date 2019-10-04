.class public final Lc/c/a/e/d/d/a/j;
.super Ljava/lang/Object;
.source "BookmarkEntity.kt"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

.field public g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityName"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkStatus"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    iput p4, p0, Lc/c/a/e/d/d/a/j;->d:I

    iput-object p5, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    iput-object p6, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    iput-object p7, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILh/f/b/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;->PENDING:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lc/c/a/e/d/d/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/d/a/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;ILjava/lang/Object;)Lc/c/a/e/d/d/a/j;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lc/c/a/e/d/d/a/j;->d:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lc/c/a/e/d/d/a/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Lc/c/a/e/d/d/a/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)Lc/c/a/e/d/d/a/j;
    .locals 9

    const-string v0, "entityId"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityName"

    move-object v4, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookmarkStatus"

    move-object v7, p6

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityDatabaseStatus"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc/c/a/e/d/d/a/j;

    move-object v1, v0

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lc/c/a/e/d/d/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V

    return-object v0
.end method

.method public final a()Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-void
.end method

.method public final b()Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/e/d/d/a/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/e/d/d/a/j;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/c/a/e/d/d/a/j;->d:I

    iget v3, p1, Lc/c/a/e/d/d/a/j;->d:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    iget-object v3, p1, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    iget-object p1, p1, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

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

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/d/d/a/j;->d:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;
    .locals 8

    .line 1
    new-instance v7, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    sget-object v4, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    iget v5, p0, Lc/c/a/e/d/d/a/j;->d:I

    .line 7
    iget-object v6, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    move-object v0, v7

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/common/model/bookmark/BookmarkModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-object v7
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/d/a/j;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Lcom/farsitel/bazaar/common/model/page/ListItem$App;
    .locals 32

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    .line 2
    new-instance v2, Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-object v8, v2

    .line 3
    iget-object v9, v0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    .line 4
    iget-object v10, v0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    .line 5
    iget v14, v0, Lc/c/a/e/d/d/a/j;->d:I

    .line 6
    iget-object v15, v0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v18, v19

    .line 9
    new-instance v3, Lc/c/a/c/d/c$c;

    invoke-direct {v3}, Lc/c/a/c/d/c$c;-><init>()V

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v30, 0x1e0000

    const/16 v31, 0x0

    .line 10
    invoke-direct/range {v8 .. v31}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Float;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageMiniAppDetailItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/page/ListItem$App;-><init>(Lcom/farsitel/bazaar/common/model/page/PageAppItem;ZZILh/f/b/f;)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BookmarkEntity(entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", entityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/d/a/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priceString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bookmarkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->f:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entityDatabaseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/d/a/j;->g:Lcom/farsitel/bazaar/data/entity/EntityDatabaseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
