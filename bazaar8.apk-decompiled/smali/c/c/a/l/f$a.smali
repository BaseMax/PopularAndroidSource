.class public final Lc/c/a/l/f$a;
.super Ljava/lang/Object;
.source "PlayerParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/l/f;
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
    invoke-direct {p0}, Lc/c/a/l/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lc/c/a/l/f;
    .locals 8

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/l/f;

    const-string v1, "video_id"

    const-string v2, "unknown"

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(VIDEO_ID, \"unknown\")"

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "video_url"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v1, "Uri.parse(getString(VIDEO_URL))"

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "watermark_url"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v1, "subtitles"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v1, "refresh_data"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v6, v1, Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    if-nez v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    move-object v6, v1

    check-cast v6, Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    .line 7
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v1

    const-string v7, "referrer"

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "getString(REFERRER, emptyReferrer)"

    invoke-static {v7, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v7}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V

    return-object v0
.end method
