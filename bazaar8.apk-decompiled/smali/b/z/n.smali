.class public Lb/z/n;
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
    iput-object p1, p0, Lb/z/n;->a:Lb/z/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/z/n;->a:Lb/z/r;

    iget-object v0, v0, Lb/z/r;->f:Lb/z/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/z/n;->a:Lb/z/r;

    iget-object v2, p0, Lb/z/n;->a:Lb/z/r;

    iget-object v2, v2, Lb/z/r;->h:Lb/z/f;

    iget-object v3, p0, Lb/z/n;->a:Lb/z/r;

    iget-object v3, v3, Lb/z/r;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lb/z/g;->a(Lb/z/f;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lb/z/r;->c:I

    .line 3
    iget-object v0, p0, Lb/z/n;->a:Lb/z/r;

    iget-object v0, v0, Lb/z/r;->d:Lb/z/j;

    iget-object v1, p0, Lb/z/n;->a:Lb/z/r;

    iget-object v1, v1, Lb/z/r;->e:Lb/z/j$b;

    invoke-virtual {v0, v1}, Lb/z/j;->a(Lb/z/j$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
