.class public Lc/e/a/b/d/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/d/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/e/a/b/d/a/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/e/a/b/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/b/d/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final d:Lc/e/a/b/d/a/a/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a/N<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Looper;

.field public final f:I

.field public final g:Lc/e/a/b/d/a/d;

.field public final h:Lc/e/a/b/d/a/a/i;

.field public final i:Lc/e/a/b/d/a/a/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc/e/a/b/d/a/a;Lc/e/a/b/d/a/a$d;Lc/e/a/b/d/a/c$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lc/e/a/b/d/a/a<",
            "TO;>;TO;",
            "Lc/e/a/b/d/a/c$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    .line 2
    invoke-static {p1, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 3
    invoke-static {p2, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 4
    invoke-static {p4, v0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/b/d/a/c;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lc/e/a/b/d/a/c;->b:Lc/e/a/b/d/a/a;

    .line 7
    iput-object p3, p0, Lc/e/a/b/d/a/c;->c:Lc/e/a/b/d/a/a$d;

    .line 8
    iget-object p2, p4, Lc/e/a/b/d/a/c$a;->c:Landroid/os/Looper;

    iput-object p2, p0, Lc/e/a/b/d/a/c;->e:Landroid/os/Looper;

    .line 9
    iget-object p2, p0, Lc/e/a/b/d/a/c;->b:Lc/e/a/b/d/a/a;

    iget-object p3, p0, Lc/e/a/b/d/a/c;->c:Lc/e/a/b/d/a/a$d;

    invoke-static {p2, p3}, Lc/e/a/b/d/a/a/N;->a(Lc/e/a/b/d/a/a;Lc/e/a/b/d/a/a$d;)Lc/e/a/b/d/a/a/N;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/b/d/a/c;->d:Lc/e/a/b/d/a/a/N;

    .line 10
    new-instance p2, Lc/e/a/b/d/a/a/y;

    invoke-direct {p2, p0}, Lc/e/a/b/d/a/a/y;-><init>(Lc/e/a/b/d/a/c;)V

    iput-object p2, p0, Lc/e/a/b/d/a/c;->g:Lc/e/a/b/d/a/d;

    .line 11
    iget-object p2, p0, Lc/e/a/b/d/a/c;->a:Landroid/content/Context;

    invoke-static {p2}, Lc/e/a/b/d/a/a/c;->a(Landroid/content/Context;)Lc/e/a/b/d/a/a/c;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/b/d/a/c;->i:Lc/e/a/b/d/a/a/c;

    .line 12
    iget-object p2, p0, Lc/e/a/b/d/a/c;->i:Lc/e/a/b/d/a/a/c;

    invoke-virtual {p2}, Lc/e/a/b/d/a/a/c;->a()I

    move-result p2

    iput p2, p0, Lc/e/a/b/d/a/c;->f:I

    .line 13
    iget-object p2, p4, Lc/e/a/b/d/a/c$a;->b:Lc/e/a/b/d/a/a/i;

    iput-object p2, p0, Lc/e/a/b/d/a/c;->h:Lc/e/a/b/d/a/a/i;

    .line 14
    instance-of p2, p1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p2, :cond_0

    .line 15
    iget-object p2, p0, Lc/e/a/b/d/a/c;->i:Lc/e/a/b/d/a/a/c;

    iget-object p3, p0, Lc/e/a/b/d/a/c;->d:Lc/e/a/b/d/a/a/N;

    invoke-static {p1, p2, p3}, Lc/e/a/b/d/a/a/o;->a(Landroid/app/Activity;Lc/e/a/b/d/a/a/c;Lc/e/a/b/d/a/a/N;)V

    .line 16
    :cond_0
    iget-object p1, p0, Lc/e/a/b/d/a/c;->i:Lc/e/a/b/d/a/a/c;

    invoke-virtual {p1, p0}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lc/e/a/b/d/a/a/c$a;)Lc/e/a/b/d/a/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lc/e/a/b/d/a/a/c$a<",
            "TO;>;)",
            "Lc/e/a/b/d/a/a$f;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/d/a/c;->a()Lc/e/a/b/d/d/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/d/d/e$a;->a()Lc/e/a/b/d/d/e;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lc/e/a/b/d/a/c;->b:Lc/e/a/b/d/a/a;

    invoke-virtual {v0}, Lc/e/a/b/d/a/a;->b()Lc/e/a/b/d/a/a$a;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/d/a/c;->a:Landroid/content/Context;

    iget-object v5, p0, Lc/e/a/b/d/a/c;->c:Lc/e/a/b/d/a/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    .line 7
    invoke-virtual/range {v1 .. v7}, Lc/e/a/b/d/a/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/e;Ljava/lang/Object;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)Lc/e/a/b/d/a/a$f;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Lc/e/a/b/d/a/a/E;
    .locals 2

    .line 24
    new-instance v0, Lc/e/a/b/d/a/a/E;

    invoke-virtual {p0}, Lc/e/a/b/d/a/c;->a()Lc/e/a/b/d/d/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/d/d/e$a;->a()Lc/e/a/b/d/d/e;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lc/e/a/b/d/a/a/E;-><init>(Landroid/content/Context;Landroid/os/Handler;Lc/e/a/b/d/d/e;)V

    return-object v0
.end method

.method public a()Lc/e/a/b/d/d/e$a;
    .locals 3

    .line 8
    new-instance v0, Lc/e/a/b/d/d/e$a;

    invoke-direct {v0}, Lc/e/a/b/d/d/e$a;-><init>()V

    .line 9
    iget-object v1, p0, Lc/e/a/b/d/a/c;->c:Lc/e/a/b/d/a/a$d;

    instance-of v2, v1, Lc/e/a/b/d/a/a$d$b;

    if-eqz v2, :cond_0

    .line 10
    check-cast v1, Lc/e/a/b/d/a/a$d$b;

    .line 11
    invoke-interface {v1}, Lc/e/a/b/d/a/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->x()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lc/e/a/b/d/a/c;->c:Lc/e/a/b/d/a/a$d;

    instance-of v2, v1, Lc/e/a/b/d/a/a$d$a;

    if-eqz v2, :cond_1

    .line 14
    check-cast v1, Lc/e/a/b/d/a/a$d$a;

    invoke-interface {v1}, Lc/e/a/b/d/a/a$d$a;->e()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Lc/e/a/b/d/d/e$a;->a(Landroid/accounts/Account;)Lc/e/a/b/d/d/e$a;

    .line 16
    iget-object v1, p0, Lc/e/a/b/d/a/c;->c:Lc/e/a/b/d/a/a$d;

    instance-of v2, v1, Lc/e/a/b/d/a/a$d$b;

    if-eqz v2, :cond_2

    .line 17
    check-cast v1, Lc/e/a/b/d/a/a$d$b;

    .line 18
    invoke-interface {v1}, Lc/e/a/b/d/a/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->F()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 21
    :goto_1
    invoke-virtual {v0, v1}, Lc/e/a/b/d/d/e$a;->a(Ljava/util/Collection;)Lc/e/a/b/d/d/e$a;

    iget-object v1, p0, Lc/e/a/b/d/a/c;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/d/d/e$a;->a(Ljava/lang/String;)Lc/e/a/b/d/d/e$a;

    iget-object v1, p0, Lc/e/a/b/d/a/c;->a:Landroid/content/Context;

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/d/d/e$a;->b(Ljava/lang/String;)Lc/e/a/b/d/d/e$a;

    return-object v0
.end method

.method public final a(ILc/e/a/b/d/a/a/j;)Lc/e/a/b/j/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lc/e/a/b/d/a/a$b;",
            ">(I",
            "Lc/e/a/b/d/a/a/j<",
            "TA;TTResult;>;)",
            "Lc/e/a/b/j/g<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/e/a/b/j/h;

    invoke-direct {v6}, Lc/e/a/b/j/h;-><init>()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/d/a/c;->i:Lc/e/a/b/d/a/a/c;

    iget-object v5, p0, Lc/e/a/b/d/a/c;->h:Lc/e/a/b/d/a/a/i;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/d/a/a/c;->a(Lc/e/a/b/d/a/c;ILc/e/a/b/d/a/a/j;Lc/e/a/b/j/h;Lc/e/a/b/d/a/a/i;)V

    .line 3
    invoke-virtual {v6}, Lc/e/a/b/j/h;->a()Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/e/a/b/d/a/a/j;)Lc/e/a/b/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lc/e/a/b/d/a/a$b;",
            ">(",
            "Lc/e/a/b/d/a/a/j<",
            "TA;TTResult;>;)",
            "Lc/e/a/b/j/g<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Lc/e/a/b/d/a/c;->a(ILc/e/a/b/d/a/a/j;)Lc/e/a/b/j/g;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/d/a/c;->f:I

    return v0
.end method

.method public final c()Lc/e/a/b/d/a/a/N;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/d/a/a/N<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/c;->d:Lc/e/a/b/d/a/a/N;

    return-object v0
.end method
