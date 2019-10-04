.class public final Lc/c/a/d/e/a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkCallback.kt"

# interfaces
.implements Li/a/H;


# static fields
.field public static final a:Li/a/u;

.field public static final b:Li/a/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/p<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/c/a/d/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/d/e/a;

    invoke-direct {v0}, Lc/c/a/d/e/a;-><init>()V

    sput-object v0, Lc/c/a/d/e/a;->c:Lc/c/a/d/e/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v0

    sput-object v0, Lc/c/a/d/e/a;->a:Li/a/u;

    .line 3
    new-instance v0, Li/a/b/p;

    invoke-direct {v0}, Li/a/b/p;-><init>()V

    sput-object v0, Lc/c/a/d/e/a;->b:Li/a/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/d/e/a;)Li/a/b/p;
    .locals 0

    .line 1
    sget-object p0, Lc/c/a/d/e/a;->b:Li/a/b/p;

    return-object p0
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 2

    .line 2
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->a()Lh/c/e;

    move-result-object v0

    sget-object v1, Lc/c/a/d/e/a;->a:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 6

    .line 3
    new-instance v3, Lcom/farsitel/bazaar/core/receiver/NetworkCallback$broadcastNetworkState$1;

    const/4 v0, 0x0

    invoke-direct {v3, p1, v0}, Lcom/farsitel/bazaar/core/receiver/NetworkCallback$broadcastNetworkState$1;-><init>(ZLh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b()Li/a/b/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/c/a/d/e/a;->b:Li/a/b/p;

    invoke-virtual {v0}, Li/a/b/p;->b()Li/a/b/t;

    move-result-object v0

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/e/a;->a(Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/e/a;->a(Z)V

    return-void
.end method
