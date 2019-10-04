.class public final Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;
.super Ljava/lang/Object;
.source "SearchRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.searchRequest"
.end annotation


# instance fields
.field public final language:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "language"
    .end annotation
.end field

.field public final offset:I
    .annotation runtime Lc/e/d/a/c;
        value = "offset"
    .end annotation
.end field

.field public final query:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "query"
    .end annotation
.end field

.field public final referrer:Lc/e/d/m;
    .annotation runtime Lc/e/d/a/c;
        value = "referrers"
    .end annotation
.end field

.field public final searchToken:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "entities"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILc/e/d/m;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->query:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->searchToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->language:Ljava/lang/String;

    iput p4, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->offset:I

    iput-object p5, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->referrer:Lc/e/d/m;

    return-void
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->offset:I

    return v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Lc/e/d/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->referrer:Lc/e/d/m;

    return-object v0
.end method

.method public final getSearchToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/SearchRequestDto;->searchToken:Ljava/lang/String;

    return-object v0
.end method
