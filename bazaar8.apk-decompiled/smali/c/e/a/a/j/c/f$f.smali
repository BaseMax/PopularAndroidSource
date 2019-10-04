.class public final Lc/e/a/a/j/c/f$f;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lc/e/a/a/n/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/j/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/j/c/f;


# direct methods
.method public constructor <init>(Lc/e/a/a/j/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/j/c/f$f;->a:Lc/e/a/a/j/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/f$f;->a:Lc/e/a/a/j/c/f;

    invoke-static {v0}, Lc/e/a/a/j/c/f;->a(Lc/e/a/a/j/c/f;)Lcom/google/android/exoplayer2/upstream/Loader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/j/c/f$f;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/j/c/f$f;->a:Lc/e/a/a/j/c/f;

    invoke-static {v0}, Lc/e/a/a/j/c/f;->b(Lc/e/a/a/j/c/f;)Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/j/c/f$f;->a:Lc/e/a/a/j/c/f;

    invoke-static {v0}, Lc/e/a/a/j/c/f;->b(Lc/e/a/a/j/c/f;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
