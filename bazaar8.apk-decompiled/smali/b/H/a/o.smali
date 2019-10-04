.class public Lb/H/a/o;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/H/a/q;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/H/a/d/a/c;

.field public final synthetic b:Lb/H/a/q;


# direct methods
.method public constructor <init>(Lb/H/a/q;Lb/H/a/d/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a/o;->b:Lb/H/a/q;

    iput-object p2, p0, Lb/H/a/o;->a:Lb/H/a/d/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v1, Lb/H/a/q;->a:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lb/H/a/o;->b:Lb/H/a/q;

    iget-object v4, v4, Lb/H/a/q;->f:Lb/H/a/c/o;

    iget-object v4, v4, Lb/H/a/c/o;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lb/H/a/o;->b:Lb/H/a/q;

    iget-object v1, p0, Lb/H/a/o;->b:Lb/H/a/q;

    iget-object v1, v1, Lb/H/a/q;->g:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->i()Lc/e/b/a/a/a;

    move-result-object v1

    iput-object v1, v0, Lb/H/a/q;->r:Lc/e/b/a/a/a;

    .line 3
    iget-object v0, p0, Lb/H/a/o;->a:Lb/H/a/d/a/c;

    iget-object v1, p0, Lb/H/a/o;->b:Lb/H/a/q;

    iget-object v1, v1, Lb/H/a/q;->r:Lc/e/b/a/a/a;

    invoke-virtual {v0, v1}, Lb/H/a/d/a/c;->b(Lc/e/b/a/a/a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lb/H/a/o;->a:Lb/H/a/d/a/c;

    invoke-virtual {v1, v0}, Lb/H/a/d/a/c;->a(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
