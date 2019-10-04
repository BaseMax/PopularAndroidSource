.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final image:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "image"
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

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "image"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->link:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->image:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->referrer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->link:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final toPromoItem()Lcom/farsitel/bazaar/common/model/page/PromoItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/page/PromoItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->image:Ljava/lang/String;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->link:Ljava/lang/String;

    iget-object v4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;->referrer:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/farsitel/bazaar/common/model/page/PromoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
