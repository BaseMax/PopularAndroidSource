.class public final Lc/c/a/e/d/d/b/c;
.super Ljava/lang/Object;
.source "BookmarkRequest.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.setBookmarkRequest"
.end annotation


# instance fields
.field public final isBookmarked:Z
    .annotation runtime Lc/e/d/a/c;
        value = "state"
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "packageName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/d/b/c;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Lc/c/a/e/d/d/b/c;->isBookmarked:Z

    return-void
.end method
