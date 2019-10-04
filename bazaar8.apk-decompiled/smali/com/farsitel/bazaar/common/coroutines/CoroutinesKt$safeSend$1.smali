.class public final Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Coroutines.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/c/a/a;->a(Li/a/b/x;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.common.coroutines.CoroutinesKt"
    f = "Coroutines.kt"
    l = {
        0x1a
    }
    m = "safeSend"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lh/c/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/common/coroutines/CoroutinesKt$safeSend$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lc/c/a/c/a/a;->a(Li/a/b/x;Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
