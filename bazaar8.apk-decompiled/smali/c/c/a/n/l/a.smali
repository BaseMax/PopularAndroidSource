.class public final Lc/c/a/n/l/a;
.super Lc/c/a/n/c/c/c/d;
.source "FehrestContainerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/c/d<",
        "Lc/c/a/n/l/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lc/c/a/e/d/j/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/j/c;)V
    .locals 1

    const-string v0, "fehrestRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/c/c/d;-><init>()V

    iput-object p1, p0, Lc/c/a/n/l/a;->e:Lc/c/a/e/d/j/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/l/a;)Lc/c/a/e/d/j/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/l/a;->e:Lc/c/a/e/d/j/c;

    return-object p0
.end method


# virtual methods
.method public a(Lc/c/a/n/l/f;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcom/farsitel/bazaar/ui/fehrest/FehrestContainerViewModel$makeData$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestContainerViewModel$makeData$1;-><init>(Lc/c/a/n/l/a;Lc/c/a/n/l/f;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/n/l/f;

    invoke-virtual {p0, p1}, Lc/c/a/n/l/a;->a(Lc/c/a/n/l/f;)V

    return-void
.end method
