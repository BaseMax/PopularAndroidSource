.class public final Lc/c/a/c/h/f;
.super Ljava/lang/Object;
.source "SingleLiveEvent.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/c/h/g;->a(Lb/r/k;Lb/r/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/c/h/g;

.field public final synthetic b:Lb/r/u;


# direct methods
.method public constructor <init>(Lc/c/a/c/h/g;Lb/r/u;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/c/h/f;->a:Lc/c/a/c/h/g;

    iput-object p2, p0, Lc/c/a/c/h/f;->b:Lb/r/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/c/h/f;->a:Lc/c/a/c/h/g;

    invoke-static {v0}, Lc/c/a/c/h/g;->a(Lc/c/a/c/h/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/c/h/f;->b:Lb/r/u;

    invoke-interface {v0, p1}, Lb/r/u;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
