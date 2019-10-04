.class public final Lc/c/a/d/h/b/o;
.super Lc/c/a/d/h/b/e;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/d/h/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/h/b/e<",
        "Lc/c/a/d/h/b/w;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/c/a/d/h/b/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/d/h/b/w;)Ljava/lang/Integer;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lc/c/a/d/h/b/w;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/c/a/d/h/b/w;I)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lc/c/a/d/h/b/w;->c(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/d/h/b/w;

    invoke-virtual {p0, p1, p2}, Lc/c/a/d/h/b/o;->a(Lc/c/a/d/h/b/w;I)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/d/h/b/w;

    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/o;->a(Lc/c/a/d/h/b/w;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
