.class public final Lc/c/a/e/d/r/a/b/c;
.super Ljava/lang/Object;
.source "ReportCommentRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.reportSpamReviewRequest"
.end annotation


# instance fields
.field public final isReply:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isReply"
    .end annotation
.end field

.field public final reviewId:I
    .annotation runtime Lc/e/d/a/c;
        value = "reviewId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/e/d/r/a/b/c;->reviewId:I

    iput-boolean p2, p0, Lc/c/a/e/d/r/a/b/c;->isReply:Z

    return-void
.end method
