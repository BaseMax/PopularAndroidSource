.class public final Lcom/farsitel/bazaar/work/ReportCommentWorker$a;
.super Ljava/lang/Object;
.source "ReportCommentWorker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/work/ReportCommentWorker;
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
    invoke-direct {p0}, Lcom/farsitel/bazaar/work/ReportCommentWorker$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZLcom/farsitel/bazaar/data/entity/EntityType;)Lb/H/d;
    .locals 3

    const-string v0, "entityType"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lb/H/d$a;

    invoke-direct {v1}, Lb/H/d$a;-><init>()V

    const-string v2, "reviewId"

    .line 2
    invoke-virtual {v1, v2, p1}, Lb/H/d$a;->a(Ljava/lang/String;I)Lb/H/d$a;

    const-string p1, "isReply"

    .line 3
    invoke-virtual {v1, p1, p2}, Lb/H/d$a;->a(Ljava/lang/String;Z)Lb/H/d$a;

    .line 4
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lb/H/d$a;->a(Ljava/lang/String;I)Lb/H/d$a;

    .line 5
    invoke-virtual {v1}, Lb/H/d$a;->a()Lb/H/d;

    move-result-object p1

    const-string p2, "Data.Builder()\n         \u2026\n                .build()"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
