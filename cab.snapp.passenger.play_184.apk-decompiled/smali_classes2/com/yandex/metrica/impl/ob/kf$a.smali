.class public final Lcom/yandex/metrica/impl/ob/kf$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kf$a;->d()Lcom/yandex/metrica/impl/ob/kf$a;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/kf$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kf$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->b:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 63
    iget v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 64
    iget v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 65
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x4

    .line 67
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/kf$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    const/16 v1, 0x18

    if-eq v0, v1, :cond_a

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 105
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->m()I

    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->c(I)I

    move-result v0

    .line 144
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->s()I

    move-result v1

    const/4 v3, 0x0

    .line 145
    :goto_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->q()I

    move-result v4

    if-lez v4, :cond_2

    .line 146
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->e(I)V

    .line 150
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    .line 151
    new-array v3, v3, [I

    if-eqz v1, :cond_4

    .line 153
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_4
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    .line 156
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    :cond_5
    iput-object v3, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    .line 159
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->d(I)V

    goto :goto_0

    .line 124
    :cond_6
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    .line 126
    new-array v0, v0, [I

    if-eqz v1, :cond_8

    .line 128
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_8
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    .line 131
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v2

    aput v2, v0, v1

    .line 132
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 135
    :cond_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v2

    aput v2, v0, v1

    .line 136
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    goto/16 :goto_0

    .line 119
    :cond_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->d:I

    goto/16 :goto_0

    .line 115
    :cond_b
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->c:I

    goto/16 :goto_0

    .line 111
    :cond_c
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->b:Z

    goto/16 :goto_0

    :cond_d
    return-object p0
.end method

.method protected final c()I
    .locals 6

    .line 75
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    const/4 v1, 0x1

    .line 77
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->f(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    iget v2, p0, Lcom/yandex/metrica/impl/ob/kf$a;->c:I

    const/4 v3, 0x2

    .line 79
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 80
    iget v2, p0, Lcom/yandex/metrica/impl/ob/kf$a;->d:I

    const/4 v3, 0x3

    .line 81
    invoke-static {v3, v2}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 82
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    if-eqz v2, :cond_1

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    :goto_0
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 85
    aget v4, v4, v2

    .line 87
    invoke-static {v4}, Lcom/yandex/metrica/impl/ob/b;->g(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v3

    .line 90
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_1
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/kf$a;
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->b:Z

    .line 52
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->c:I

    .line 53
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->d:I

    .line 54
    sget-object v0, Lcom/yandex/metrica/impl/ob/g;->a:[I

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->e:[I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf$a;->a:I

    return-object p0
.end method
