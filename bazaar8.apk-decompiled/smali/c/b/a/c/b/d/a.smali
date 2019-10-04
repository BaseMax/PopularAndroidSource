.class public final Lc/b/a/c/b/d/a;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field public final a:Lc/b/a/c/b/b/i;

.field public final b:Lc/b/a/c/b/a/e;

.field public final c:Lcom/bumptech/glide/load/DecodeFormat;

.field public final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/b/i;Lc/b/a/c/b/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc/b/a/c/b/d/a;->d:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lc/b/a/c/b/d/a;->a:Lc/b/a/c/b/b/i;

    .line 4
    iput-object p2, p0, Lc/b/a/c/b/d/a;->b:Lc/b/a/c/b/a/e;

    .line 5
    iput-object p3, p0, Lc/b/a/c/b/d/a;->c:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method
