.class public final Lcom/google/firebase/iid/Registrar;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/c/b/j;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/Registrar$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 4
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
    const-class v0, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 2
    invoke-static {v0}, Lc/e/c/b/e;->a(Ljava/lang/Class;)Lc/e/c/b/e$a;

    move-result-object v0

    const-class v1, Lcom/google/firebase/FirebaseApp;

    .line 3
    invoke-static {v1}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    const-class v1, Lc/e/c/c/d;

    .line 4
    invoke-static {v1}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    const-class v1, Lc/e/c/h/g;

    .line 5
    invoke-static {v1}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    sget-object v1, Lc/e/c/d/q;->a:Lc/e/c/b/i;

    .line 6
    invoke-virtual {v0, v1}, Lc/e/c/b/e$a;->a(Lc/e/c/b/i;)Lc/e/c/b/e$a;

    .line 7
    invoke-virtual {v0}, Lc/e/c/b/e$a;->a()Lc/e/c/b/e$a;

    .line 8
    invoke-virtual {v0}, Lc/e/c/b/e$a;->b()Lc/e/c/b/e;

    move-result-object v0

    .line 9
    const-class v1, Lc/e/c/d/a/a;

    .line 10
    invoke-static {v1}, Lc/e/c/b/e;->a(Ljava/lang/Class;)Lc/e/c/b/e$a;

    move-result-object v1

    const-class v2, Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 11
    invoke-static {v2}, Lc/e/c/b/q;->a(Ljava/lang/Class;)Lc/e/c/b/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/e/c/b/e$a;->a(Lc/e/c/b/q;)Lc/e/c/b/e$a;

    sget-object v2, Lc/e/c/d/r;->a:Lc/e/c/b/i;

    .line 12
    invoke-virtual {v1, v2}, Lc/e/c/b/e$a;->a(Lc/e/c/b/i;)Lc/e/c/b/e$a;

    .line 13
    invoke-virtual {v1}, Lc/e/c/b/e$a;->b()Lc/e/c/b/e;

    move-result-object v1

    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Lc/e/c/b/e;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
