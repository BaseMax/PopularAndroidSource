.class public Lb/f/c;
.super Lb/f/h;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/f/d;->a()Lb/f/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/f/h<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lb/f/d;


# direct methods
.method public constructor <init>(Lb/f/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/f/c;->d:Lb/f/d;

    invoke-direct {p0}, Lb/f/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lb/f/c;->d:Lb/f/d;

    invoke-virtual {v0, p1}, Lb/f/d;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public a(II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lb/f/c;->d:Lb/f/d;

    iget-object p2, p2, Lb/f/d;->h:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, Lb/f/c;->d:Lb/f/d;

    invoke-virtual {v0}, Lb/f/d;->clear()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lb/f/c;->d:Lb/f/d;

    invoke-virtual {v0, p1}, Lb/f/d;->f(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 3
    iget-object p2, p0, Lb/f/c;->d:Lb/f/d;

    invoke-virtual {p2, p1}, Lb/f/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/c;->d:Lb/f/d;

    invoke-virtual {v0, p1}, Lb/f/d;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/c;->d:Lb/f/d;

    iget v0, v0, Lb/f/d;->i:I

    return v0
.end method
