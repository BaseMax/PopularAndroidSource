.class public final Lc/c/a/b/d/m;
.super Ljava/lang/Object;
.source "PaymentManager.kt"


# instance fields
.field public final a:Lc/c/a/e/d/m/d;

.field public final b:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/d;Lc/c/a/e/d/a/a;)V
    .locals 1

    const-string v0, "paymentRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/b/d/m;->a:Lc/c/a/e/d/m/d;

    iput-object p2, p0, Lc/c/a/b/d/m;->b:Lc/c/a/e/d/a/a;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/b/d/m;->a(Lc/c/a/e/d/m/a/e;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/b/d/m;->a(Lc/c/a/e/d/m/a/e;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/b/d/m;->b(Lc/c/a/e/d/m/a/e;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lc/c/a/b/d/m;Lc/c/a/e/d/m/a/e;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/b/d/m;->c(Lc/c/a/e/d/m/a/e;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/c/a/b/d/m;->a:Lc/c/a/e/d/m/d;

    invoke-virtual {v0}, Lc/c/a/e/d/m/d;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/b/d/l;

    invoke-direct {v1, p0}, Lc/c/a/b/d/l;-><init>(Lc/c/a/b/d/m;)V

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(paym\u2026       .toSet()\n        }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/c/a/b/d/m;->a:Lc/c/a/e/d/m/d;

    invoke-virtual {v0}, Lc/c/a/e/d/m/d;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/b/d/j;

    invoke-direct {v1, p0, p1}, Lc/c/a/b/d/j;-><init>(Lc/c/a/b/d/m;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(paym\u2026 packageName) }\n        }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/b/d/m;->a:Lc/c/a/e/d/m/d;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/m/d;->c(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/c/a/e/d/m/a/e;)Z
    .locals 1

    .line 6
    invoke-virtual {p1}, Lc/c/a/e/d/m/a/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.farsitel.bazaar"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lc/c/a/e/d/m/a/e;Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-virtual {p1}, Lc/c/a/e/d/m/a/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/d/m;->a:Lc/c/a/e/d/m/d;

    invoke-virtual {v0}, Lc/c/a/e/d/m/d;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lc/c/a/b/d/k;

    invoke-direct {v1, p0, p1}, Lc/c/a/b/d/k;-><init>(Lc/c/a/b/d/m;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string v0, "Transformations.map(paym\u2026(it, videoId) }\n        }"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lc/c/a/e/d/m/a/e;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Lc/c/a/e/d/m/a/e;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/b/d/m;->b:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Lc/c/a/e/d/m/a/e;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/d/m/a/e;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.farsitel.bazaar.video"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
