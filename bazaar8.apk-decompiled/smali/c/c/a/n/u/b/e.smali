.class public final Lc/c/a/n/u/b/e;
.super Lc/c/a/d/f/p;
.source "PostCommentViewModel.kt"


# instance fields
.field public final d:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/core/model/ResourceState;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/p/I;

.field public final f:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/p/I;Lc/c/a/d/c/b;)V
    .locals 1

    const-string v0, "workManagerScheduler"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/b/e;->e:Lc/c/a/p/I;

    iput-object p2, p0, Lc/c/a/n/u/b/e;->f:Lc/c/a/d/c/b;

    .line 2
    new-instance p1, Lc/c/a/c/h/g;

    invoke-direct {p1}, Lc/c/a/c/h/g;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/b/e;->d:Lc/c/a/c/h/g;

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/u/b/e;Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;ZILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v7, p6

    move/from16 v8, p7

    .line 1
    invoke-virtual/range {v1 .. v8}, Lc/c/a/n/u/b/e;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Z)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Z)V
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    if-ne p6, v0, :cond_0

    .line 3
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance p2, Ljava/lang/IllegalAccessException;

    const-string p3, "rateValue must not be zero. check it in your side"

    invoke-direct {p2, p3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/b/e;->f:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    if-nez p7, :cond_5

    .line 5
    iget-object p1, p0, Lc/c/a/n/u/b/e;->d:Lc/c/a/c/h/g;

    new-instance v0, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object p3, Lcom/farsitel/bazaar/core/model/PostCommentState$OpenNickName;->a:Lcom/farsitel/bazaar/core/model/PostCommentState$OpenNickName;

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x6

    const/4 p7, 0x0

    move-object p2, v0

    invoke-direct/range {p2 .. p7}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_4
    iget-object v1, p0, Lc/c/a/n/u/b/e;->e:Lc/c/a/p/I;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lc/c/a/p/I;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;)V

    .line 7
    iget-object p1, p0, Lc/c/a/n/u/b/e;->d:Lc/c/a/c/h/g;

    new-instance v0, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object p3, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x6

    const/4 p7, 0x0

    move-object p2, v0

    invoke-direct/range {p2 .. p7}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/h/g;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/core/model/ResourceState;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/e;->d:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/e;->f:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
