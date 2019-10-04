.class public final Lcom/farsitel/bazaar/work/CommentActionWorker$a;
.super Ljava/lang/Object;
.source "CommentActionWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/work/CommentActionWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/work/CommentActionWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZZ)Lb/H/d;
    .locals 2

    .line 1
    new-instance v0, Lb/H/d$a;

    invoke-direct {v0}, Lb/H/d$a;-><init>()V

    const-string v1, "reviewId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lb/H/d$a;->a(Ljava/lang/String;I)Lb/H/d$a;

    const-string p1, "upVote"

    .line 3
    invoke-virtual {v0, p1, p2}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    const-string p1, "isReply"

    .line 4
    invoke-virtual {v0, p1, p3}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    .line 5
    invoke-virtual {v0}, Lb/H/d$a;->a()Lb/H/d;

    move-result-object p1

    const-string p2, "Data.Builder()\n         \u2026\n                .build()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
