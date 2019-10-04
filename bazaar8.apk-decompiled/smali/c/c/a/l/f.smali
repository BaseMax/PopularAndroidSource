.class public final Lc/c/a/l/f;
.super Ljava/lang/Object;
.source "PlayerParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/l/f$a;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lc/c/a/l/f$a;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Lh/c;

.field public final e:Lh/c;

.field public final f:Lh/c;

.field public final g:Ljava/lang/String;

.field public final h:Landroid/net/Uri;

.field public final i:Landroid/net/Uri;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/l/f;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "source"

    const-string v4, "getSource()Lcom/farsitel/bazaar/player/VideoSource;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/l/f;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "isOffline"

    const-string v4, "isOffline()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/l/f;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "url"

    const-string v4, "getUrl()Landroid/net/Uri;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/l/f;->a:[Lh/i/i;

    new-instance v0, Lc/c/a/l/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/l/f$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/l/f;->b:Lc/c/a/l/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/cinema/RefreshData;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawUrl"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/l/f;->g:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/l/f;->h:Landroid/net/Uri;

    iput-object p3, p0, Lc/c/a/l/f;->i:Landroid/net/Uri;

    iput-object p4, p0, Lc/c/a/l/f;->j:Ljava/util/List;

    iput-object p5, p0, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    iput-object p6, p0, Lc/c/a/l/f;->l:Ljava/lang/String;

    const-string p1, "http://aparat.com/etc/api/videoshow/videohash/"

    .line 2
    iput-object p1, p0, Lc/c/a/l/f;->c:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/farsitel/bazaar/player/PlayerParams$source$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/player/PlayerParams$source$2;-><init>(Lc/c/a/l/f;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/l/f;->d:Lh/c;

    .line 4
    new-instance p1, Lcom/farsitel/bazaar/player/PlayerParams$isOffline$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/player/PlayerParams$isOffline$2;-><init>(Lc/c/a/l/f;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/l/f;->e:Lh/c;

    .line 5
    new-instance p1, Lcom/farsitel/bazaar/player/PlayerParams$url$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/player/PlayerParams$url$2;-><init>(Lc/c/a/l/f;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/l/f;->f:Lh/c;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;ILh/f/b/f;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p6

    .line 6
    invoke-direct/range {v2 .. v8}, Lc/c/a/l/f;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/l/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/l/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/l/f;Landroid/net/Uri;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/l/f;->a(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lc/c/a/l/f;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/l/f;->b(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lc/c/a/l/f;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/l/f;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/c/a/l/f;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 5

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rawUrl.toString()"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v3, 0x0

    const-string v4, "http"

    invoke-static {p1, v4, v2, v0, v3}, Lh/k/m;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/l/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/net/Uri;)Z
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "Uri.fromFile(File(uri.path))"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    return-object v0
.end method

.method public final d()Lcom/farsitel/bazaar/player/VideoSource;
    .locals 3

    iget-object v0, p0, Lc/c/a/l/f;->d:Lh/c;

    sget-object v1, Lc/c/a/l/f;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/player/VideoSource;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/l/f;->j:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/l/f;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/l/f;

    iget-object v0, p0, Lc/c/a/l/f;->g:Ljava/lang/String;

    iget-object v1, p1, Lc/c/a/l/f;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/l/f;->h:Landroid/net/Uri;

    iget-object v1, p1, Lc/c/a/l/f;->h:Landroid/net/Uri;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/l/f;->i:Landroid/net/Uri;

    iget-object v1, p1, Lc/c/a/l/f;->i:Landroid/net/Uri;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/l/f;->j:Ljava/util/List;

    iget-object v1, p1, Lc/c/a/l/f;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    iget-object v1, p1, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/l/f;->l:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/l/f;->l:Ljava/lang/String;

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

.method public final f()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lc/c/a/l/f;->f:Lh/c;

    sget-object v1, Lc/c/a/l/f;->a:[Lh/i/i;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/l/f;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/l/f;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/l/f;->h:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/l/f;->i:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/l/f;->j:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/RefreshData;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/l/f;->l:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lc/c/a/l/f;->e:Lh/c;

    sget-object v1, Lc/c/a/l/f;->a:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lc/c/a/l/f;->g:Ljava/lang/String;

    const-string v2, "video_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lc/c/a/l/f;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lc/c/a/l/f;->i:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "watermark_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lc/c/a/l/f;->j:Ljava/util/List;

    instance-of v2, v1, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "subtitles"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    iget-object v1, p0, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    const-string v2, "refresh_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 7
    iget-object v1, p0, Lc/c/a/l/f;->l:Ljava/lang/String;

    const-string v2, "referrer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerParams(videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/f;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watermarkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/f;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/f;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/f;->k:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/l/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
