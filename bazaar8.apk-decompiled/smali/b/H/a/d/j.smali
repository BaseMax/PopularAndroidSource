.class public abstract Lb/H/a/d/j;
.super Ljava/lang/Object;
.source "StatusRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lb/H/a/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/H/a/d/a/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lb/H/a/d/a/c;->e()Lb/H/a/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/d/j;->a:Lb/H/a/d/a/c;

    return-void
.end method

.method public static a(Lb/H/a/m;Ljava/lang/String;)Lb/H/a/d/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/m;",
            "Ljava/lang/String;",
            ")",
            "Lb/H/a/d/j<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/H/a/d/i;

    invoke-direct {v0, p0, p1}, Lb/H/a/d/i;-><init>(Lb/H/a/m;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lc/e/b/a/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/b/a/a/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/H/a/d/j;->a:Lb/H/a/d/a/c;

    return-object v0
.end method

.method public abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb/H/a/d/j;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/H/a/d/j;->a:Lb/H/a/d/a/c;

    invoke-virtual {v1, v0}, Lb/H/a/d/a/c;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lb/H/a/d/j;->a:Lb/H/a/d/a/c;

    invoke-virtual {v1, v0}, Lb/H/a/d/a/c;->a(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
