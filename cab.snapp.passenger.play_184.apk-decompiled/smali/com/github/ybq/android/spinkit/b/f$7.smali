.class final Lcom/github/ybq/android/spinkit/b/f$7;
.super Lcom/github/ybq/android/spinkit/a/c;
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
        "Lcom/github/ybq/android/spinkit/a/c<",
        "Lcom/github/ybq/android/spinkit/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 369
    invoke-direct {p0, p1}, Lcom/github/ybq/android/spinkit/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Lcom/github/ybq/android/spinkit/b/f;)Ljava/lang/Integer;
    .locals 0

    .line 377
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/b/f;->getTranslateY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 369
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/b/f$7;->get(Lcom/github/ybq/android/spinkit/b/f;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(Lcom/github/ybq/android/spinkit/b/f;I)V
    .locals 0

    .line 372
    invoke-virtual {p1, p2}, Lcom/github/ybq/android/spinkit/b/f;->setTranslateY(I)V

    return-void
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 369
    check-cast p1, Lcom/github/ybq/android/spinkit/b/f;

    invoke-virtual {p0, p1, p2}, Lcom/github/ybq/android/spinkit/b/f$7;->setValue(Lcom/github/ybq/android/spinkit/b/f;I)V

    return-void
.end method
