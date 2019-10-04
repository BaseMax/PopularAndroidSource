.class public Lc/b/a/c/d/d/a;
.super Ljava/lang/Object;
.source "FileDecoder.java"

# interfaces
.implements Lc/b/a/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/g<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/D<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance p2, Lc/b/a/c/d/d/b;

    invoke-direct {p2, p1}, Lc/b/a/c/d/d/b;-><init>(Ljava/io/File;)V

    return-object p2
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/b/D;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc/b/a/c/d/d/a;->a(Ljava/io/File;IILc/b/a/c/f;)Lc/b/a/c/b/D;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;Lc/b/a/c/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/c/f;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/d/d/a;->a(Ljava/io/File;Lc/b/a/c/f;)Z

    move-result p1

    return p1
.end method
