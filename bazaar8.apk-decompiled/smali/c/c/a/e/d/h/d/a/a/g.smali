.class public final Lc/c/a/e/d/h/d/a/a/g;
.super Ljava/lang/Object;
.source "RequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.seasonPageRequest"
.end annotation


# instance fields
.field public final limit:I
    .annotation runtime Lc/e/d/a/c;
        value = "limit"
    .end annotation
.end field

.field public final offset:I
    .annotation runtime Lc/e/d/a/c;
        value = "offset"
    .end annotation
.end field

.field public final referrers:Lc/e/d/m;
    .annotation runtime Lc/e/d/a/c;
        value = "referrers"
    .end annotation
.end field

.field public final seasonIndex:I
    .annotation runtime Lc/e/d/a/c;
        value = "seasonIndex"
    .end annotation
.end field

.field public final seriesId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "identifier"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILc/e/d/m;)V
    .locals 1

    const-string v0, "seriesId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrers"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/d/a/a/g;->seriesId:Ljava/lang/String;

    iput p2, p0, Lc/c/a/e/d/h/d/a/a/g;->seasonIndex:I

    iput p3, p0, Lc/c/a/e/d/h/d/a/a/g;->offset:I

    iput p4, p0, Lc/c/a/e/d/h/d/a/a/g;->limit:I

    iput-object p5, p0, Lc/c/a/e/d/h/d/a/a/g;->referrers:Lc/e/d/m;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lc/c/a/e/d/h/d/a/a/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lc/c/a/e/d/h/d/a/a/g;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/g;->seriesId:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/e/d/h/d/a/a/g;->seriesId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/h/d/a/a/g;->seasonIndex:I

    iget v3, p1, Lc/c/a/e/d/h/d/a/a/g;->seasonIndex:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/h/d/a/a/g;->offset:I

    iget v3, p1, Lc/c/a/e/d/h/d/a/a/g;->offset:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget v1, p0, Lc/c/a/e/d/h/d/a/a/g;->limit:I

    iget v3, p1, Lc/c/a/e/d/h/d/a/a/g;->limit:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/g;->referrers:Lc/e/d/m;

    iget-object p1, p1, Lc/c/a/e/d/h/d/a/a/g;->referrers:Lc/e/d/m;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/h/d/a/a/g;->seriesId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/h/d/a/a/g;->seasonIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/h/d/a/a/g;->offset:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/e/d/h/d/a/a/g;->limit:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/d/a/a/g;->referrers:Lc/e/d/m;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/e/d/m;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetSeasonPageRequestDto(seriesId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/g;->seriesId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seasonIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/h/d/a/a/g;->seasonIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/h/d/a/a/g;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/e/d/h/d/a/a/g;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", referrers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/d/a/a/g;->referrers:Lc/e/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
