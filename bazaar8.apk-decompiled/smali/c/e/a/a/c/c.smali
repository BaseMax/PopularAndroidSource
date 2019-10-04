.class public final Lc/e/a/a/c/c;
.super Ljava/lang/Object;
.source "CryptoInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/c/c$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Lc/e/a/a/c/c$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lc/e/a/a/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 3
    sget v0, Lc/e/a/a/o/I;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Lc/e/a/a/c/c$a;

    iget-object v2, p0, Lc/e/a/a/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0, v2, v1}, Lc/e/a/a/c/c$a;-><init>(Landroid/media/MediaCodec$CryptoInfo;Lc/e/a/a/c/b;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lc/e/a/a/c/c;->j:Lc/e/a/a/c/c$a;

    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 17
    iget-object v0, p0, Lc/e/a/a/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    return-object v0
.end method

.method public a(I[I[I[B[BIII)V
    .locals 1

    .line 1
    iput p1, p0, Lc/e/a/a/c/c;->f:I

    .line 2
    iput-object p2, p0, Lc/e/a/a/c/c;->d:[I

    .line 3
    iput-object p3, p0, Lc/e/a/a/c/c;->e:[I

    .line 4
    iput-object p4, p0, Lc/e/a/a/c/c;->b:[B

    .line 5
    iput-object p5, p0, Lc/e/a/a/c/c;->a:[B

    .line 6
    iput p6, p0, Lc/e/a/a/c/c;->c:I

    .line 7
    iput p7, p0, Lc/e/a/a/c/c;->g:I

    .line 8
    iput p8, p0, Lc/e/a/a/c/c;->h:I

    .line 9
    iget-object v0, p0, Lc/e/a/a/c/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 10
    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 11
    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 12
    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 13
    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 14
    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 15
    sget p1, Lc/e/a/a/o/I;->a:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 16
    iget-object p1, p0, Lc/e/a/a/c/c;->j:Lc/e/a/a/c/c$a;

    invoke-static {p1, p7, p8}, Lc/e/a/a/c/c$a;->a(Lc/e/a/a/c/c$a;II)V

    :cond_0
    return-void
.end method
