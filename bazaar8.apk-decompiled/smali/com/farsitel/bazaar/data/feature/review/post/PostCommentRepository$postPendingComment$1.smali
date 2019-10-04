.class public final Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PostCommentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/b/b;->a(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.review.post.PostCommentRepository"
    f = "PostCommentRepository.kt"
    l = {
        0x4b,
        0x4d
    }
    m = "postPendingComment"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/e/d/r/b/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/b/b;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->this$0:Lc/c/a/e/d/r/b/b;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->label:I

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/review/post/PostCommentRepository$postPendingComment$1;->this$0:Lc/c/a/e/d/r/b/b;

    invoke-virtual {p1, p0}, Lc/c/a/e/d/r/b/b;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
