.class public abstract Lcom/farsitel/bazaar/common/model/page/MovieItem;
.super Ljava/lang/Object;
.source "MovieItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/page/MovieItem$VideoItem;,
        Lcom/farsitel/bazaar/common/model/page/MovieItem$SerialItem;,
        Lcom/farsitel/bazaar/common/model/page/MovieItem$EpisodeItem;
    }
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
    invoke-direct {p0}, Lcom/farsitel/bazaar/common/model/page/MovieItem;-><init>()V

    return-void
.end method
