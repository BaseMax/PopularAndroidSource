.class public Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"


# instance fields
.field private final bufferCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$1;-><init>(Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;I)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$2;

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$2;-><init>(Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;I)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    return-void
.end method

.method public static createKeyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$3;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$3;-><init>()V

    return-object v0
.end method

.method public static findCacheKeysForImageUri(Ljava/lang/String;Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->getKeySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static generateMemoryCacheEntryKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCachedBitmapsForImageUri(Ljava/lang/String;Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->getKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    invoke-virtual {p1, v2}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->getObjectFromCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;)V
    .locals 4

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->getKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->removeObjectFromCache(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addObjectToCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->getObjectFromCache(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public evictAll()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getObjectFromCache(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeObjectFromCache(Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;->bufferCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
