.class final Lcom/github/ybq/android/spinkit/b/f$11;
.super Lcom/github/ybq/android/spinkit/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ybq/android/spinkit/a/b<",
        "Lcom/github/ybq/android/spinkit/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lcom/github/ybq/android/spinkit/a/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Lcom/github/ybq/android/spinkit/b/f;)Ljava/lang/Float;
    .locals 0

    .line 426
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->getScaleY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f$11;->get(Lcom/github/ybq/android/spinkit/b/f;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(Lcom/github/ybq/android/spinkit/b/f;F)V
    .locals 0

    .line 421
    invoke-virtual {p1, p2}, Lcom/github/ybq/android/spinkit/b/f;->setScaleY(F)V

    return-void
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 418
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/github/ybq/android/spinkit/b/f$11;->setValue(Lcom/github/ybq/android/spinkit/b/f;F)V

    return-void
.end method
