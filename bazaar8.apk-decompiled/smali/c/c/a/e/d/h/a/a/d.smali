.class public final Lc/c/a/e/d/h/a/a/d;
.super Ljava/lang/Object;
.source "CastPageRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.castDetailsRequest"
.end annotation


# instance fields
.field public final castId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "slug"
    .end annotation
.end field

.field public final referrers:Lc/e/d/m;
    .annotation runtime Lc/e/d/a/c;
        value = "referrers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/e/d/m;)V
    .locals 1

    const-string v0, "castId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrers"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/a/a/d;->castId:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/d/h/a/a/d;->referrers:Lc/e/d/m;

    return-void
.end method
