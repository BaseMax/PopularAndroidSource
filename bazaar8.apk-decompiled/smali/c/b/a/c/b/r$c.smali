.class public Lc/b/a/c/b/r$c;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/b/a$a;

.field public volatile b:Lc/b/a/c/b/b/a;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/c/b/r$c;->a:Lc/b/a/c/b/b/a$a;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/c/b/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/r$c;->b:Lc/b/a/c/b/b/a;

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/b/r$c;->b:Lc/b/a/c/b/b/a;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/r$c;->a:Lc/b/a/c/b/b/a$a;

    invoke-interface {v0}, Lc/b/a/c/b/b/a$a;->build()Lc/b/a/c/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/r$c;->b:Lc/b/a/c/b/b/a;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/r$c;->b:Lc/b/a/c/b/b/a;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lc/b/a/c/b/b/b;

    invoke-direct {v0}, Lc/b/a/c/b/b/b;-><init>()V

    iput-object v0, p0, Lc/b/a/c/b/r$c;->b:Lc/b/a/c/b/b/a;

    .line 7
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/b/a/c/b/r$c;->b:Lc/b/a/c/b/b/a;

    return-object v0
.end method
