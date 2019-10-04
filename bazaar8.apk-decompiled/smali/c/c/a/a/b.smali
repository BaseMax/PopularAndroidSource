.class public final Lc/c/a/a/b;
.super Ljava/lang/Object;
.source "AnalyticsAgent.kt"

# interfaces
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/b$a;
    }
.end annotation


# instance fields
.field public final a:Li/a/ra;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/c/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "+",
            "Lc/c/a/a/b/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackers"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/a/b;->c:Ljava/util/Set;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/b;->a:Li/a/ra;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/a/b;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/a/b;->c:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 2
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/b;->a:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lc/c/a/a/a/a;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$track$1;-><init>(Lc/c/a/a/b;Lc/c/a/a/a/a;Lh/c/b;)V

    invoke-virtual {p0, v0}, Lc/c/a/a/b;->a(Lh/f/a/b;)V

    return-void
.end method

.method public final a(Lh/f/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/b<",
            "-",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/b;->a:Li/a/ra;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v3

    new-instance v5, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$launchIO$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v0}, Lcom/farsitel/bazaar/analytics/AnalyticsAgent$launchIO$1;-><init>(Lh/f/a/b;Lh/c/b;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/a/b;->c:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/a/b/c;

    .line 3
    iget-object v2, p0, Lc/c/a/a/b;->b:Landroid/content/Context;

    invoke-interface {v1, v2}, Lc/c/a/a/b/c;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method
