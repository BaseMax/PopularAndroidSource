.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;
    .annotation runtime Lc/e/d/a/c;
        value = "app"
    .end annotation
.end field

.field public final appRate:Ljava/lang/Float;
    .annotation runtime Lc/e/d/a/c;
        value = "appRate"
    .end annotation
.end field

.field public final descriptionType:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "descriptionType"
    .end annotation
.end field

.field public final hasApp:Z
    .annotation runtime Lc/e/d/a/c;
        value = "hasApp"
    .end annotation
.end field

.field public final hasInline:Z
    .annotation runtime Lc/e/d/a/c;
        value = "hasInline"
    .end annotation
.end field

.field public final imageURL:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "imageURL"
    .end annotation
.end field

.field public final inlineXml:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "xml"
    .end annotation
.end field

.field public final layoutAttribute:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;
    .annotation runtime Lc/e/d/a/c;
        value = "layoutAttribute"
    .end annotation
.end field

.field public final link:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "link"
    .end annotation
.end field

.field public final referrer:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "referrerList"
    .end annotation
.end field

.field public final shortDescription:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "shortDescription"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;Ljava/lang/String;Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;ZZLjava/lang/String;)V
    .locals 1

    const-string v0, "imageURL"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptionType"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->imageURL:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->link:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->shortDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->descriptionType:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->title:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->appRate:Ljava/lang/Float;

    iput-object p7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->layoutAttribute:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;

    iput-object p8, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->inlineXml:Ljava/lang/String;

    iput-object p9, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    iput-boolean p10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->hasInline:Z

    iput-boolean p11, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->hasApp:Z

    iput-object p12, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->referrer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getApp()Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    return-object v0
.end method

.method public final getAppRate()Ljava/lang/Float;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->appRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getDescriptionType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->descriptionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasApp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->hasApp:Z

    return v0
.end method

.method public final getHasInline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->hasInline:Z

    return v0
.end method

.method public final getImageURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getInlineXml()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->inlineXml:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutAttribute()Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->layoutAttribute:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final toHamiItem()Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;
    .locals 11

    .line 1
    new-instance v9, Lcom/farsitel/bazaar/common/model/page/HamiItem;

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->imageURL:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->link:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->layoutAttribute:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;->getBackground()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->layoutAttribute:Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;->getTextColor()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 6
    :goto_1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->hasApp:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->app:Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/farsitel/bazaar/data/dto/responsedto/PageAppRowItemDto;->toPageAppItem(Ljava/lang/Boolean;)Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 7
    :goto_2
    iget-object v7, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->shortDescription:Ljava/lang/String;

    .line 8
    iget-boolean v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->hasInline:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->inlineXml:Ljava/lang/String;

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v3

    .line 9
    :goto_3
    iget-object v10, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiPromoRowItem;->referrer:Ljava/lang/String;

    move-object v0, v9

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/common/model/page/HamiItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/page/PageAppItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;

    invoke-direct {v0, v9}, Lcom/farsitel/bazaar/common/model/page/ListItem$Hami;-><init>(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V

    return-object v0
.end method
