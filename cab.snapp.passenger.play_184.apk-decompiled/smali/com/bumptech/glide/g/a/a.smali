.class public final Lcom/bumptech/glide/g/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g/a/a$b;,
        Lcom/bumptech/glide/g/a/a$c;,
        Lcom/bumptech/glide/g/a/a$d;,
        Lcom/bumptech/glide/g/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/g/a/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/a$d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/bumptech/glide/g/a/a$1;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/a$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/g/a/a;->a:Lcom/bumptech/glide/g/a/a$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/g/a/a$c;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lcom/bumptech/glide/g/a/a$a<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 1114
    sget-object v0, Lcom/bumptech/glide/g/a/a;->a:Lcom/bumptech/glide/g/a/a$d;

    .line 102
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/g/a/a;->a(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lcom/bumptech/glide/g/a/a$a<",
            "TT;>;",
            "Lcom/bumptech/glide/g/a/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/bumptech/glide/g/a/a$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/g/a/a$b;-><init>(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)V

    return-object v0
.end method

.method public static simple(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/g/a/a$c;",
            ">(I",
            "Lcom/bumptech/glide/g/a/a$a<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/g/a/a;->a(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static threadSafe(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/bumptech/glide/g/a/a$c;",
            ">(I",
            "Lcom/bumptech/glide/g/a/a$a<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, Lcom/bumptech/glide/g/a/a;->a(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static threadSafeList()Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 69
    invoke-static {v0}, Lcom/bumptech/glide/g/a/a;->threadSafeList(I)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static threadSafeList(I)Landroidx/core/util/Pools$Pool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, Lcom/bumptech/glide/g/a/a$2;

    invoke-direct {p0}, Lcom/bumptech/glide/g/a/a$2;-><init>()V

    new-instance v1, Lcom/bumptech/glide/g/a/a$3;

    invoke-direct {v1}, Lcom/bumptech/glide/g/a/a$3;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/g/a/a;->a(Landroidx/core/util/Pools$Pool;Lcom/bumptech/glide/g/a/a$a;Lcom/bumptech/glide/g/a/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method
