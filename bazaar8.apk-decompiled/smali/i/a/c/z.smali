.class public final Li/a/c/z;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final a:Li/a/c/v;

.field public static final b:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "Ljava/lang/Object;",
            "Lh/c/e$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "Li/a/La<",
            "*>;",
            "Lh/c/e$b;",
            "Li/a/La<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "Li/a/c/C;",
            "Lh/c/e$b;",
            "Li/a/c/C;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lh/f/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/f/a/c<",
            "Li/a/c/C;",
            "Lh/c/e$b;",
            "Li/a/c/C;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/z;->a:Li/a/c/v;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    sput-object v0, Li/a/c/z;->b:Lh/f/a/c;

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    sput-object v0, Li/a/c/z;->c:Lh/f/a/c;

    .line 4
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    sput-object v0, Li/a/c/z;->d:Lh/f/a/c;

    .line 5
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->a:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    sput-object v0, Li/a/c/z;->e:Lh/f/a/c;

    return-void
.end method

.method public static final a(Lh/c/e;)Ljava/lang/Object;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Li/a/c/z;->b:Lh/f/a/c;

    invoke-interface {p0, v0, v1}, Lh/c/e;->fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Lh/c/e;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Li/a/c/z;->a:Li/a/c/v;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Li/a/c/C;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Li/a/c/C;

    invoke-virtual {v0}, Li/a/c/C;->b()V

    .line 5
    sget-object v0, Li/a/c/z;->e:Lh/f/a/c;

    invoke-interface {p0, p1, v0}, Lh/c/e;->fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    sget-object v1, Li/a/c/z;->c:Lh/f/a/c;

    invoke-interface {p0, v0, v1}, Lh/c/e;->fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Li/a/La;

    .line 7
    invoke-interface {v0, p0, p1}, Li/a/La;->a(Lh/c/e;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lh/c/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Li/a/c/z;->a(Lh/c/e;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Li/a/c/z;->a:Li/a/c/v;

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Li/a/c/C;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Li/a/c/C;-><init>(Lh/c/e;I)V

    sget-object p1, Li/a/c/z;->d:Lh/f/a/c;

    invoke-interface {p0, v0, p1}, Lh/c/e;->fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    check-cast p1, Li/a/La;

    .line 6
    invoke-interface {p1, p0}, Li/a/La;->a(Lh/c/e;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 7
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
