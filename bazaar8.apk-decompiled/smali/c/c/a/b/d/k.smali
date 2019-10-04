.class public final Lc/c/a/b/d/k;
.super Ljava/lang/Object;
.source "PaymentManager.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/d/m;->b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/c/a/c/a<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/b/d/m;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/c/a/b/d/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/d/k;->a:Lc/c/a/b/d/m;

    iput-object p2, p0, Lc/c/a/b/d/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lc/c/a/e/d/m/a/e;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "cache"

    .line 1
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/e/d/m/a/e;

    .line 4
    iget-object v3, p0, Lc/c/a/b/d/k;->a:Lc/c/a/b/d/m;

    invoke-static {v3, v0}, Lc/c/a/b/d/m;->b(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc/c/a/b/d/k;->a:Lc/c/a/b/d/m;

    invoke-static {v3, v0}, Lc/c/a/b/d/m;->c(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc/c/a/b/d/k;->a:Lc/c/a/b/d/m;

    iget-object v4, p0, Lc/c/a/b/d/k;->b:Ljava/lang/String;

    invoke-static {v3, v0, v4}, Lc/c/a/b/d/m;->a(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_3
    :goto_1
    return v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lc/c/a/b/d/k;->a(Ljava/util/Set;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
