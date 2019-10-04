.class public final Lc/e/a/b/j/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/j/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/j/i$a;

    invoke-direct {v0}, Lc/e/a/b/j/i$a;-><init>()V

    sput-object v0, Lc/e/a/b/j/i;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lc/e/a/b/j/A;

    invoke-direct {v0}, Lc/e/a/b/j/A;-><init>()V

    sput-object v0, Lc/e/a/b/j/i;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
