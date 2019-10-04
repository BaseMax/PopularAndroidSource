.class public Lj/a/e/t;
.super Ljava/lang/Object;
.source "PushObserver.java"

# interfaces
.implements Lj/a/e/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/e/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 0

    return-void
.end method

.method public a(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public a(ILjava/util/List;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lj/a/e/a;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public a(ILk/i;IZ)Z
    .locals 0

    int-to-long p3, p3

    .line 1
    invoke-interface {p2, p3, p4}, Lk/i;->skip(J)V

    const/4 p1, 0x1

    return p1
.end method
