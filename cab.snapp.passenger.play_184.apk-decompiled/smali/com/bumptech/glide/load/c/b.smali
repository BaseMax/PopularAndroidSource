.class public final Lcom/bumptech/glide/load/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/c/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/c/b$d;,
        Lcom/bumptech/glide/load/c/b$a;,
        Lcom/bumptech/glide/load/c/b$c;,
        Lcom/bumptech/glide/load/c/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/c/b;->a:Lcom/bumptech/glide/load/c/b$b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;
    .locals 0

    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/b;->buildLoadData([BIILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object p1

    return-object p1
.end method

.method public final buildLoadData([BIILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/c/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 31
    new-instance p2, Lcom/bumptech/glide/load/c/n$a;

    new-instance p3, Lcom/bumptech/glide/f/c;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/f/c;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/c/b$c;

    iget-object v0, p0, Lcom/bumptech/glide/load/c/b;->a:Lcom/bumptech/glide/load/c/b$b;

    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/c/b$c;-><init>([BLcom/bumptech/glide/load/c/b$b;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/c/n$a;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/a/d;)V

    return-object p2
.end method

.method public final bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/c/b;->handles([B)Z

    move-result p1

    return p1
.end method

.method public final handles([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
