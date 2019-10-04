.class public Lb/z/p;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/z/r;


# direct methods
.method public constructor <init>(Lb/z/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/p;->a:Lb/z/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/z/p;->a:Lb/z/r;

    iget-object v1, v0, Lb/z/r;->d:Lb/z/j;

    iget-object v0, v0, Lb/z/r;->e:Lb/z/j$b;

    invoke-virtual {v1, v0}, Lb/z/j;->c(Lb/z/j$b;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/z/p;->a:Lb/z/r;

    iget-object v0, v0, Lb/z/r;->f:Lb/z/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lb/z/p;->a:Lb/z/r;

    iget-object v1, v1, Lb/z/r;->h:Lb/z/f;

    iget-object v2, p0, Lb/z/p;->a:Lb/z/r;

    iget v2, v2, Lb/z/r;->c:I

    invoke-interface {v0, v1, v2}, Lb/z/g;->a(Lb/z/f;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lb/z/p;->a:Lb/z/r;

    iget-object v1, v0, Lb/z/r;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, v0, Lb/z/r;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7
    iget-object v0, p0, Lb/z/p;->a:Lb/z/r;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/z/r;->a:Landroid/content/Context;

    :cond_1
    return-void
.end method
