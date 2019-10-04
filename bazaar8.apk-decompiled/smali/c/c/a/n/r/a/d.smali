.class public final Lc/c/a/n/r/a/d;
.super Lc/c/a/d/f/p;
.source "BazaarKidsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/r/a/d$a;
    }
.end annotation


# static fields
.field public static final d:Lc/c/a/n/r/a/d$a;


# instance fields
.field public final e:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/Boolean;

.field public h:I

.field public final i:Lc/c/a/e/d/u/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/r/a/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/r/a/d$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/r/a/d;->d:Lc/c/a/n/r/a/d$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/u/a;)V
    .locals 1

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    .line 2
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/r/a/d;->e:Lb/r/t;

    .line 3
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/n/r/a/d;->f:Lb/r/t;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/r/a/d;->g:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "birthday"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->d()V

    .line 2
    iget-object v0, p0, Lc/c/a/n/r/a/d;->g:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/r/a/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/r/a/d;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {p1}, Lc/c/a/e/d/u/a;->b()V

    .line 4
    iget-object p1, p0, Lc/c/a/n/r/a/d;->e:Lb/r/t;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/c/a/n/r/a/d;->e:Lb/r/t;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v2, 0x0

    new-instance v3, Lcom/farsitel/bazaar/data/entity/InvalidPassWordException;

    invoke-direct {v3}, Lcom/farsitel/bazaar/data/entity/InvalidPassWordException;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Lc/c/a/n/r/a/d;->h:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lc/c/a/n/r/a/d;->e:Lb/r/t;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    const/4 v2, 0x0

    new-instance v3, Lcom/farsitel/bazaar/data/entity/RetryMoreThanTreeTimesException;

    invoke-direct {v3}, Lcom/farsitel/bazaar/data/entity/RetryMoreThanTreeTimesException;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->b(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget p1, p0, Lc/c/a/n/r/a/d;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/c/a/n/r/a/d;->h:I

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/u/a;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/r/a/d;->e:Lb/r/t;

    new-instance v6, Lcom/farsitel/bazaar/core/model/Resource;

    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/core/model/Resource;-><init>(Lcom/farsitel/bazaar/core/model/ResourceState;Ljava/lang/Object;Lcom/farsitel/bazaar/data/entity/ErrorModel;ILh/f/b/f;)V

    invoke-virtual {p1, v6}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->c()V

    return-void
.end method

.method public final f()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->e:Lb/r/t;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->u()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v1}, Lc/c/a/e/d/u/a;->u()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/n/r/a/d;->g:Ljava/lang/Boolean;

    .line 3
    iget-object v1, p0, Lc/c/a/n/r/a/d;->f:Lb/r/t;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/r/t;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->f:Lb/r/t;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->u()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/a/d;->i:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->F()Z

    move-result v0

    return v0
.end method
