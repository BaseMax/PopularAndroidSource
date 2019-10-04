.class final Lcom/bumptech/glide/manager/e$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/manager/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/e;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 29
    iget-object p2, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/e;->b:Z

    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    invoke-static {p1}, Lcom/bumptech/glide/manager/e;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/bumptech/glide/manager/e;->b:Z

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p1, p1, Lcom/bumptech/glide/manager/e;->b:Z

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    const-string p2, "ConnectivityMonitor"

    .line 32
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "connectivity changed, isConnected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/e;->b:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-object p1, p1, Lcom/bumptech/glide/manager/e;->a:Lcom/bumptech/glide/manager/c$a;

    iget-object p2, p0, Lcom/bumptech/glide/manager/e$1;->a:Lcom/bumptech/glide/manager/e;

    iget-boolean p2, p2, Lcom/bumptech/glide/manager/e;->b:Z

    invoke-interface {p1, p2}, Lcom/bumptech/glide/manager/c$a;->onConnectivityChanged(Z)V

    :cond_1
    return-void
.end method
