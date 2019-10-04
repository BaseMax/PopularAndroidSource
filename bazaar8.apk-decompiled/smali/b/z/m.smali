.class public Lb/z/m;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lb/z/m;->a:Lb/z/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/z/m;->a:Lb/z/r;

    invoke-static {p2}, Lb/z/g$a;->a(Landroid/os/IBinder;)Lb/z/g;

    move-result-object p2

    iput-object p2, p1, Lb/z/r;->f:Lb/z/g;

    .line 2
    iget-object p1, p0, Lb/z/m;->a:Lb/z/r;

    iget-object p2, p1, Lb/z/r;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lb/z/r;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/z/m;->a:Lb/z/r;

    iget-object v0, p1, Lb/z/r;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lb/z/r;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Lb/z/m;->a:Lb/z/r;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/z/r;->f:Lb/z/g;

    .line 3
    iput-object v0, p1, Lb/z/r;->a:Landroid/content/Context;

    return-void
.end method
