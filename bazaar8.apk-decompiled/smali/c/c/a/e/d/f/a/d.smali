.class public final Lc/c/a/e/d/f/a/d;
.super Ljava/lang/Object;
.source "BoughtVideoRequest.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.getBoughtVideosRequestV2"
.end annotation


# instance fields
.field public final language:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "language"
    .end annotation
.end field

.field public final offset:I
    .annotation runtime Lc/e/d/a/c;
        value = "offset"
    .end annotation
.end field

.field public final referrers:Lc/e/d/m;
    .annotation runtime Lc/e/d/a/c;
        value = "referrers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc/e/d/m;)V
    .locals 1

    const-string v0, "language"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrers"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/e/d/f/a/d;->offset:I

    iput-object p2, p0, Lc/c/a/e/d/f/a/d;->language:Ljava/lang/String;

    iput-object p3, p0, Lc/c/a/e/d/f/a/d;->referrers:Lc/e/d/m;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lc/e/d/m;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p2, "fa"

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lc/c/a/e/d/f/a/d;-><init>(ILjava/lang/String;Lc/e/d/m;)V

    return-void
.end method
