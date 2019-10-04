.class public abstract Lcom/google/android/gms/internal/sr;
.super Lcom/google/android/gms/internal/sx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/sr<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/sx;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/st;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/sx;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    .line 1000
    iget v2, v2, Lcom/google/android/gms/internal/st;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/su;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/so;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/so;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/so;->zzkq(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/so;->getPosition()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/so;->zzal(II)[B

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/sz;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/sz;-><init>(I[B)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    if-nez p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/st;

    invoke-direct {p2}, Lcom/google/android/gms/internal/st;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/st;->a(I)Lcom/google/android/gms/internal/su;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/su;

    invoke-direct {p1}, Lcom/google/android/gms/internal/su;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    .line 6000
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/st;->c(I)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v1, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    aput-object p1, v1, v4

    goto :goto_1

    :cond_2
    xor-int/lit8 v4, v4, -0x1

    iget v5, v3, Lcom/google/android/gms/internal/st;->d:I

    if-ge v4, v5, :cond_3

    iget-object v5, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    aget-object v5, v5, v4

    sget-object v6, Lcom/google/android/gms/internal/st;->a:Lcom/google/android/gms/internal/su;

    if-ne v5, v6, :cond_3

    iget-object v2, v3, Lcom/google/android/gms/internal/st;->b:[I

    aput v1, v2, v4

    iget-object v1, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    aput-object p1, v1, v4

    goto :goto_1

    :cond_3
    iget v5, v3, Lcom/google/android/gms/internal/st;->d:I

    iget-object v6, v3, Lcom/google/android/gms/internal/st;->b:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    iget v5, v3, Lcom/google/android/gms/internal/st;->d:I

    add-int/2addr v5, p2

    invoke-static {v5}, Lcom/google/android/gms/internal/st;->b(I)I

    move-result v5

    new-array v6, v5, [I

    new-array v5, v5, [Lcom/google/android/gms/internal/su;

    iget-object v7, v3, Lcom/google/android/gms/internal/st;->b:[I

    iget-object v8, v3, Lcom/google/android/gms/internal/st;->b:[I

    array-length v8, v8

    invoke-static {v7, v2, v6, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    iget-object v8, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    array-length v8, v8

    invoke-static {v7, v2, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v6, v3, Lcom/google/android/gms/internal/st;->b:[I

    iput-object v5, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    :cond_4
    iget v2, v3, Lcom/google/android/gms/internal/st;->d:I

    sub-int/2addr v2, v4

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/google/android/gms/internal/st;->b:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Lcom/google/android/gms/internal/st;->d:I

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    iget v6, v3, Lcom/google/android/gms/internal/st;->d:I

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v2, v3, Lcom/google/android/gms/internal/st;->b:[I

    aput v1, v2, v4

    iget-object v1, v3, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    aput-object p1, v1, v4

    iget v1, v3, Lcom/google/android/gms/internal/st;->d:I

    add-int/2addr v1, p2

    iput v1, v3, Lcom/google/android/gms/internal/st;->d:I

    .line 7000
    :cond_6
    :goto_1
    iget-object p1, p1, Lcom/google/android/gms/internal/su;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sr;->zzdaf()Lcom/google/android/gms/internal/sr;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ss;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ss<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p1, Lcom/google/android/gms/internal/ss;->tag:I

    ushr-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/st;->a(I)Lcom/google/android/gms/internal/su;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 5000
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/su;->b:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/su;->a:Lcom/google/android/gms/internal/ss;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ss;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tried to getExtension with a different Extension."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput-object p1, v0, Lcom/google/android/gms/internal/su;->a:Lcom/google/android/gms/internal/ss;

    iget-object v2, v0, Lcom/google/android/gms/internal/su;->c:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ss;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/su;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/internal/su;->c:Ljava/util/List;

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/su;->b:Ljava/lang/Object;

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/sp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    .line 3000
    iget v1, v1, Lcom/google/android/gms/internal/st;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/sr;->a:Lcom/google/android/gms/internal/st;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/internal/st;->c:[Lcom/google/android/gms/internal/su;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/su;->a(Lcom/google/android/gms/internal/sp;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public zzdaf()Lcom/google/android/gms/internal/sr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/sx;->zzdag()Lcom/google/android/gms/internal/sx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sr;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/sv;->zza(Lcom/google/android/gms/internal/sr;Lcom/google/android/gms/internal/sr;)V

    return-object v0
.end method

.method public synthetic zzdag()Lcom/google/android/gms/internal/sx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/sr;

    return-object v0
.end method
