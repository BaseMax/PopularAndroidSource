.class public final Lcom/bumptech/glide/load/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/f$b;,
        Lcom/bumptech/glide/load/c/f$e;,
        Lcom/bumptech/glide/load/c/f$a;,
        Lcom/bumptech/glide/load/c/f$c;,
        Lcom/bumptech/glide/load/c/f$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/f$d<",
            "TData;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bumptech/glide/load/c/f;->a:Lcom/bumptech/glide/load/c/f$d;

    return-void
.end method


# virtual methods
.method public final buildLoadData(Ljava/io/File;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 37
    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/c;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/c;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/c/f$c;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/f;->a:Lcom/bumptech/glide/load/c/f$d;

    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/c/f$c;-><init>(Ljava/io/File;Lcom/bumptech/glide/load/c/f$d;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/a/d;)V

    return-object p2
.end method

.method public final bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;
    .locals 0

    .line 23
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/f;->buildLoadData(Ljava/io/File;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final handles(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/c/f;->handles(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
