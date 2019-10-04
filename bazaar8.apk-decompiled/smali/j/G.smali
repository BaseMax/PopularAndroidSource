.class public final Lj/G;
.super Lj/O;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/G$a;,
        Lj/G$b;
    }
.end annotation


# static fields
.field public static final a:Lj/F;

.field public static final b:Lj/F;

.field public static final c:Lj/F;

.field public static final d:Lj/F;

.field public static final e:Lj/F;

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B


# instance fields
.field public final i:Lokio/ByteString;

.field public final j:Lj/F;

.field public final k:Lj/F;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/G$b;",
            ">;"
        }
    .end annotation
.end field

.field public m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v0

    sput-object v0, Lj/G;->a:Lj/F;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v0

    sput-object v0, Lj/G;->b:Lj/F;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v0

    sput-object v0, Lj/G;->c:Lj/F;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v0

    sput-object v0, Lj/G;->d:Lj/F;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object v0

    sput-object v0, Lj/G;->e:Lj/F;

    const/4 v0, 0x2

    .line 6
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lj/G;->f:[B

    .line 7
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lj/G;->g:[B

    .line 8
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lj/G;->h:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lokio/ByteString;Lj/F;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lj/F;",
            "Ljava/util/List<",
            "Lj/G$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lj/O;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lj/G;->m:J

    .line 3
    iput-object p1, p0, Lj/G;->i:Lokio/ByteString;

    .line 4
    iput-object p2, p0, Lj/G;->j:Lj/F;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/ByteString;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj/F;->a(Ljava/lang/String;)Lj/F;

    move-result-object p1

    iput-object p1, p0, Lj/G;->k:Lj/F;

    .line 6
    invoke-static {p3}, Lj/a/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lj/G;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lj/G;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lj/G;->a(Lk/h;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lj/G;->m:J

    return-wide v0
.end method

.method public final a(Lk/h;Z)J
    .locals 12

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Lk/g;

    invoke-direct {p1}, Lk/g;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lj/G;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 6
    iget-object v6, p0, Lj/G;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj/G$b;

    .line 7
    iget-object v7, v6, Lj/G$b;->a:Lj/C;

    .line 8
    iget-object v6, v6, Lj/G$b;->b:Lj/O;

    .line 9
    sget-object v8, Lj/G;->h:[B

    invoke-interface {p1, v8}, Lk/h;->write([B)Lk/h;

    .line 10
    iget-object v8, p0, Lj/G;->i:Lokio/ByteString;

    invoke-interface {p1, v8}, Lk/h;->a(Lokio/ByteString;)Lk/h;

    .line 11
    sget-object v8, Lj/G;->g:[B

    invoke-interface {p1, v8}, Lk/h;->write([B)Lk/h;

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v7}, Lj/C;->b()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 13
    invoke-virtual {v7, v9}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v10

    sget-object v11, Lj/G;->f:[B

    .line 14
    invoke-interface {v10, v11}, Lk/h;->write([B)Lk/h;

    move-result-object v10

    .line 15
    invoke-virtual {v7, v9}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v10

    sget-object v11, Lj/G;->g:[B

    .line 16
    invoke-interface {v10, v11}, Lk/h;->write([B)Lk/h;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 17
    :cond_1
    invoke-virtual {v6}, Lj/O;->b()Lj/F;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 18
    invoke-interface {p1, v8}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v8

    .line 19
    invoke-virtual {v7}, Lj/F;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v7

    sget-object v8, Lj/G;->g:[B

    .line 20
    invoke-interface {v7, v8}, Lk/h;->write([B)Lk/h;

    .line 21
    :cond_2
    invoke-virtual {v6}, Lj/O;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 22
    invoke-interface {p1, v9}, Lk/h;->a(Ljava/lang/String;)Lk/h;

    move-result-object v9

    .line 23
    invoke-interface {v9, v7, v8}, Lk/h;->g(J)Lk/h;

    move-result-object v9

    sget-object v10, Lj/G;->g:[B

    .line 24
    invoke-interface {v9, v10}, Lk/h;->write([B)Lk/h;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 25
    invoke-virtual {v0}, Lk/g;->p()V

    return-wide v9

    .line 26
    :cond_4
    :goto_3
    sget-object v9, Lj/G;->g:[B

    invoke-interface {p1, v9}, Lk/h;->write([B)Lk/h;

    if-eqz p2, :cond_5

    add-long/2addr v4, v7

    goto :goto_4

    .line 27
    :cond_5
    invoke-virtual {v6, p1}, Lj/O;->a(Lk/h;)V

    .line 28
    :goto_4
    sget-object v6, Lj/G;->g:[B

    invoke-interface {p1, v6}, Lk/h;->write([B)Lk/h;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 29
    :cond_6
    sget-object v1, Lj/G;->h:[B

    invoke-interface {p1, v1}, Lk/h;->write([B)Lk/h;

    .line 30
    iget-object v1, p0, Lj/G;->i:Lokio/ByteString;

    invoke-interface {p1, v1}, Lk/h;->a(Lokio/ByteString;)Lk/h;

    .line 31
    sget-object v1, Lj/G;->h:[B

    invoke-interface {p1, v1}, Lk/h;->write([B)Lk/h;

    .line 32
    sget-object v1, Lj/G;->g:[B

    invoke-interface {p1, v1}, Lk/h;->write([B)Lk/h;

    if-eqz p2, :cond_7

    .line 33
    invoke-virtual {v0}, Lk/g;->size()J

    move-result-wide p1

    add-long/2addr v4, p1

    .line 34
    invoke-virtual {v0}, Lk/g;->p()V

    :cond_7
    return-wide v4
.end method

.method public a(Lk/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lj/G;->a(Lk/h;Z)J

    return-void
.end method

.method public b()Lj/F;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/G;->k:Lj/F;

    return-object v0
.end method
