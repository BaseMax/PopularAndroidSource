.class public abstract Lc/e/a/a/l/r;
.super Ljava/lang/Object;
.source "TrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/l/r$a;
    }
.end annotation


# instance fields
.field public a:Lc/e/a/a/l/r$a;

.field public b:Lc/e/a/a/n/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lc/e/a/a/S;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lc/e/a/a/j/v$a;Lc/e/a/a/Z;)Lc/e/a/a/l/s;
.end method

.method public final a()Lc/e/a/a/n/f;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/l/r;->b:Lc/e/a/a/n/f;

    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lc/e/a/a/n/f;

    return-object v0
.end method

.method public final a(Lc/e/a/a/l/r$a;Lc/e/a/a/n/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/l/r;->a:Lc/e/a/a/l/r$a;

    .line 2
    iput-object p2, p0, Lc/e/a/a/l/r;->b:Lc/e/a/a/n/f;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/l/r;->a:Lc/e/a/a/l/r$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/e/a/a/l/r$a;->a()V

    :cond_0
    return-void
.end method
