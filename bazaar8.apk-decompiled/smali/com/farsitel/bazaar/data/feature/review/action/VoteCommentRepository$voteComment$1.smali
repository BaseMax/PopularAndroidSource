.class public final Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "VoteCommentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/r/a/f;->a(ILjava/lang/String;Lcom/farsitel/bazaar/data/entity/CommentAction;ZLh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.review.action.VoteCommentRepository"
    f = "VoteCommentRepository.kt"
    l = {
        0x1c
    }
    m = "voteComment"
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public Z$0:Z

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/e/d/r/a/f;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/r/a/f;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->this$0:Lc/c/a/e/d/r/a/f;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->label:I

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/review/action/VoteCommentRepository$voteComment$1;->this$0:Lc/c/a/e/d/r/a/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lc/c/a/e/d/r/a/f;->a(ILjava/lang/String;Lcom/farsitel/bazaar/data/entity/CommentAction;ZLh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
