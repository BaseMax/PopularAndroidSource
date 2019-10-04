.class public Lf/a/a/c/b/d;
.super Ljava/lang/Object;
.source "CachedAPICallHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/g;->a(Lf/a/a/c/b/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lf/a/a/c/b/o$a;

.field public final synthetic c:J

.field public final synthetic d:Lf/a/a/c/b/g;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/g;Ljava/lang/Object;Lf/a/a/c/b/o$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/d;->d:Lf/a/a/c/b/g;

    iput-object p2, p0, Lf/a/a/c/b/d;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf/a/a/c/b/d;->b:Lf/a/a/c/b/o$a;

    iput-wide p4, p0, Lf/a/a/c/b/d;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/c/b/d;->a:Ljava/lang/Object;

    check-cast v0, Lf/a/a/a/b;

    invoke-virtual {v0}, Lf/a/a/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lf/a/a/c/b/c;

    invoke-direct {v1, p0}, Lf/a/a/c/b/c;-><init>(Lf/a/a/c/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lf/a/a/c/b/d;->d:Lf/a/a/c/b/g;

    iget-object v1, p0, Lf/a/a/c/b/d;->b:Lf/a/a/c/b/o$a;

    invoke-static {v0, v1}, Lf/a/a/c/b/g;->a(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V

    :goto_0
    return-void
.end method
