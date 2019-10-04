.class public final Lc/c/a/n/c/c/e;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lc/c/a/n/c/c/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->wb()Lc/c/a/n/c/c/a/a/a/k;
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
    iput-object p1, p0, Lc/c/a/n/c/c/e;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "videoItem"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getCanBePlayed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lc/c/a/n/c/c/e;->a:Lc/c/a/n/c/c/n;

    invoke-static {v1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;)Lc/c/a/n/j/b/c/b;

    move-result-object v1

    .line 3
    new-instance v15, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getEntityId()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoName()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 7
    sget-object v10, Lcom/farsitel/bazaar/common/model/PlayedVideoType;->VIDEO:Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->isLive()Z

    move-result v11

    const-wide/16 v12, 0x0

    const/16 v14, 0x100

    const/16 v16, 0x0

    move-object v3, v15

    move-object v2, v15

    move-object/from16 v15, v16

    .line 8
    invoke-direct/range {v3 .. v15}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJILh/f/b/f;)V

    .line 9
    sget-object v3, Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;->VIDEO:Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getReferrer()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v2, v3, v4}, Lc/c/a/n/j/b/c/b;->a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/ui/cinema/common/viewmodel/PlayInfoType;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Lc/c/a/n/c/c/e;->a:Lc/c/a/n/c/c/n;

    invoke-static {v1}, Lc/c/a/n/c/c/n;->c(Lc/c/a/n/c/c/n;)Lc/c/a/n/c/c/t;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getEntityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/c/a/n/c/c/t;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    iget-object v2, v0, Lc/c/a/n/c/c/e;->a:Lc/c/a/n/c/c/n;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->b(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/ListItem$Video;)V
    .locals 2

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/e;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/ListItem$Video;->getVideo()Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/n/c/c/n;->b(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
