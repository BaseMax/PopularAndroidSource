.class public final Lc/c/a/n/j/a/b;
.super Lc/c/a/n/c/c/t;
.source "CastPageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lc/c/a/n/j/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public x:Lc/c/a/n/j/a/a;

.field public final y:Z

.field public final z:Lc/c/a/e/d/h/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/h/a/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "castPageRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p3, p0, Lc/c/a/n/j/a/b;->z:Lc/c/a/e/d/h/a/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/a/b;)Lc/c/a/e/d/h/a/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/j/a/b;->z:Lc/c/a/e/d/h/a/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/a/b;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/n/j/a/a;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lc/c/a/n/j/a/b;->x:Lc/c/a/n/j/a/a;

    .line 4
    new-instance v4, Lcom/farsitel/bazaar/ui/cinema/cast/CastPageViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/cinema/cast/CastPageViewModel$makeData$1;-><init>(Lc/c/a/n/j/a/b;Lc/c/a/n/j/a/a;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/j/a/a;

    invoke-virtual {p0, p1}, Lc/c/a/n/j/a/b;->a(Lc/c/a/n/j/a/a;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/j/a/b;->y:Z

    return v0
.end method
