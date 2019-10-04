.class Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$1;
.super Landroidx/collection/LruCache;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;I)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$1;->this$0:Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache;

    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apptentive/android/sdk/util/cache/ImageMemoryCache$1;->entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 37
    instance-of p1, p3, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 38
    check-cast p3, Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 39
    :cond_0
    instance-of p1, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    .line 40
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method
