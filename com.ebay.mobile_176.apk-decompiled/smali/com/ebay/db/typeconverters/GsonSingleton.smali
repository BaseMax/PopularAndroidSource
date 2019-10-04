.class final Lcom/ebay/db/typeconverters/GsonSingleton;
.super Ljava/lang/Object;
.source "GsonSingleton.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static transient gsonSoftReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static getInstance()Lcom/google/gson/Gson;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 32
    const-class v0, Lcom/google/gson/Gson;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/ebay/db/typeconverters/GsonSingleton;->gsonSoftReference:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ebay/db/typeconverters/GsonSingleton;->gsonSoftReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    :goto_0
    if-nez v1, :cond_1

    .line 38
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ebay/db/typeconverters/GsonSingleton;->gsonSoftReference:Ljava/lang/ref/SoftReference;

    .line 42
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
