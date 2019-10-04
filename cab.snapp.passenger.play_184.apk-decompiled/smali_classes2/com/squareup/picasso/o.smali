.class public final Lcom/squareup/picasso/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/o$a;
    }
.end annotation


# instance fields
.field final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/squareup/picasso/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/squareup/picasso/o$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/picasso/o$1;-><init>(Lcom/squareup/picasso/o;I)V

    iput-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/squareup/picasso/af;->b(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/squareup/picasso/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public final clearKeyUri(Ljava/lang/String;)V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 84
    iget-object v2, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final evictionCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictionCount()I

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/picasso/o$a;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p1, Lcom/squareup/picasso/o$a;->a:Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final hitCount()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->hitCount()I

    move-result v0

    return v0
.end method

.method public final maxSize()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    return v0
.end method

.method public final missCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->missCount()I

    move-result v0

    return v0
.end method

.method public final putCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->putCount()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 53
    invoke-static {p2}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/squareup/picasso/o;->maxSize()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 59
    iget-object p2, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    new-instance v2, Lcom/squareup/picasso/o$a;

    invoke-direct {v2, p2, v0}, Lcom/squareup/picasso/o$a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || bitmap == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/squareup/picasso/o;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method
