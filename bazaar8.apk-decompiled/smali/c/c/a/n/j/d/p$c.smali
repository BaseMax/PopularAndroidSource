.class public final Lc/c/a/n/j/d/p$c;
.super Ljava/lang/Object;
.source "EpisodeDetailFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/j/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
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
    invoke-direct {p0}, Lc/c/a/n/j/d/p$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/j/d/p$b;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/n/j/d/p$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)Lb/w/p;
    .locals 1

    const-string v0, "referrer"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarInfo"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/n/j/d/p$a;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/n/j/d/p$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;
    .locals 1

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/d$l;->a(Ljava/lang/String;ILjava/lang/String;)Lb/w/p;

    move-result-object p1

    return-object p1
.end method
