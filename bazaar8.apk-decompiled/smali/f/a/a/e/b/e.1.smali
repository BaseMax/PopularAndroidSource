.class public Lf/a/a/e/b/e;
.super Ljava/lang/Object;
.source "AudioInflater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lf/a/a/e/b/f;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/f;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/e;->b:Lf/a/a/e/b/f;

    iput-wide p2, p0, Lf/a/a/e/b/e;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/e;->b:Lf/a/a/e/b/f;

    iget-object v0, v0, Lf/a/a/e/b/f;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/a/a/e/b/e;->b:Lf/a/a/e/b/f;

    iget-object v0, v0, Lf/a/a/e/b/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/e;->b:Lf/a/a/e/b/f;

    iget-object v0, v0, Lf/a/a/e/b/f;->d:Landroid/widget/SeekBar;

    iget-wide v1, p0, Lf/a/a/e/b/e;->a:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
