.class public abstract Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/farsitel/bazaar/common/model/PurchasableEntity;


# instance fields
.field public final cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

.field public final episodeIndex:Ljava/lang/Integer;

.field public final fullName:Ljava/lang/String;

.field public final identifier:Ljava/lang/String;

.field public isBought:Z

.field public final price:J

.field public final referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    iput-wide p3, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->price:J

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->fullName:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->episodeIndex:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->referrer:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILh/f/b/f;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, p3

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 2
    invoke-direct/range {v2 .. v9}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCover()Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->cover:Lcom/farsitel/bazaar/common/model/cinema/CinemaScreenshotItem;

    return-object v0
.end method

.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisodeIndex()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->episodeIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->price:J

    return-wide v0
.end method

.method public final getPrimaryButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lc/c/a/c/a;->play:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.play)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getPrice()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/c/g/b;->a(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public isBought()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isBought:Z

    return v0
.end method

.method public final isFree()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->getPrice()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlayable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isFree()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isBought()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBought(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/cinema/EpisodeModel;->isBought:Z

    return-void
.end method
