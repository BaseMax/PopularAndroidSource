.class public final Lcom/farsitel/bazaar/common/model/page/HamiItem;
.super Ljava/lang/Object;
.source "HamiItem.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

.field public final background:Ljava/lang/String;

.field public final image:Ljava/lang/String;

.field public final inlineXML:Ljava/lang/String;

.field public final link:Ljava/lang/String;

.field public final mediumIconUrl:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final shortDescription:Ljava/lang/String;

.field public final textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageAppItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "referrer"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->image:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->link:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->background:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->textColor:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->shortDescription:Ljava/lang/String;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->inlineXML:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->referrer:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->mediumIconUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->app:Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    return-object v0
.end method

.method public final getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->background:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getInlineXML()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->inlineXML:Ljava/lang/String;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediumIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->mediumIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/page/HamiItem;->textColor:Ljava/lang/String;

    return-object v0
.end method
