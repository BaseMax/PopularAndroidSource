.class public final Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreadContext.kt"

# interfaces
.implements Lh/f/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/c/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/c<",
        "Li/a/c/C;",
        "Lh/c/e$b;",
        "Li/a/c/C;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Li/a/c/C;Lh/c/e$b;)Li/a/c/C;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Li/a/La;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Li/a/La;

    invoke-virtual {p1}, Li/a/c/C;->a()Lh/c/e;

    move-result-object v0

    invoke-virtual {p1}, Li/a/c/C;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Li/a/La;->a(Lh/c/e;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li/a/c/C;

    check-cast p2, Lh/c/e$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->a(Li/a/c/C;Lh/c/e$b;)Li/a/c/C;

    move-result-object p1

    return-object p1
.end method
