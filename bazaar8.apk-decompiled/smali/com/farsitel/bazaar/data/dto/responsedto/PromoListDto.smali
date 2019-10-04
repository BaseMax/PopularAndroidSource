.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final promos:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "promoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "promos"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;->promos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPromos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PagePromoRowDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PromoListDto;->promos:Ljava/util/List;

    return-object v0
.end method
