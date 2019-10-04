.class public Lj/s;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lj/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/t;
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
.method public a(Lj/D;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/D;",
            ")",
            "Ljava/util/List<",
            "Lj/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lj/D;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/D;",
            "Ljava/util/List<",
            "Lj/r;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
