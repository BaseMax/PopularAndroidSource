.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/b/j;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/e/c/b/e<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lc/e/c/a/a/a;

    .line 2
    invoke-static {v0}, Lc/e/c/b/e;->a(Ljava/lang/Class;)Lc/e/c/b/e$a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-static {v1}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    const-class v1, Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    const-class v1, Lc/e/c/c/d;

    .line 5
    invoke-static {v1}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    sget-object v1, Lc/e/c/a/a/a/a;->a:Lc/e/c/b/i;

    .line 6
    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/i;)Lc/e/c/b/e$a;

    .line 7
    invoke-virtual {v0}, Lc/e/c/b/e$a;->c()Lc/e/c/b/e$a;

    .line 8
    invoke-virtual {v0}, Lc/e/c/b/e$a;->b()Lc/e/c/b/e;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
