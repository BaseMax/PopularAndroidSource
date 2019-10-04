.class public final Lc/c/a/n/q/e;
.super Lc/c/a/n/c/c/t;
.source "MaliciousAppViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/t<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic x:[Lh/i/i;


# instance fields
.field public final A:I

.field public final B:Landroid/content/Context;

.field public final C:Lc/c/a/e/d/b/ba;

.field public final y:Z

.field public final z:Lh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/n/q/e;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "locale"

    const-string v4, "getLocale()Ljava/util/Locale;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/q/e;->x:[Lh/i/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/n/c/c/u;Lc/c/a/e/d/b/ba;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "env"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradableAppRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/c/c/t;-><init>(Landroid/content/Context;Lc/c/a/n/c/c/u;)V

    iput-object p1, p0, Lc/c/a/n/q/e;->B:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/n/q/e;->C:Lc/c/a/e/d/b/ba;

    .line 2
    new-instance p1, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$locale$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$locale$2;-><init>(Lc/c/a/n/q/e;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/q/e;->z:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/q/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/q/e;->B:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/n/q/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/n/q/e;->A:I

    return p0
.end method

.method public static final synthetic c(Lc/c/a/n/q/e;)Ljava/util/Locale;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/q/e;->q()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/n/q/e;)Lc/c/a/e/d/b/ba;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/q/e;->C:Lc/c/a/e/d/b/ba;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v4, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/ui/malicious/MaliciousAppViewModel$makeData$1;-><init>(Lc/c/a/n/q/e;Lh/c/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/farsitel/bazaar/common/model/ui/EntityState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "entitiesState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/q/e;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/q/e;->y:Z

    return v0
.end method

.method public final q()Ljava/util/Locale;
    .locals 3

    iget-object v0, p0, Lc/c/a/n/q/e;->z:Lh/c;

    sget-object v1, Lc/c/a/n/q/e;->x:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method
