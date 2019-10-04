.class public final Lc/c/a/e/d/h/b/a/c;
.super Ljava/lang/Object;
.source "VideoSubtitleResponseDto.kt"


# instance fields
.field public name:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "language"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "url"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/VideoSubtitle;
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/common/model/VideoSubtitle;

    iget-object v1, p0, Lc/c/a/e/d/h/b/a/c;->url:Ljava/lang/String;

    iget-object v2, p0, Lc/c/a/e/d/h/b/a/c;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/farsitel/bazaar/common/model/VideoSubtitle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
