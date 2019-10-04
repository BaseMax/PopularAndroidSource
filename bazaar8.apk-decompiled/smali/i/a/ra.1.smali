.class public interface abstract Li/a/ra;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lh/c/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/ra$a;,
        Li/a/ra$b;
    }
.end annotation


# static fields
.field public static final c:Li/a/ra$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Li/a/ra$b;->a:Li/a/ra$b;

    sput-object v0, Li/a/ra;->c:Li/a/ra$b;

    return-void
.end method


# virtual methods
.method public abstract a(ZZLh/f/a/b;)Li/a/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lh/f/a/b<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh/h;",
            ">;)",
            "Li/a/X;"
        }
    .end annotation
.end method

.method public abstract a(Li/a/q;)Li/a/o;
.end method

.method public abstract a(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract getChildren()Lh/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/j/d<",
            "Li/a/ra;",
            ">;"
        }
    .end annotation
.end method

.method public abstract s()Z
.end method

.method public abstract start()Z
.end method

.method public abstract t()Ljava/util/concurrent/CancellationException;
.end method
