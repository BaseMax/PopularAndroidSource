.class public final Lc/c/a/b/h/a/a;
.super Lc/c/a/b$a;
.source "LoginCheckService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/b/h/a/a;->a:Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;

    invoke-direct {p0}, Lc/c/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/h/a/a;->a:Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/app/thirdparty/account/LoginCheckService;->b()Lc/c/a/e/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->u()Z

    move-result v0

    return v0
.end method
