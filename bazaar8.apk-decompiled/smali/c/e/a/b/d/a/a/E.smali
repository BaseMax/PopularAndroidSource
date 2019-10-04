.class public final Lc/e/a/b/d/a/a/E;
.super Lc/e/a/b/i/a/c;

# interfaces
.implements Lc/e/a/b/d/a/d$a;
.implements Lc/e/a/b/d/a/d$b;


# static fields
.field public static a:Lc/e/a/b/d/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$a<",
            "+",
            "Lc/e/a/b/i/e;",
            "Lc/e/a/b/i/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Lc/e/a/b/d/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/d/a/a$a<",
            "+",
            "Lc/e/a/b/i/e;",
            "Lc/e/a/b/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lc/e/a/b/d/d/e;

.field public g:Lc/e/a/b/i/e;

.field public h:Lc/e/a/b/d/a/a/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/i/b;->c:Lc/e/a/b/d/a/a$a;

    sput-object v0, Lc/e/a/b/d/a/a/E;->a:Lc/e/a/b/d/a/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lc/e/a/b/d/d/e;)V
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/d/a/a/E;->a:Lc/e/a/b/d/a/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lc/e/a/b/d/a/a/E;-><init>(Landroid/content/Context;Landroid/os/Handler;Lc/e/a/b/d/d/e;Lc/e/a/b/d/a/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lc/e/a/b/d/d/e;Lc/e/a/b/d/a/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lc/e/a/b/d/d/e;",
            "Lc/e/a/b/d/a/a$a<",
            "+",
            "Lc/e/a/b/i/e;",
            "Lc/e/a/b/i/a;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lc/e/a/b/i/a/c;-><init>()V

    .line 3
    iput-object p1, p0, Lc/e/a/b/d/a/a/E;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/e/a/b/d/a/a/E;->c:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 5
    invoke-static {p3, p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lc/e/a/b/d/d/e;

    iput-object p1, p0, Lc/e/a/b/d/a/a/E;->f:Lc/e/a/b/d/d/e;

    .line 6
    invoke-virtual {p3}, Lc/e/a/b/d/d/e;->g()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/b/d/a/a/E;->e:Ljava/util/Set;

    .line 7
    iput-object p4, p0, Lc/e/a/b/d/a/a/E;->d:Lc/e/a/b/d/a/a$a;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/E;)Lc/e/a/b/d/a/a/H;
    .locals 0

    .line 14
    iget-object p0, p0, Lc/e/a/b/d/a/a/E;->h:Lc/e/a/b/d/a/a/H;

    return-object p0
.end method

.method public static synthetic a(Lc/e/a/b/d/a/a/E;Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lc/e/a/b/d/a/a/E;->b(Lcom/google/android/gms/signin/internal/zaj;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/b/d/a/a/H;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/e/a/b/d/a/a$f;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->f:Lc/e/a/b/d/d/e;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/a/b/d/d/e;->a(Ljava/lang/Integer;)V

    .line 4
    iget-object v2, p0, Lc/e/a/b/d/a/a/E;->d:Lc/e/a/b/d/a/a$a;

    iget-object v3, p0, Lc/e/a/b/d/a/a/E;->b:Landroid/content/Context;

    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->c:Landroid/os/Handler;

    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lc/e/a/b/d/a/a/E;->f:Lc/e/a/b/d/d/e;

    .line 6
    invoke-virtual {v5}, Lc/e/a/b/d/d/e;->h()Lc/e/a/b/i/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    .line 7
    invoke-virtual/range {v2 .. v8}, Lc/e/a/b/d/a/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/e;Ljava/lang/Object;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)Lc/e/a/b/d/a/a$f;

    move-result-object v0

    check-cast v0, Lc/e/a/b/i/e;

    iput-object v0, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    .line 8
    iput-object p1, p0, Lc/e/a/b/d/a/a/E;->h:Lc/e/a/b/d/a/a/H;

    .line 9
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->e:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    invoke-interface {p1}, Lc/e/a/b/i/e;->connect()V

    return-void

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->c:Landroid/os/Handler;

    new-instance v0, Lc/e/a/b/d/a/a/F;

    invoke-direct {v0, p0}, Lc/e/a/b/d/a/a/F;-><init>(Lc/e/a/b/d/a/a/E;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->h:Lc/e/a/b/d/a/a/H;

    invoke-interface {v0, p1}, Lc/e/a/b/d/a/a/H;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->c:Landroid/os/Handler;

    new-instance v1, Lc/e/a/b/d/a/a/G;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/d/a/a/G;-><init>(Lc/e/a/b/d/a/a/E;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->x()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->y()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->y()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->h:Lc/e/a/b/d/a/a/H;

    invoke-interface {p1, v0}, Lc/e/a/b/d/a/a/H;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 8
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    invoke-interface {p1}, Lc/e/a/b/d/a/a$f;->a()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/a/a/E;->h:Lc/e/a/b/d/a/a/H;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->x()Lc/e/a/b/d/d/l;

    move-result-object p1

    iget-object v1, p0, Lc/e/a/b/d/a/a/E;->e:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lc/e/a/b/d/a/a/H;->a(Lc/e/a/b/d/d/l;Ljava/util/Set;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->h:Lc/e/a/b/d/a/a/H;

    invoke-interface {p1, v0}, Lc/e/a/b/d/a/a/H;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    invoke-interface {p1}, Lc/e/a/b/d/a/a$f;->a()V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    invoke-interface {p1, p0}, Lc/e/a/b/i/e;->a(Lc/e/a/b/i/a/d;)V

    return-void
.end method

.method public final f(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/b/d/a/a/E;->g:Lc/e/a/b/i/e;

    invoke-interface {p1}, Lc/e/a/b/d/a/a$f;->a()V

    return-void
.end method
