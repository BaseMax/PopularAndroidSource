.class public final Lc/c/a/n/c/c/f;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lc/c/a/n/c/c/a/a/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->xb()Lc/c/a/n/c/c/a/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/c/f;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem;)V
    .locals 3

    const-string v0, "serialItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/n/c/c/f;->a:Lc/c/a/n/c/c/n;

    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;->getSerial()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSerialId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;->getSerial()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Serial;->getSerial()Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lc/c/a/n/c/c/n;->b(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/c/a/n/c/c/f;->a:Lc/c/a/n/c/c/n;

    .line 5
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Episode;->getEpisode()Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v0, v1, v2, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
