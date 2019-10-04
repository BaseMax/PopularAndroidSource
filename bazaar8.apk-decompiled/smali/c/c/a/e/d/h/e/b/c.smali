.class public final Lc/c/a/e/d/h/e/b/c;
.super Ljava/lang/Object;
.source "RequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.videoDetailsRequest"
.end annotation


# instance fields
.field public final referrers:Lc/e/d/m;
    .annotation runtime Lc/e/d/a/c;
        value = "referrers"
    .end annotation
.end field

.field public final videoId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "videoId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/e/d/m;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrers"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/b/c;->videoId:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/e/d/h/e/b/c;->referrers:Lc/e/d/m;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/h/e/b/c;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/h/e/b/c;

    iget-object v0, p0, Lc/c/a/e/d/h/e/b/c;->videoId:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/e/d/h/e/b/c;->videoId:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/e/d/h/e/b/c;->referrers:Lc/e/d/m;

    iget-object p1, p1, Lc/c/a/e/d/h/e/b/c;->referrers:Lc/e/d/m;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/d/h/e/b/c;->videoId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/e/d/h/e/b/c;->referrers:Lc/e/d/m;

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

    const-string v1, "GetVideoDetailRequestDto(videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/c;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", referrers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/h/e/b/c;->referrers:Lc/e/d/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
