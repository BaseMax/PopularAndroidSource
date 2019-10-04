.class public abstract Lc/e/a/b/d/d/h;
.super Lc/e/a/b/d/d/d;

# interfaces
.implements Lc/e/a/b/d/a/a$f;
.implements Lc/e/a/b/d/d/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lc/e/a/b/d/d/d<",
        "TT;>;",
        "Lc/e/a/b/d/a/a$f;",
        "Lc/e/a/b/d/d/i;"
    }
.end annotation


# instance fields
.field public final D:Lc/e/a/b/d/d/e;

.field public final E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILc/e/a/b/d/d/e;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lc/e/a/b/d/d/j;->a(Landroid/content/Context;)Lc/e/a/b/d/d/j;

    move-result-object v3

    .line 2
    invoke-static {}, Lc/e/a/b/d/c;->a()Lc/e/a/b/d/c;

    move-result-object v4

    .line 3
    invoke-static {p5}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, p5

    check-cast v7, Lc/e/a/b/d/a/d$a;

    .line 4
    invoke-static {p6}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, p6

    check-cast v8, Lc/e/a/b/d/a/d$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 5
    invoke-direct/range {v0 .. v8}, Lc/e/a/b/d/d/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/j;Lc/e/a/b/d/c;ILc/e/a/b/d/d/e;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/j;Lc/e/a/b/d/c;ILc/e/a/b/d/d/e;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)V
    .locals 10

    move-object v9, p0

    .line 6
    invoke-static/range {p7 .. p7}, Lc/e/a/b/d/d/h;->a(Lc/e/a/b/d/a/d$a;)Lc/e/a/b/d/d/d$a;

    move-result-object v6

    .line 7
    invoke-static/range {p8 .. p8}, Lc/e/a/b/d/d/h;->a(Lc/e/a/b/d/a/d$b;)Lc/e/a/b/d/d/d$b;

    move-result-object v7

    .line 8
    invoke-virtual/range {p6 .. p6}, Lc/e/a/b/d/d/e;->e()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v8}, Lc/e/a/b/d/d/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/j;Lc/e/a/b/d/d;ILc/e/a/b/d/d/d$a;Lc/e/a/b/d/d/d$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    .line 10
    iput-object v0, v9, Lc/e/a/b/d/d/h;->D:Lc/e/a/b/d/d/e;

    .line 11
    invoke-virtual/range {p6 .. p6}, Lc/e/a/b/d/d/e;->a()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Lc/e/a/b/d/d/h;->F:Landroid/accounts/Account;

    .line 12
    invoke-virtual/range {p6 .. p6}, Lc/e/a/b/d/d/e;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/b/d/d/h;->b(Ljava/util/Set;)Ljava/util/Set;

    iput-object v0, v9, Lc/e/a/b/d/d/h;->E:Ljava/util/Set;

    return-void
.end method

.method public static a(Lc/e/a/b/d/a/d$a;)Lc/e/a/b/d/d/d$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lc/e/a/b/d/d/z;

    invoke-direct {v0, p0}, Lc/e/a/b/d/d/z;-><init>(Lc/e/a/b/d/a/d$a;)V

    return-object v0
.end method

.method public static a(Lc/e/a/b/d/a/d$b;)Lc/e/a/b/d/d/d$b;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lc/e/a/b/d/d/A;

    invoke-direct {v0, p0}, Lc/e/a/b/d/d/A;-><init>(Lc/e/a/b/d/a/d$b;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public final b(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/b/d/d/h;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-super {p0}, Lc/e/a/b/d/d/d;->e()I

    move-result v0

    return v0
.end method

.method public final k()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/h;->F:Landroid/accounts/Account;

    return-object v0
.end method

.method public final q()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/d/h;->E:Ljava/util/Set;

    return-object v0
.end method
