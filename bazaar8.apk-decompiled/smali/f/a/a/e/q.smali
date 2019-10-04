.class public final Lf/a/a/e/q;
.super Ljava/lang/Thread;
.source "InlineUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/r;->a(Lf/a/a/e/g;Lf/a/a/e/b/b/y$a;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public a:D

.field public final synthetic b:Lf/a/a/c/c/a;

.field public final synthetic c:Lf/a/a/e/b/b/y$a;


# direct methods
.method public constructor <init>(Lf/a/a/c/c/a;Lf/a/a/e/b/b/y$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/q;->b:Lf/a/a/c/c/a;

    iput-object p2, p0, Lf/a/a/e/q;->c:Lf/a/a/e/b/b/y$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lf/a/a/e/q;->a:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lf/a/a/e/q;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/a/e/q;->b:Lf/a/a/c/c/a;

    invoke-virtual {v0}, Lf/a/a/c/c/a;->d()J

    move-result-wide v0

    iget-object v2, p0, Lf/a/a/e/q;->b:Lf/a/a/c/c/a;

    invoke-virtual {v2}, Lf/a/a/c/c/a;->c()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-double v0, v0

    iget-wide v2, p0, Lf/a/a/e/q;->a:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/e/q;->b:Lf/a/a/c/c/a;

    invoke-virtual {v0}, Lf/a/a/c/c/a;->d()J

    move-result-wide v0

    iget-object v2, p0, Lf/a/a/e/q;->b:Lf/a/a/c/c/a;

    invoke-virtual {v2}, Lf/a/a/c/c/a;->c()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-double v0, v0

    iput-wide v0, p0, Lf/a/a/e/q;->a:D

    .line 4
    iget-object v0, p0, Lf/a/a/e/q;->c:Lf/a/a/e/b/b/y$a;

    iget-wide v1, p0, Lf/a/a/e/q;->a:D

    invoke-interface {v0, v1, v2}, Lf/a/a/e/b/b/y$a;->a(D)V

    :cond_0
    const-wide/16 v0, 0x64

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
