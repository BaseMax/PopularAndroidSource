.class public final Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;
.super Ld/a/f;
.source "LoginCheckService.kt"


# instance fields
.field public a:Lc/c/a/e/d/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lc/c/a/e/d/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;->a:Lc/c/a/e/d/a/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "accountRepository"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lc/c/a/b/h/a/a;

    invoke-direct {p1, p0}, Lc/c/a/b/h/a/a;-><init>(Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;)V

    return-object p1
.end method
