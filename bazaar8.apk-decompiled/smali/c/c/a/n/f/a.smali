.class public final Lc/c/a/n/f/a;
.super Lc/c/a/n/c/c/t;
.source "BoughtVideosViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final x:Z

.field public final y:Landroid/content/Context;

.field public final z:Lc/c/a/e/d/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/f/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boughtVideoRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p1, p0, Lc/c/a/n/f/a;->y:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/n/f/a;->z:Lc/c/a/e/d/f/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/f/a;)Lc/c/a/e/d/f/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lc/c/a/n/f/a;->z:Lc/c/a/e/d/f/a;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/f/a;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/f/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/f/a;->y:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/f/a;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/g;->h()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v4, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosViewModel$makeData$1;-><init>(Lc/c/a/n/f/a;Lh/c/b;)V

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
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/f/a;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/f/a;->x:Z

    return v0
.end method
