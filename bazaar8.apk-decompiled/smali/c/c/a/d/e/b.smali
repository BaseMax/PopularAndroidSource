.class public final Lc/c/a/d/e/b;
.super Landroid/content/BroadcastReceiver;
.source "NetworkReceiver.kt"

# interfaces
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/e/b$a;
    }
.end annotation


# static fields
.field public static final a:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/c/a/d/e/b$a;


# instance fields
.field public final c:Li/a/u;

.field public d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/d/e/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/d/e/b$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/d/e/b;->b:Lc/c/a/d/e/b$a;

    .line 1
    new-instance v0, Li/a/b/p;

    invoke-direct {v0}, Li/a/b/p;-><init>()V

    sput-object v0, Lc/c/a/d/e/b;->a:Li/a/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/e/b;->c:Li/a/u;

    return-void
.end method

.method public static final synthetic b()Li/a/b/p;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/d/e/b;->a:Li/a/b/p;

    return-object v0
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/d/e/b;->c:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    instance-of v1, p2, Landroid/net/NetworkInfo;

    if-nez v1, :cond_1

    move-object p2, v0

    :cond_1
    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    goto :goto_2

    :cond_4
    move-object p2, v0

    :goto_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v1, :cond_5

    sget-object p2, Lc/c/a/d/d/e;->a:Lc/c/a/d/d/e$a;

    invoke-virtual {p2, p1}, Lc/c/a/d/d/e$a;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    .line 4
    :cond_5
    iget-object p1, p0, Lc/c/a/d/e/b;->d:Ljava/lang/Boolean;

    .line 5
    :goto_3
    iget-object p2, p0, Lc/c/a/d/e/b;->d:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    if-nez p1, :cond_6

    goto :goto_4

    .line 6
    :cond_6
    iput-object p1, p0, Lc/c/a/d/e/b;->d:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7
    new-instance v4, Lcom/farsitel/bazaar/core/receiver/NetworkReceiver$onReceive$1$1;

    invoke-direct {v4, p1, v0}, Lcom/farsitel/bazaar/core/receiver/NetworkReceiver$onReceive$1$1;-><init>(Ljava/lang/Boolean;Lh/c/b;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    nop

    :cond_7
    :goto_4
    return-void
.end method
