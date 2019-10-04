.class public final Lc/f/a/x;
.super Ljava/lang/Object;
.source "LruCache.java"

# interfaces
.implements Lc/f/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/x$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lc/f/a/x$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/f/a/w;

    invoke-direct {v0, p0, p1}, Lc/f/a/w;-><init>(Lc/f/a/x;I)V

    iput-object v0, p0, Lc/f/a/x;->a:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc/f/a/P;->a(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lc/f/a/x;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 8
    iget-object v0, p0, Lc/f/a/x;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/x;->a:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/f/a/x$a;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lc/f/a/x$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p2}, Lc/f/a/P;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lc/f/a/x;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 5
    iget-object p2, p0, Lc/f/a/x;->a:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lc/f/a/x;->a:Landroid/util/LruCache;

    new-instance v2, Lc/f/a/x$a;

    invoke-direct {v2, p2, v0}, Lc/f/a/x$a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || bitmap == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/x;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    return v0
.end method
