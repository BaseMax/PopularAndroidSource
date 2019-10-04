.class public final Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;
.super Ljava/lang/Object;
.source "GetFehrestRequest.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.getPageByPathRequest"
.end annotation


# instance fields
.field public final offset:I
    .annotation runtime Lc/e/d/a/c;
        value = "offset"
    .end annotation
.end field

.field public final path:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "path"
    .end annotation
.end field

.field public final referrer:Lc/e/d/m;
    .annotation runtime Lc/e/d/a/c;
        value = "referrers"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILc/e/d/m;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;->path:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;->offset:I

    iput-object p3, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;->referrer:Lc/e/d/m;

    return-void
.end method


# virtual methods
.method public final getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;->offset:I

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Lc/e/d/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/requestdto/GetFehrestRequest;->referrer:Lc/e/d/m;

    return-object v0
.end method
