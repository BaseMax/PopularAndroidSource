.class public Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

.field public final genres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;"
        }
    .end annotation
.end field

.field public final headerImage:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final isLive:Z

.field public final name:Ljava/lang/String;

.field public final publisher:Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

.field public final referrer:Ljava/lang/String;

.field public final shareMessage:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;",
            "Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->genres:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->publisher:Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->shareMessage:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->headerImage:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->isLive:Z

    iput-object p9, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->referrer:Ljava/lang/String;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->CINEMA_INFO:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->viewType:I

    return-void
.end method


# virtual methods
.method public getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    return-object v0
.end method

.method public getGenres()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/cinema/GenreItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->genres:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeaderImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->headerImage:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->publisher:Lcom/farsitel/bazaar/common/model/cinema/PublisherModel;

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getShareMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->shareMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->viewType:I

    return v0
.end method

.method public final isLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/cinema/CinemaInfoItem;->isLive:Z

    return v0
.end method
