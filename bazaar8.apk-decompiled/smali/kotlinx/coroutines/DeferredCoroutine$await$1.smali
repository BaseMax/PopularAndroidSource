.class public final Lkotlinx/coroutines/DeferredCoroutine$await$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/a/O;->a(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "kotlinx.coroutines.DeferredCoroutine"
    f = "Builders.common.kt"
    l = {
        0x63
    }
    m = "await$suspendImpl"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Li/a/O;


# direct methods
.method public constructor <init>(Li/a/O;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->this$0:Li/a/O;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/DeferredCoroutine$await$1;->this$0:Li/a/O;

    invoke-static {p1, p0}, Li/a/O;->a(Li/a/O;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
