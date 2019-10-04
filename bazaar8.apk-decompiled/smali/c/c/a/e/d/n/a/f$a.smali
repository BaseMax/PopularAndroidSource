.class public final Lc/c/a/e/d/n/a/f$a;
.super Ljava/lang/Object;
.source "PlayedVideoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/d/n/a/f;
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
    invoke-direct {p0}, Lc/c/a/e/d/n/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/PlayedVideoModel;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;)Lc/c/a/e/d/n/a/f;
    .locals 15

    const-string v0, "playedVideoModel"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playedVideoInfoDetails"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/e/d/n/a/f;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getEntityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getCover()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getSerialId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getSeasonIdx()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getType()Lcom/farsitel/bazaar/common/model/PlayedVideoType;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->isLive()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/PlayedVideoModel;->getDate()J

    move-result-wide v11

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-result-object v1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ShortInfo;->getInfo()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object v14, v13

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->getShortInfo()Lcom/farsitel/bazaar/common/model/ShortInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/ShortInfo;->getMoreInfo()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    :cond_1
    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-wide v10, v11

    move-object v12, v14

    .line 4
    invoke-direct/range {v1 .. v13}, Lc/c/a/e/d/n/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/farsitel/bazaar/common/model/PlayedVideoType;ZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
