.class final Lcom/koushikdutta/ion/Ion$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/Ion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/koushikdutta/ion/DeferredLoadBitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/koushikdutta/ion/DeferredLoadBitmap;Lcom/koushikdutta/ion/DeferredLoadBitmap;)I
    .locals 2

    .line 260
    iget v0, p1, Lcom/koushikdutta/ion/DeferredLoadBitmap;->priority:I

    iget v1, p2, Lcom/koushikdutta/ion/DeferredLoadBitmap;->priority:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 262
    :cond_0
    iget p1, p1, Lcom/koushikdutta/ion/DeferredLoadBitmap;->priority:I

    iget p2, p2, Lcom/koushikdutta/ion/DeferredLoadBitmap;->priority:I

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 256
    check-cast p1, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    check-cast p2, Lcom/koushikdutta/ion/DeferredLoadBitmap;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/Ion$1;->compare(Lcom/koushikdutta/ion/DeferredLoadBitmap;Lcom/koushikdutta/ion/DeferredLoadBitmap;)I

    move-result p1

    return p1
.end method
