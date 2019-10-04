.class public Lc/e/a/a/e/c/g;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lc/e/a/a/e/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/e/c/g$b;,
        Lc/e/a/a/e/c/g$c;,
        Lc/e/a/a/e/c/g$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/a/e/j;

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:Ljava/util/UUID;


# instance fields
.field public A:Lc/e/a/a/e/c/g$b;

.field public B:Z

.field public C:I

.field public D:J

.field public E:Z

.field public F:J

.field public G:J

.field public H:J

.field public I:Lc/e/a/a/o/q;

.field public J:Lc/e/a/a/o/q;

.field public K:Z

.field public L:I

.field public M:J

.field public N:J

.field public O:I

.field public P:I

.field public Q:[I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:B

.field public aa:I

.field public ba:I

.field public ca:I

.field public da:Z

.field public ea:Z

.field public fa:Lc/e/a/a/e/i;

.field public final h:Lc/e/a/a/e/c/e;

.field public final i:Lc/e/a/a/e/c/i;

.field public final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/e/a/a/e/c/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z

.field public final l:Lc/e/a/a/o/v;

.field public final m:Lc/e/a/a/o/v;

.field public final n:Lc/e/a/a/o/v;

.field public final o:Lc/e/a/a/o/v;

.field public final p:Lc/e/a/a/o/v;

.field public final q:Lc/e/a/a/o/v;

.field public final r:Lc/e/a/a/o/v;

.field public final s:Lc/e/a/a/o/v;

.field public final t:Lc/e/a/a/o/v;

.field public u:Ljava/nio/ByteBuffer;

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lc/e/a/a/e/c/a;->a:Lc/e/a/a/e/c/a;

    sput-object v0, Lc/e/a/a/e/c/g;->a:Lc/e/a/a/e/j;

    const/16 v0, 0x20

    .line 2
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lc/e/a/a/e/c/g;->b:[B

    const/16 v1, 0xc

    .line 3
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lc/e/a/a/e/c/g;->c:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 4
    invoke-static {v1}, Lc/e/a/a/o/I;->e(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lc/e/a/a/e/c/g;->d:[B

    .line 5
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lc/e/a/a/e/c/g;->e:[B

    const/16 v0, 0xa

    .line 6
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lc/e/a/a/e/c/g;->f:[B

    .line 7
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lc/e/a/a/e/c/g;->g:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/e/c/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    new-instance v0, Lc/e/a/a/e/c/c;

    invoke-direct {v0}, Lc/e/a/a/e/c/c;-><init>()V

    invoke-direct {p0, v0, p1}, Lc/e/a/a/e/c/g;-><init>(Lc/e/a/a/e/c/e;I)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/e/c/e;I)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lc/e/a/a/e/c/g;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide v2, p0, Lc/e/a/a/e/c/g;->x:J

    .line 6
    iput-wide v2, p0, Lc/e/a/a/e/c/g;->y:J

    .line 7
    iput-wide v2, p0, Lc/e/a/a/e/c/g;->z:J

    .line 8
    iput-wide v0, p0, Lc/e/a/a/e/c/g;->F:J

    .line 9
    iput-wide v0, p0, Lc/e/a/a/e/c/g;->G:J

    .line 10
    iput-wide v2, p0, Lc/e/a/a/e/c/g;->H:J

    .line 11
    iput-object p1, p0, Lc/e/a/a/e/c/g;->h:Lc/e/a/a/e/c/e;

    .line 12
    iget-object p1, p0, Lc/e/a/a/e/c/g;->h:Lc/e/a/a/e/c/e;

    new-instance v0, Lc/e/a/a/e/c/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/e/a/a/e/c/g$a;-><init>(Lc/e/a/a/e/c/g;Lc/e/a/a/e/c/f;)V

    invoke-interface {p1, v0}, Lc/e/a/a/e/c/e;->a(Lc/e/a/a/e/c/d;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lc/e/a/a/e/c/g;->k:Z

    .line 14
    new-instance p1, Lc/e/a/a/e/c/i;

    invoke-direct {p1}, Lc/e/a/a/e/c/i;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->i:Lc/e/a/a/e/c/i;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lc/e/a/a/o/v;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    .line 17
    new-instance p1, Lc/e/a/a/o/v;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->o:Lc/e/a/a/o/v;

    .line 18
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1, p2}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->p:Lc/e/a/a/o/v;

    .line 19
    new-instance p1, Lc/e/a/a/o/v;

    sget-object v0, Lc/e/a/a/o/t;->a:[B

    invoke-direct {p1, v0}, Lc/e/a/a/o/v;-><init>([B)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->l:Lc/e/a/a/o/v;

    .line 20
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1, p2}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->m:Lc/e/a/a/o/v;

    .line 21
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    .line 22
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    .line 23
    new-instance p1, Lc/e/a/a/o/v;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lc/e/a/a/o/v;-><init>(I)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->s:Lc/e/a/a/o/v;

    .line 24
    new-instance p1, Lc/e/a/a/o/v;

    invoke-direct {p1}, Lc/e/a/a/o/v;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->t:Lc/e/a/a/o/v;

    return-void
.end method

.method public static a([BJLjava/lang/String;IJ[B)V
    .locals 11

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object/from16 v1, p7

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-wide v1, 0xd693a400L

    .line 313
    div-long v1, p1, v1

    long-to-int v2, v1

    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    const-wide/32 v7, 0x3938700

    .line 314
    div-long v7, v3, v7

    long-to-int v1, v7

    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 315
    div-long v7, v3, v5

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 316
    div-long v3, v3, p5

    long-to-int v4, v3

    .line 317
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 318
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    .line 319
    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/o/I;->e(Ljava/lang/String;)[B

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p7

    .line 320
    :goto_0
    array-length v1, v1

    move-object v3, p0

    move v4, p4

    invoke-static {v2, v0, p0, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "V_VP8"

    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_VP9"

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_AV1"

    .line 343
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG2"

    .line 344
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/SP"

    .line 345
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 346
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AP"

    .line 347
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 348
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 349
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MS/VFW/FOURCC"

    .line 350
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_THEORA"

    .line 351
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_OPUS"

    .line 352
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_VORBIS"

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AAC"

    .line 354
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L2"

    .line 355
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L3"

    .line 356
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AC3"

    .line 357
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_EAC3"

    .line 358
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_TRUEHD"

    .line 359
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS"

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/EXPRESS"

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/LOSSLESS"

    .line 362
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_FLAC"

    .line 363
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MS/ACM"

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_PCM/INT/LIT"

    .line 365
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    .line 366
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    .line 367
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_VOBSUB"

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_HDMV/PGS"

    .line 369
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_DVBSUB"

    .line 370
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 371
    new-array p0, p1, [I

    return-object p0

    .line 372
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 373
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method public static synthetic b()[B
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/c/g;->d:[B

    return-object v0
.end method

.method public static synthetic c()Ljava/util/UUID;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/a/e/c/g;->g:Ljava/util/UUID;

    return-object v0
.end method

.method public static synthetic e()[Lc/e/a/a/e/g;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lc/e/a/a/e/g;

    new-instance v1, Lc/e/a/a/e/c/g;

    invoke-direct {v1}, Lc/e/a/a/e/c/g;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final a(Lc/e/a/a/e/h;Lc/e/a/a/e/n;)I
    .locals 5

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lc/e/a/a/e/c/g;->da:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 11
    iget-boolean v3, p0, Lc/e/a/a/e/c/g;->da:Z

    if-nez v3, :cond_1

    .line 12
    iget-object v2, p0, Lc/e/a/a/e/c/g;->h:Lc/e/a/a/e/c/e;

    invoke-interface {v2, p1}, Lc/e/a/a/e/c/e;->a(Lc/e/a/a/e/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    invoke-interface {p1}, Lc/e/a/a/e/h;->getPosition()J

    move-result-wide v3

    invoke-virtual {p0, p2, v3, v4}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/n;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    .line 14
    :goto_0
    iget-object p1, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 15
    iget-object p1, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/e/c/g$b;

    invoke-virtual {p1}, Lc/e/a/a/e/c/g$b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public final a(Lc/e/a/a/e/h;Lc/e/a/a/e/q;I)I
    .locals 1

    .line 325
    iget-object v0, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 327
    iget-object p3, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-interface {p2, p3, p1}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    invoke-interface {p2, p1, p3, v0}, Lc/e/a/a/e/q;->a(Lc/e/a/a/e/h;IZ)I

    move-result p1

    .line 329
    :goto_0
    iget p2, p0, Lc/e/a/a/e/c/g;->U:I

    add-int/2addr p2, p1

    iput p2, p0, Lc/e/a/a/e/c/g;->U:I

    .line 330
    iget p2, p0, Lc/e/a/a/e/c/g;->ca:I

    add-int/2addr p2, p1

    iput p2, p0, Lc/e/a/a/e/c/g;->ca:I

    return p1
.end method

.method public final a(J)J
    .locals 6

    .line 338
    iget-wide v2, p0, Lc/e/a/a/e/c/g;->x:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 339
    invoke-static/range {v0 .. v5}, Lc/e/a/a/o/I;->c(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 340
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 7

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_5

    const v0, 0x1549a966

    if-eq p1, v0, :cond_3

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 34
    :cond_0
    iget-boolean p1, p0, Lc/e/a/a/e/c/g;->B:Z

    if-nez p1, :cond_10

    .line 35
    iget-object p1, p0, Lc/e/a/a/e/c/g;->fa:Lc/e/a/a/e/i;

    invoke-virtual {p0}, Lc/e/a/a/e/c/g;->d()Lc/e/a/a/e/o;

    move-result-object v0

    invoke-interface {p1, v0}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    .line 36
    iput-boolean v2, p0, Lc/e/a/a/e/c/g;->B:Z

    goto/16 :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 38
    iget-object p1, p0, Lc/e/a/a/e/c/g;->fa:Lc/e/a/a/e/i;

    invoke-interface {p1}, Lc/e/a/a/e/i;->a()V

    goto/16 :goto_0

    .line 39
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    iget-wide v0, p0, Lc/e/a/a/e/c/g;->x:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-wide/32 v0, 0xf4240

    .line 41
    iput-wide v0, p0, Lc/e/a/a/e/c/g;->x:J

    .line 42
    :cond_4
    iget-wide v0, p0, Lc/e/a/a/e/c/g;->y:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_10

    .line 43
    invoke-virtual {p0, v0, v1}, Lc/e/a/a/e/c/g;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/a/e/c/g;->z:J

    goto/16 :goto_0

    .line 44
    :cond_5
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iget-boolean v0, p1, Lc/e/a/a/e/c/g$b;->f:Z

    if-eqz v0, :cond_10

    iget-object p1, p1, Lc/e/a/a/e/c/g$b;->g:[B

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 45
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_7
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iget-boolean v0, p1, Lc/e/a/a/e/c/g$b;->f:Z

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lc/e/a/a/e/c/g$b;->h:Lc/e/a/a/e/q$a;

    if-eqz v0, :cond_8

    .line 48
    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmInitData;

    new-array v2, v2, [Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v4, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v5, Lc/e/a/a/q;->a:Ljava/util/UUID;

    iget-object v0, v0, Lc/e/a/a/e/q$a;->b:[B

    const-string v6, "video/webm"

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v2, v1

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v3, p1, Lc/e/a/a/e/c/g$b;->j:Lcom/google/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    .line 49
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_9
    iget p1, p0, Lc/e/a/a/e/c/g;->C:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-wide v0, p0, Lc/e/a/a/e/c/g;->D:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_a

    if-ne p1, v3, :cond_10

    .line 51
    iput-wide v0, p0, Lc/e/a/a/e/c/g;->F:J

    goto :goto_0

    .line 52
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_b
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iget-object p1, p1, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    invoke-static {p1}, Lc/e/a/a/e/c/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 54
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iget-object v0, p0, Lc/e/a/a/e/c/g;->fa:Lc/e/a/a/e/i;

    iget v1, p1, Lc/e/a/a/e/c/g$b;->c:I

    invoke-virtual {p1, v0, v1}, Lc/e/a/a/e/c/g$b;->a(Lc/e/a/a/e/i;I)V

    .line 55
    iget-object p1, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    iget-object v0, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iget v1, v0, Lc/e/a/a/e/c/g$b;->c:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    goto :goto_0

    .line 57
    :cond_d
    iget p1, p0, Lc/e/a/a/e/c/g;->L:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    return-void

    .line 58
    :cond_e
    iget-boolean p1, p0, Lc/e/a/a/e/c/g;->ea:Z

    if-nez p1, :cond_f

    .line 59
    iget p1, p0, Lc/e/a/a/e/c/g;->T:I

    or-int/2addr p1, v2

    iput p1, p0, Lc/e/a/a/e/c/g;->T:I

    .line 60
    :cond_f
    iget-object p1, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    iget v0, p0, Lc/e/a/a/e/c/g;->R:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/a/e/c/g$b;

    iget-wide v2, p0, Lc/e/a/a/e/c/g;->M:J

    invoke-virtual {p0, p1, v2, v3}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/c/g$b;J)V

    .line 61
    iput v1, p0, Lc/e/a/a/e/c/g;->L:I

    :cond_10
    :goto_0
    return-void
.end method

.method public a(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->s:F

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->r:F

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->q:F

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->K:F

    goto :goto_0

    .line 115
    :pswitch_4
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->J:F

    goto :goto_0

    .line 116
    :pswitch_5
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->I:F

    goto :goto_0

    .line 117
    :pswitch_6
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->H:F

    goto :goto_0

    .line 118
    :pswitch_7
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->G:F

    goto :goto_0

    .line 119
    :pswitch_8
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->F:F

    goto :goto_0

    .line 120
    :pswitch_9
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->E:F

    goto :goto_0

    .line 121
    :pswitch_a
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->D:F

    goto :goto_0

    .line 122
    :pswitch_b
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->C:F

    goto :goto_0

    .line 123
    :pswitch_c
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-float p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->B:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 124
    iput-wide p1, p0, Lc/e/a/a/e/c/g;->y:J

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    double-to-int p2, p2

    iput p2, p1, Lc/e/a/a/e/c/g$b;->N:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IILc/e/a/a/e/h;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    .line 131
    iget-object v1, v0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    new-array v4, v2, [B

    iput-object v4, v1, Lc/e/a/a/e/c/g$b;->t:[B

    .line 132
    iget-object v1, v1, Lc/e/a/a/e/c/g$b;->t:[B

    invoke-interface {v3, v1, v7, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    goto/16 :goto_e

    .line 133
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    iget-object v1, v0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    new-array v4, v2, [B

    iput-object v4, v1, Lc/e/a/a/e/c/g$b;->i:[B

    .line 135
    iget-object v1, v1, Lc/e/a/a/e/c/g$b;->i:[B

    invoke-interface {v3, v1, v7, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    goto/16 :goto_e

    .line 136
    :cond_2
    iget-object v1, v0, Lc/e/a/a/e/c/g;->p:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 137
    iget-object v1, v0, Lc/e/a/a/e/c/g;->p:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    sub-int/2addr v6, v2

    invoke-interface {v3, v1, v6, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 138
    iget-object v1, v0, Lc/e/a/a/e/c/g;->p:Lc/e/a/a/o/v;

    invoke-virtual {v1, v7}, Lc/e/a/a/o/v;->e(I)V

    .line 139
    iget-object v1, v0, Lc/e/a/a/e/c/g;->p:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->w()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lc/e/a/a/e/c/g;->C:I

    goto/16 :goto_e

    .line 140
    :cond_3
    new-array v1, v2, [B

    .line 141
    invoke-interface {v3, v1, v7, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 142
    iget-object v2, v0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    new-instance v3, Lc/e/a/a/e/q$a;

    invoke-direct {v3, v8, v1, v7, v7}, Lc/e/a/a/e/q$a;-><init>(I[BII)V

    iput-object v3, v2, Lc/e/a/a/e/c/g$b;->h:Lc/e/a/a/e/q$a;

    goto/16 :goto_e

    .line 143
    :cond_4
    iget-object v1, v0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    new-array v4, v2, [B

    iput-object v4, v1, Lc/e/a/a/e/c/g$b;->g:[B

    .line 144
    iget-object v1, v1, Lc/e/a/a/e/c/g$b;->g:[B

    invoke-interface {v3, v1, v7, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    goto/16 :goto_e

    .line 145
    :cond_5
    iget v4, v0, Lc/e/a/a/e/c/g;->L:I

    const/16 v9, 0x8

    if-nez v4, :cond_6

    .line 146
    iget-object v4, v0, Lc/e/a/a/e/c/g;->i:Lc/e/a/a/e/c/i;

    invoke-virtual {v4, v3, v7, v8, v9}, Lc/e/a/a/e/c/i;->a(Lc/e/a/a/e/h;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Lc/e/a/a/e/c/g;->R:I

    .line 147
    iget-object v4, v0, Lc/e/a/a/e/c/g;->i:Lc/e/a/a/e/c/i;

    invoke-virtual {v4}, Lc/e/a/a/e/c/i;->a()I

    move-result v4

    iput v4, v0, Lc/e/a/a/e/c/g;->S:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    iput-wide v10, v0, Lc/e/a/a/e/c/g;->N:J

    .line 149
    iput v8, v0, Lc/e/a/a/e/c/g;->L:I

    .line 150
    iget-object v4, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v4}, Lc/e/a/a/o/v;->C()V

    .line 151
    :cond_6
    iget-object v4, v0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    iget v10, v0, Lc/e/a/a/e/c/g;->R:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/a/e/c/g$b;

    if-nez v4, :cond_7

    .line 152
    iget v1, v0, Lc/e/a/a/e/c/g;->S:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lc/e/a/a/e/h;->c(I)V

    .line 153
    iput v7, v0, Lc/e/a/a/e/c/g;->L:I

    return-void

    .line 154
    :cond_7
    iget v10, v0, Lc/e/a/a/e/c/g;->L:I

    if-ne v10, v8, :cond_1a

    const/4 v10, 0x3

    .line 155
    invoke-virtual {v0, v3, v10}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;I)V

    .line 156
    iget-object v11, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v11, v11, Lc/e/a/a/o/v;->a:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 157
    iput v8, v0, Lc/e/a/a/e/c/g;->P:I

    .line 158
    iget-object v6, v0, Lc/e/a/a/e/c/g;->Q:[I

    invoke-static {v6, v8}, Lc/e/a/a/e/c/g;->a([II)[I

    move-result-object v6

    iput-object v6, v0, Lc/e/a/a/e/c/g;->Q:[I

    .line 159
    iget-object v6, v0, Lc/e/a/a/e/c/g;->Q:[I

    iget v11, v0, Lc/e/a/a/e/c/g;->S:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v10

    aput v2, v6, v7

    :goto_0
    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_8
    if-ne v1, v5, :cond_19

    .line 160
    invoke-virtual {v0, v3, v6}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;I)V

    .line 161
    iget-object v14, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v14, v14, Lc/e/a/a/o/v;->a:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v0, Lc/e/a/a/e/c/g;->P:I

    .line 162
    iget-object v14, v0, Lc/e/a/a/e/c/g;->Q:[I

    iget v15, v0, Lc/e/a/a/e/c/g;->P:I

    .line 163
    invoke-static {v14, v15}, Lc/e/a/a/e/c/g;->a([II)[I

    move-result-object v14

    iput-object v14, v0, Lc/e/a/a/e/c/g;->Q:[I

    if-ne v11, v12, :cond_9

    .line 164
    iget v10, v0, Lc/e/a/a/e/c/g;->S:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v6

    iget v6, v0, Lc/e/a/a/e/c/g;->P:I

    div-int/2addr v2, v6

    .line 165
    iget-object v10, v0, Lc/e/a/a/e/c/g;->Q:[I

    invoke-static {v10, v7, v6, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    :cond_9
    if-ne v11, v8, :cond_c

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 166
    :goto_1
    iget v14, v0, Lc/e/a/a/e/c/g;->P:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_b

    .line 167
    iget-object v14, v0, Lc/e/a/a/e/c/g;->Q:[I

    aput v7, v14, v6

    :cond_a
    add-int/2addr v10, v8

    .line 168
    invoke-virtual {v0, v3, v10}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;I)V

    .line 169
    iget-object v14, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v14, v14, Lc/e/a/a/o/v;->a:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    .line 170
    iget-object v15, v0, Lc/e/a/a/e/c/g;->Q:[I

    aget v16, v15, v6

    add-int v16, v16, v14

    aput v16, v15, v6

    if-eq v14, v13, :cond_a

    .line 171
    aget v14, v15, v6

    add-int/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 172
    :cond_b
    iget-object v6, v0, Lc/e/a/a/e/c/g;->Q:[I

    sub-int/2addr v14, v8

    iget v15, v0, Lc/e/a/a/e/c/g;->S:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v6, v14

    goto :goto_0

    :cond_c
    if-ne v11, v10, :cond_18

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 173
    :goto_2
    iget v14, v0, Lc/e/a/a/e/c/g;->P:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_13

    .line 174
    iget-object v14, v0, Lc/e/a/a/e/c/g;->Q:[I

    aput v7, v14, v6

    add-int/lit8 v10, v10, 0x1

    .line 175
    invoke-virtual {v0, v3, v10}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;I)V

    .line 176
    iget-object v14, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v14, v14, Lc/e/a/a/o/v;->a:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_12

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v9, :cond_f

    rsub-int/lit8 v18, v14, 0x7

    shl-int v18, v8, v18

    .line 177
    iget-object v5, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    aget-byte v5, v5, v15

    and-int v5, v5, v18

    if-eqz v5, :cond_e

    add-int/2addr v10, v14

    .line 178
    invoke-virtual {v0, v3, v10}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;I)V

    .line 179
    iget-object v5, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v5, v5, Lc/e/a/a/o/v;->a:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v5, v5, v15

    and-int/2addr v5, v13

    xor-int/lit8 v15, v18, -0x1

    and-int/2addr v5, v15

    int-to-long v7, v5

    move/from16 v5, v16

    :goto_4
    move-wide/from16 v16, v7

    if-ge v5, v10, :cond_d

    shl-long v7, v16, v9

    .line 180
    iget-object v15, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v15, v15, Lc/e/a/a/o/v;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    int-to-long v12, v5

    or-long/2addr v7, v12

    move/from16 v5, v16

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_4

    :cond_d
    if-lez v6, :cond_f

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v7, 0x1

    shl-long v12, v7, v14

    sub-long/2addr v12, v7

    sub-long v16, v16, v12

    goto :goto_5

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_3

    :cond_f
    :goto_5
    move-wide/from16 v7, v16

    const-wide/32 v12, -0x80000000

    cmp-long v5, v7, v12

    if-ltz v5, :cond_11

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v7, v12

    if-gtz v5, :cond_11

    long-to-int v5, v7

    .line 181
    iget-object v7, v0, Lc/e/a/a/e/c/g;->Q:[I

    if-nez v6, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    add-int/2addr v5, v8

    :goto_6
    aput v5, v7, v6

    .line 182
    iget-object v5, v0, Lc/e/a/a/e/c/g;->Q:[I

    aget v5, v5, v6

    add-int/2addr v11, v5

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto/16 :goto_2

    .line 183
    :cond_11
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_12
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_13
    iget-object v5, v0, Lc/e/a/a/e/c/g;->Q:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v7, v0, Lc/e/a/a/e/c/g;->S:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v5, v14

    .line 186
    :goto_7
    iget-object v2, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v2, v2, Lc/e/a/a/o/v;->a:[B

    const/4 v5, 0x0

    aget-byte v7, v2, v5

    shl-int/lit8 v5, v7, 0x8

    aget-byte v2, v2, v6

    const/16 v6, 0xff

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    .line 187
    iget-wide v5, v0, Lc/e/a/a/e/c/g;->H:J

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Lc/e/a/a/e/c/g;->a(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lc/e/a/a/e/c/g;->M:J

    .line 188
    iget-object v2, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v2, v2, Lc/e/a/a/o/v;->a:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_14

    const/4 v2, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    .line 189
    :goto_8
    iget v6, v4, Lc/e/a/a/e/c/g$b;->d:I

    if-eq v6, v5, :cond_16

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_15

    iget-object v6, v0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v6, v6, Lc/e/a/a/o/v;->a:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_15

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v5, 0x1

    :goto_a
    if-eqz v2, :cond_17

    const/high16 v7, -0x80000000

    goto :goto_b

    :cond_17
    const/4 v7, 0x0

    :goto_b
    or-int v2, v5, v7

    .line 190
    iput v2, v0, Lc/e/a/a/e/c/g;->T:I

    const/4 v2, 0x2

    .line 191
    iput v2, v0, Lc/e/a/a/e/c/g;->L:I

    const/4 v2, 0x0

    .line 192
    iput v2, v0, Lc/e/a/a/e/c/g;->O:I

    goto :goto_c

    .line 193
    :cond_18
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected lacing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_19
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_c
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1c

    .line 195
    :goto_d
    iget v1, v0, Lc/e/a/a/e/c/g;->O:I

    iget v2, v0, Lc/e/a/a/e/c/g;->P:I

    if-ge v1, v2, :cond_1b

    .line 196
    iget-object v2, v0, Lc/e/a/a/e/c/g;->Q:[I

    aget v1, v2, v1

    invoke-virtual {v0, v3, v4, v1}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/c/g$b;I)V

    .line 197
    iget-wide v1, v0, Lc/e/a/a/e/c/g;->M:J

    iget v5, v0, Lc/e/a/a/e/c/g;->O:I

    iget v6, v4, Lc/e/a/a/e/c/g$b;->e:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 198
    invoke-virtual {v0, v4, v1, v2}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/c/g$b;J)V

    .line 199
    iget v1, v0, Lc/e/a/a/e/c/g;->O:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lc/e/a/a/e/c/g;->O:I

    goto :goto_d

    :cond_1b
    const/4 v1, 0x0

    .line 200
    iput v1, v0, Lc/e/a/a/e/c/g;->L:I

    goto :goto_e

    :cond_1c
    const/4 v1, 0x0

    .line 201
    iget-object v2, v0, Lc/e/a/a/e/c/g;->Q:[I

    aget v1, v2, v1

    invoke-virtual {v0, v3, v4, v1}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/c/g$b;I)V

    :goto_e
    return-void
.end method

.method public a(IJ)V
    .locals 7

    const/16 v0, 0x5031

    const-string v1, " not supported"

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5032

    const-wide/16 v2, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 62
    :pswitch_0
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->A:I

    goto/16 :goto_0

    .line 63
    :pswitch_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->z:I

    goto/16 :goto_0

    .line 64
    :pswitch_2
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-boolean v6, p1, Lc/e/a/a/e/c/g$b;->v:Z

    long-to-int p3, p2

    if-eq p3, v6, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v5, p1, Lc/e/a/a/e/c/g$b;->w:I

    goto/16 :goto_0

    .line 66
    :cond_1
    iput v1, p1, Lc/e/a/a/e/c/g$b;->w:I

    goto/16 :goto_0

    .line 67
    :cond_2
    iput v6, p1, Lc/e/a/a/e/c/g$b;->w:I

    goto/16 :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v6, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto/16 :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v0, p1, Lc/e/a/a/e/c/g$b;->x:I

    goto/16 :goto_0

    .line 69
    :cond_4
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v1, p1, Lc/e/a/a/e/c/g$b;->x:I

    goto/16 :goto_0

    .line 70
    :cond_5
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v4, p1, Lc/e/a/a/e/c/g$b;->x:I

    goto/16 :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    goto/16 :goto_0

    .line 71
    :cond_6
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v6, p1, Lc/e/a/a/e/c/g$b;->y:I

    goto/16 :goto_0

    .line 72
    :cond_7
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v5, p1, Lc/e/a/a/e/c/g$b;->y:I

    goto/16 :goto_0

    .line 73
    :sswitch_0
    iput-wide p2, p0, Lc/e/a/a/e/c/g;->x:J

    goto/16 :goto_0

    .line 74
    :sswitch_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->e:I

    goto/16 :goto_0

    :sswitch_2
    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    goto/16 :goto_0

    .line 75
    :cond_8
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v4, p1, Lc/e/a/a/e/c/g$b;->p:I

    goto/16 :goto_0

    .line 76
    :cond_9
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v5, p1, Lc/e/a/a/e/c/g$b;->p:I

    goto/16 :goto_0

    .line 77
    :cond_a
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v6, p1, Lc/e/a/a/e/c/g$b;->p:I

    goto/16 :goto_0

    .line 78
    :cond_b
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v0, p1, Lc/e/a/a/e/c/g$b;->p:I

    goto/16 :goto_0

    .line 79
    :sswitch_3
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->M:I

    goto/16 :goto_0

    .line 80
    :sswitch_4
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-wide p2, p1, Lc/e/a/a/e/c/g$b;->P:J

    goto/16 :goto_0

    .line 81
    :sswitch_5
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-wide p2, p1, Lc/e/a/a/e/c/g$b;->O:J

    goto/16 :goto_0

    .line 82
    :sswitch_6
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    cmp-long v1, p2, v2

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    iput-boolean v0, p1, Lc/e/a/a/e/c/g$b;->R:Z

    goto/16 :goto_0

    .line 83
    :sswitch_7
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->n:I

    goto/16 :goto_0

    .line 84
    :sswitch_8
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->o:I

    goto/16 :goto_0

    .line 85
    :sswitch_9
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->m:I

    goto/16 :goto_0

    :sswitch_a
    long-to-int p1, p2

    if-eqz p1, :cond_10

    if-eq p1, v6, :cond_f

    if-eq p1, v4, :cond_e

    const/16 p2, 0xf

    if-eq p1, p2, :cond_d

    goto/16 :goto_0

    .line 86
    :cond_d
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v4, p1, Lc/e/a/a/e/c/g$b;->u:I

    goto/16 :goto_0

    .line 87
    :cond_e
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v6, p1, Lc/e/a/a/e/c/g$b;->u:I

    goto/16 :goto_0

    .line 88
    :cond_f
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v5, p1, Lc/e/a/a/e/c/g$b;->u:I

    goto/16 :goto_0

    .line 89
    :cond_10
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput v0, p1, Lc/e/a/a/e/c/g$b;->u:I

    goto/16 :goto_0

    .line 90
    :sswitch_b
    iget-wide v0, p0, Lc/e/a/a/e/c/g;->w:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lc/e/a/a/e/c/g;->D:J

    goto/16 :goto_0

    :sswitch_c
    cmp-long p1, p2, v2

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 91
    :cond_11
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    const-wide/16 v2, 0x5

    cmp-long p1, p2, v2

    if-nez p1, :cond_12

    goto/16 :goto_0

    .line 92
    :cond_12
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v2

    if-nez p1, :cond_13

    goto/16 :goto_0

    .line 93
    :cond_13
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    cmp-long p1, p2, v2

    if-ltz p1, :cond_14

    const-wide/16 v2, 0x2

    cmp-long p1, p2, v2

    if-gtz p1, :cond_14

    goto/16 :goto_0

    .line 94
    :cond_14
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_10
    const-wide/16 v2, 0x3

    cmp-long p1, p2, v2

    if-nez p1, :cond_15

    goto/16 :goto_0

    .line 95
    :cond_15
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :sswitch_11
    iput-boolean v6, p0, Lc/e/a/a/e/c/g;->ea:Z

    goto/16 :goto_0

    .line 97
    :sswitch_12
    iget-boolean p1, p0, Lc/e/a/a/e/c/g;->K:Z

    if-nez p1, :cond_1a

    .line 98
    iget-object p1, p0, Lc/e/a/a/e/c/g;->J:Lc/e/a/a/o/q;

    invoke-virtual {p1, p2, p3}, Lc/e/a/a/o/q;->a(J)V

    .line 99
    iput-boolean v6, p0, Lc/e/a/a/e/c/g;->K:Z

    goto :goto_0

    .line 100
    :sswitch_13
    invoke-virtual {p0, p2, p3}, Lc/e/a/a/e/c/g;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/e/c/g;->H:J

    goto :goto_0

    .line 101
    :sswitch_14
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->c:I

    goto :goto_0

    .line 102
    :sswitch_15
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->l:I

    goto :goto_0

    .line 103
    :sswitch_16
    iget-object p1, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    invoke-virtual {p0, p2, p3}, Lc/e/a/a/e/c/g;->a(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lc/e/a/a/o/q;->a(J)V

    goto :goto_0

    .line 104
    :sswitch_17
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->k:I

    goto :goto_0

    .line 105
    :sswitch_18
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->L:I

    goto :goto_0

    .line 106
    :sswitch_19
    invoke-virtual {p0, p2, p3}, Lc/e/a/a/e/c/g;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lc/e/a/a/e/c/g;->N:J

    goto :goto_0

    .line 107
    :sswitch_1a
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    cmp-long v1, p2, v2

    if-nez v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    iput-boolean v0, p1, Lc/e/a/a/e/c/g$b;->S:Z

    goto :goto_0

    .line 108
    :sswitch_1b
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    long-to-int p3, p2

    iput p3, p1, Lc/e/a/a/e/c/g$b;->d:I

    goto :goto_0

    :cond_17
    cmp-long p1, p2, v2

    if-nez p1, :cond_18

    goto :goto_0

    .line 109
    :cond_18
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-nez p1, :cond_1b

    :cond_1a
    :goto_0
    return-void

    .line 110
    :cond_1b
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1b
        0x88 -> :sswitch_1a
        0x9b -> :sswitch_19
        0x9f -> :sswitch_18
        0xb0 -> :sswitch_17
        0xb3 -> :sswitch_16
        0xba -> :sswitch_15
        0xd7 -> :sswitch_14
        0xe7 -> :sswitch_13
        0xf1 -> :sswitch_12
        0xfb -> :sswitch_11
        0x4254 -> :sswitch_10
        0x4285 -> :sswitch_f
        0x42f7 -> :sswitch_e
        0x47e1 -> :sswitch_d
        0x47e8 -> :sswitch_c
        0x53ac -> :sswitch_b
        0x53b8 -> :sswitch_a
        0x54b0 -> :sswitch_9
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_6
        0x56aa -> :sswitch_5
        0x56bb -> :sswitch_4
        0x6264 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(IJJ)V
    .locals 5

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_c

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_0
    iget-boolean p1, p0, Lc/e/a/a/e/c/g;->B:Z

    if-nez p1, :cond_c

    .line 17
    iget-boolean p1, p0, Lc/e/a/a/e/c/g;->k:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lc/e/a/a/e/c/g;->F:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    .line 18
    iput-boolean v3, p0, Lc/e/a/a/e/c/g;->E:Z

    goto :goto_1

    .line 19
    :cond_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->fa:Lc/e/a/a/e/i;

    new-instance p2, Lc/e/a/a/e/o$b;

    iget-wide p3, p0, Lc/e/a/a/e/c/g;->z:J

    invoke-direct {p2, p3, p4}, Lc/e/a/a/e/o$b;-><init>(J)V

    invoke-interface {p1, p2}, Lc/e/a/a/e/i;->a(Lc/e/a/a/e/o;)V

    .line 20
    iput-boolean v3, p0, Lc/e/a/a/e/c/g;->B:Z

    goto :goto_1

    .line 21
    :cond_2
    new-instance p1, Lc/e/a/a/o/q;

    invoke-direct {p1}, Lc/e/a/a/o/q;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    .line 22
    new-instance p1, Lc/e/a/a/o/q;

    invoke-direct {p1}, Lc/e/a/a/o/q;-><init>()V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->J:Lc/e/a/a/o/q;

    goto :goto_1

    .line 23
    :cond_3
    iget-wide v3, p0, Lc/e/a/a/e/c/g;->w:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 24
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_5
    :goto_0
    iput-wide p2, p0, Lc/e/a/a/e/c/g;->w:J

    .line 26
    iput-wide p4, p0, Lc/e/a/a/e/c/g;->v:J

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-boolean v3, p1, Lc/e/a/a/e/c/g$b;->v:Z

    goto :goto_1

    .line 28
    :cond_7
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-boolean v3, p1, Lc/e/a/a/e/c/g$b;->f:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lc/e/a/a/e/c/g;->C:I

    .line 30
    iput-wide v1, p0, Lc/e/a/a/e/c/g;->D:J

    goto :goto_1

    .line 31
    :cond_9
    iput-boolean v1, p0, Lc/e/a/a/e/c/g;->K:Z

    goto :goto_1

    .line 32
    :cond_a
    new-instance p1, Lc/e/a/a/e/c/g$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lc/e/a/a/e/c/g$b;-><init>(Lc/e/a/a/e/c/f;)V

    iput-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    goto :goto_1

    .line 33
    :cond_b
    iput-boolean v1, p0, Lc/e/a/a/e/c/g;->ea:Z

    :cond_c
    :goto_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    invoke-static {p1, p2}, Lc/e/a/a/e/c/g$b;->a(Lc/e/a/a/e/c/g$b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-object p2, p1, Lc/e/a/a/e/c/g$b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "webm"

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 129
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_4
    iget-object p1, p0, Lc/e/a/a/e/c/g;->A:Lc/e/a/a/e/c/g$b;

    iput-object p2, p1, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide p1, p0, Lc/e/a/a/e/c/g;->H:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lc/e/a/a/e/c/g;->L:I

    .line 5
    iget-object p2, p0, Lc/e/a/a/e/c/g;->h:Lc/e/a/a/e/c/e;

    invoke-interface {p2}, Lc/e/a/a/e/c/e;->reset()V

    .line 6
    iget-object p2, p0, Lc/e/a/a/e/c/g;->i:Lc/e/a/a/e/c/i;

    invoke-virtual {p2}, Lc/e/a/a/e/c/i;->b()V

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/e/c/g;->f()V

    .line 8
    :goto_0
    iget-object p2, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 9
    iget-object p2, p0, Lc/e/a/a/e/c/g;->j:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/e/a/a/e/c/g$b;

    invoke-virtual {p2}, Lc/e/a/a/e/c/g$b;->c()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/e/c/g$b;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 202
    iget-object v0, v8, Lc/e/a/a/e/c/g$b;->Q:Lc/e/a/a/e/c/g$c;

    if-eqz v0, :cond_0

    move-wide/from16 v9, p2

    .line 203
    invoke-virtual {v0, v8, v9, v10}, Lc/e/a/a/e/c/g$c;->a(Lc/e/a/a/e/c/g$b;J)V

    goto :goto_1

    :cond_0
    move-wide/from16 v9, p2

    .line 204
    iget-object v0, v8, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    .line 205
    sget-object v6, Lc/e/a/a/e/c/g;->c:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/c/g$b;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, v8, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    .line 207
    sget-object v6, Lc/e/a/a/e/c/g;->f:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/c/g$b;Ljava/lang/String;IJ[B)V

    .line 208
    :cond_2
    :goto_0
    iget-object v0, v8, Lc/e/a/a/e/c/g$b;->U:Lc/e/a/a/e/q;

    iget v11, v7, Lc/e/a/a/e/c/g;->T:I

    iget v12, v7, Lc/e/a/a/e/c/g;->ca:I

    const/4 v13, 0x0

    iget-object v14, v8, Lc/e/a/a/e/c/g$b;->h:Lc/e/a/a/e/q$a;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Lc/e/a/a/e/q;->a(JIIILc/e/a/a/e/q$a;)V

    :goto_1
    const/4 v0, 0x1

    .line 209
    iput-boolean v0, v7, Lc/e/a/a/e/c/g;->da:Z

    .line 210
    invoke-virtual {p0}, Lc/e/a/a/e/c/g;->f()V

    return-void
.end method

.method public final a(Lc/e/a/a/e/c/g$b;Ljava/lang/String;IJ[B)V
    .locals 9

    .line 310
    iget-object v0, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    iget-object v1, v0, Lc/e/a/a/o/v;->a:[B

    iget-wide v2, p0, Lc/e/a/a/e/c/g;->N:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lc/e/a/a/e/c/g;->a([BJLjava/lang/String;IJ[B)V

    .line 311
    iget-object p1, p1, Lc/e/a/a/e/c/g$b;->U:Lc/e/a/a/e/q;

    iget-object p2, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->d()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 312
    iget p1, p0, Lc/e/a/a/e/c/g;->ca:I

    iget-object p2, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->d()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lc/e/a/a/e/c/g;->ca:I

    return-void
.end method

.method public final a(Lc/e/a/a/e/h;I)V
    .locals 3

    .line 211
    iget-object v0, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->b()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 213
    iget-object v0, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v1, v0, Lc/e/a/a/o/v;->a:[B

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    .line 214
    invoke-virtual {v2}, Lc/e/a/a/o/v;->d()I

    move-result v2

    .line 215
    invoke-virtual {v0, v1, v2}, Lc/e/a/a/o/v;->a([BI)V

    .line 216
    :cond_1
    iget-object v0, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v1, v0, Lc/e/a/a/o/v;->a:[B

    invoke-virtual {v0}, Lc/e/a/a/o/v;->d()I

    move-result v0

    iget-object v2, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v2}, Lc/e/a/a/o/v;->d()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v1, v0, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 217
    iget-object p1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {p1, p2}, Lc/e/a/a/o/v;->d(I)V

    return-void
.end method

.method public final a(Lc/e/a/a/e/h;Lc/e/a/a/e/c/g$b;I)V
    .locals 10

    .line 218
    iget-object v0, p2, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object p2, Lc/e/a/a/e/c/g;->b:[B

    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;[BI)V

    return-void

    .line 220
    :cond_0
    iget-object v0, p2, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object p2, Lc/e/a/a/e/c/g;->e:[B

    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;[BI)V

    return-void

    .line 222
    :cond_1
    iget-object v0, p2, Lc/e/a/a/e/c/g$b;->U:Lc/e/a/a/e/q;

    .line 223
    iget-boolean v1, p0, Lc/e/a/a/e/c/g;->V:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_10

    .line 224
    iget-boolean v1, p2, Lc/e/a/a/e/c/g$b;->f:Z

    if-eqz v1, :cond_e

    .line 225
    iget v1, p0, Lc/e/a/a/e/c/g;->T:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lc/e/a/a/e/c/g;->T:I

    .line 226
    iget-boolean v1, p0, Lc/e/a/a/e/c/g;->W:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 227
    iget-object v1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v1, v5, v4}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 228
    iget v1, p0, Lc/e/a/a/e/c/g;->U:I

    add-int/2addr v1, v4

    iput v1, p0, Lc/e/a/a/e/c/g;->U:I

    .line 229
    iget-object v1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    aget-byte v7, v1, v5

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_2

    .line 230
    aget-byte v1, v1, v5

    iput-byte v1, p0, Lc/e/a/a/e/c/g;->Z:B

    .line 231
    iput-boolean v4, p0, Lc/e/a/a/e/c/g;->W:Z

    goto :goto_0

    .line 232
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_3
    :goto_0
    iget-byte v1, p0, Lc/e/a/a/e/c/g;->Z:B

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_f

    .line 234
    iget-byte v1, p0, Lc/e/a/a/e/c/g;->Z:B

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 235
    :goto_2
    iget v7, p0, Lc/e/a/a/e/c/g;->T:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lc/e/a/a/e/c/g;->T:I

    .line 236
    iget-boolean v7, p0, Lc/e/a/a/e/c/g;->X:Z

    if-nez v7, :cond_7

    .line 237
    iget-object v7, p0, Lc/e/a/a/e/c/g;->s:Lc/e/a/a/o/v;

    iget-object v7, v7, Lc/e/a/a/o/v;->a:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 238
    iget v7, p0, Lc/e/a/a/e/c/g;->U:I

    add-int/2addr v7, v8

    iput v7, p0, Lc/e/a/a/e/c/g;->U:I

    .line 239
    iput-boolean v4, p0, Lc/e/a/a/e/c/g;->X:Z

    .line 240
    iget-object v7, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v7, v7, Lc/e/a/a/o/v;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 241
    iget-object v6, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v6, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 242
    iget-object v6, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-interface {v0, v6, v4}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 243
    iget v6, p0, Lc/e/a/a/e/c/g;->ca:I

    add-int/2addr v6, v4

    iput v6, p0, Lc/e/a/a/e/c/g;->ca:I

    .line 244
    iget-object v6, p0, Lc/e/a/a/e/c/g;->s:Lc/e/a/a/o/v;

    invoke-virtual {v6, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 245
    iget-object v6, p0, Lc/e/a/a/e/c/g;->s:Lc/e/a/a/o/v;

    invoke-interface {v0, v6, v8}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 246
    iget v6, p0, Lc/e/a/a/e/c/g;->ca:I

    add-int/2addr v6, v8

    iput v6, p0, Lc/e/a/a/e/c/g;->ca:I

    :cond_7
    if-eqz v1, :cond_f

    .line 247
    iget-boolean v1, p0, Lc/e/a/a/e/c/g;->Y:Z

    if-nez v1, :cond_8

    .line 248
    iget-object v1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v1, v5, v4}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 249
    iget v1, p0, Lc/e/a/a/e/c/g;->U:I

    add-int/2addr v1, v4

    iput v1, p0, Lc/e/a/a/e/c/g;->U:I

    .line 250
    iget-object v1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v1, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 251
    iget-object v1, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->u()I

    move-result v1

    iput v1, p0, Lc/e/a/a/e/c/g;->aa:I

    .line 252
    iput-boolean v4, p0, Lc/e/a/a/e/c/g;->Y:Z

    .line 253
    :cond_8
    iget v1, p0, Lc/e/a/a/e/c/g;->aa:I

    mul-int/lit8 v1, v1, 0x4

    .line 254
    iget-object v6, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v6, v1}, Lc/e/a/a/o/v;->c(I)V

    .line 255
    iget-object v6, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    iget-object v6, v6, Lc/e/a/a/o/v;->a:[B

    invoke-interface {p1, v6, v5, v1}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 256
    iget v6, p0, Lc/e/a/a/e/c/g;->U:I

    add-int/2addr v6, v1

    iput v6, p0, Lc/e/a/a/e/c/g;->U:I

    .line 257
    iget v1, p0, Lc/e/a/a/e/c/g;->aa:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 258
    iget-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 259
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 260
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    .line 261
    :cond_a
    iget-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    iget-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 263
    :goto_4
    iget v8, p0, Lc/e/a/a/e/c/g;->aa:I

    if-ge v1, v8, :cond_c

    .line 264
    iget-object v8, p0, Lc/e/a/a/e/c/g;->n:Lc/e/a/a/o/v;

    invoke-virtual {v8}, Lc/e/a/a/o/v;->y()I

    move-result v8

    .line 265
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 266
    iget-object v9, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 267
    :cond_b
    iget-object v9, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 268
    :cond_c
    iget v1, p0, Lc/e/a/a/e/c/g;->U:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 269
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    .line 270
    iget-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 271
    :cond_d
    iget-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 272
    iget-object v1, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 273
    :goto_6
    iget-object v1, p0, Lc/e/a/a/e/c/g;->t:Lc/e/a/a/o/v;

    iget-object v7, p0, Lc/e/a/a/e/c/g;->u:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lc/e/a/a/o/v;->a([BI)V

    .line 274
    iget-object v1, p0, Lc/e/a/a/e/c/g;->t:Lc/e/a/a/o/v;

    invoke-interface {v0, v1, v6}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 275
    iget v1, p0, Lc/e/a/a/e/c/g;->ca:I

    add-int/2addr v1, v6

    iput v1, p0, Lc/e/a/a/e/c/g;->ca:I

    goto :goto_7

    .line 276
    :cond_e
    iget-object v1, p2, Lc/e/a/a/e/c/g$b;->g:[B

    if-eqz v1, :cond_f

    .line 277
    iget-object v6, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lc/e/a/a/o/v;->a([BI)V

    .line 278
    :cond_f
    :goto_7
    iput-boolean v4, p0, Lc/e/a/a/e/c/g;->V:Z

    .line 279
    :cond_10
    iget-object v1, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->d()I

    move-result v1

    add-int/2addr p3, v1

    .line 280
    iget-object v1, p2, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p2, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    .line 281
    :cond_11
    iget-object v1, p2, Lc/e/a/a/e/c/g$b;->Q:Lc/e/a/a/e/c/g$c;

    if-eqz v1, :cond_13

    .line 282
    iget-object v1, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->d()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lc/e/a/a/o/e;->b(Z)V

    .line 283
    iget-object v1, p2, Lc/e/a/a/e/c/g$b;->Q:Lc/e/a/a/e/c/g$c;

    iget v3, p0, Lc/e/a/a/e/c/g;->T:I

    invoke-virtual {v1, p1, v3, p3}, Lc/e/a/a/e/c/g$c;->a(Lc/e/a/a/e/h;II)V

    .line 284
    :cond_13
    :goto_9
    iget v1, p0, Lc/e/a/a/e/c/g;->U:I

    if-ge v1, p3, :cond_16

    sub-int v1, p3, v1

    .line 285
    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/q;I)I

    goto :goto_9

    .line 286
    :cond_14
    :goto_a
    iget-object v1, p0, Lc/e/a/a/e/c/g;->m:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    .line 287
    aput-byte v5, v1, v5

    .line 288
    aput-byte v5, v1, v4

    .line 289
    aput-byte v5, v1, v3

    .line 290
    iget v3, p2, Lc/e/a/a/e/c/g$b;->V:I

    rsub-int/lit8 v4, v3, 0x4

    .line 291
    :goto_b
    iget v6, p0, Lc/e/a/a/e/c/g;->U:I

    if-ge v6, p3, :cond_16

    .line 292
    iget v6, p0, Lc/e/a/a/e/c/g;->ba:I

    if-nez v6, :cond_15

    .line 293
    invoke-virtual {p0, p1, v1, v4, v3}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;[BII)V

    .line 294
    iget-object v6, p0, Lc/e/a/a/e/c/g;->m:Lc/e/a/a/o/v;

    invoke-virtual {v6, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 295
    iget-object v6, p0, Lc/e/a/a/e/c/g;->m:Lc/e/a/a/o/v;

    invoke-virtual {v6}, Lc/e/a/a/o/v;->y()I

    move-result v6

    iput v6, p0, Lc/e/a/a/e/c/g;->ba:I

    .line 296
    iget-object v6, p0, Lc/e/a/a/e/c/g;->l:Lc/e/a/a/o/v;

    invoke-virtual {v6, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 297
    iget-object v6, p0, Lc/e/a/a/e/c/g;->l:Lc/e/a/a/o/v;

    invoke-interface {v0, v6, v2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 298
    iget v6, p0, Lc/e/a/a/e/c/g;->ca:I

    add-int/2addr v6, v2

    iput v6, p0, Lc/e/a/a/e/c/g;->ca:I

    goto :goto_b

    .line 299
    :cond_15
    invoke-virtual {p0, p1, v0, v6}, Lc/e/a/a/e/c/g;->a(Lc/e/a/a/e/h;Lc/e/a/a/e/q;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lc/e/a/a/e/c/g;->ba:I

    goto :goto_b

    .line 300
    :cond_16
    iget-object p1, p2, Lc/e/a/a/e/c/g$b;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 301
    iget-object p1, p0, Lc/e/a/a/e/c/g;->o:Lc/e/a/a/o/v;

    invoke-virtual {p1, v5}, Lc/e/a/a/o/v;->e(I)V

    .line 302
    iget-object p1, p0, Lc/e/a/a/e/c/g;->o:Lc/e/a/a/o/v;

    invoke-interface {v0, p1, v2}, Lc/e/a/a/e/q;->a(Lc/e/a/a/o/v;I)V

    .line 303
    iget p1, p0, Lc/e/a/a/e/c/g;->ca:I

    add-int/2addr p1, v2

    iput p1, p0, Lc/e/a/a/e/c/g;->ca:I

    :cond_17
    return-void
.end method

.method public final a(Lc/e/a/a/e/h;[BI)V
    .locals 4

    .line 304
    array-length v0, p2

    add-int/2addr v0, p3

    .line 305
    iget-object v1, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    invoke-virtual {v1}, Lc/e/a/a/o/v;->b()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 306
    iget-object v1, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lc/e/a/a/o/v;->a:[B

    goto :goto_0

    .line 307
    :cond_0
    iget-object v1, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    :goto_0
    iget-object v1, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    iget-object v1, v1, Lc/e/a/a/o/v;->a:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lc/e/a/a/e/h;->readFully([BII)V

    .line 309
    iget-object p1, p0, Lc/e/a/a/e/c/g;->r:Lc/e/a/a/o/v;

    invoke-virtual {p1, v0}, Lc/e/a/a/o/v;->c(I)V

    return-void
.end method

.method public final a(Lc/e/a/a/e/h;[BII)V
    .locals 3

    .line 321
    iget-object v0, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->a()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    .line 322
    invoke-interface {p1, p2, v1, v2}, Lc/e/a/a/e/h;->readFully([BII)V

    if-lez v0, :cond_0

    .line 323
    iget-object p1, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-virtual {p1, p2, p3, v0}, Lc/e/a/a/o/v;->a([BII)V

    .line 324
    :cond_0
    iget p1, p0, Lc/e/a/a/e/c/g;->U:I

    add-int/2addr p1, p4

    iput p1, p0, Lc/e/a/a/e/c/g;->U:I

    return-void
.end method

.method public final a(Lc/e/a/a/e/i;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/c/g;->fa:Lc/e/a/a/e/i;

    return-void
.end method

.method public final a(Lc/e/a/a/e/h;)Z
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/a/e/c/h;

    invoke-direct {v0}, Lc/e/a/a/e/c/h;-><init>()V

    invoke-virtual {v0, p1}, Lc/e/a/a/e/c/h;->b(Lc/e/a/a/e/h;)Z

    move-result p1

    return p1
.end method

.method public final a(Lc/e/a/a/e/n;J)Z
    .locals 5

    .line 331
    iget-boolean v0, p0, Lc/e/a/a/e/c/g;->E:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 332
    iput-wide p2, p0, Lc/e/a/a/e/c/g;->G:J

    .line 333
    iget-wide p2, p0, Lc/e/a/a/e/c/g;->F:J

    iput-wide p2, p1, Lc/e/a/a/e/n;->a:J

    .line 334
    iput-boolean v2, p0, Lc/e/a/a/e/c/g;->E:Z

    return v1

    .line 335
    :cond_0
    iget-boolean p2, p0, Lc/e/a/a/e/c/g;->B:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lc/e/a/a/e/c/g;->G:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    .line 336
    iput-wide p2, p1, Lc/e/a/a/e/n;->a:J

    .line 337
    iput-wide v3, p0, Lc/e/a/a/e/c/g;->G:J

    return v1

    :cond_1
    return v2
.end method

.method public b(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public c(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final d()Lc/e/a/a/e/o;
    .locals 12

    .line 1
    iget-wide v0, p0, Lc/e/a/a/e/c/g;->w:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-wide v0, p0, Lc/e/a/a/e/c/g;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lc/e/a/a/o/q;->a()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/e/a/a/e/c/g;->J:Lc/e/a/a/o/q;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lc/e/a/a/o/q;->a()I

    move-result v0

    iget-object v1, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    invoke-virtual {v1}, Lc/e/a/a/o/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    invoke-virtual {v0}, Lc/e/a/a/o/q;->a()I

    move-result v0

    .line 5
    new-array v1, v0, [I

    .line 6
    new-array v3, v0, [J

    .line 7
    new-array v4, v0, [J

    .line 8
    new-array v5, v0, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    .line 9
    iget-object v8, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    invoke-virtual {v8, v7}, Lc/e/a/a/o/q;->a(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 10
    iget-wide v8, p0, Lc/e/a/a/e/c/g;->w:J

    iget-object v10, p0, Lc/e/a/a/e/c/g;->J:Lc/e/a/a/o/q;

    invoke-virtual {v10, v7}, Lc/e/a/a/o/q;->a(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 11
    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v1, v6

    .line 12
    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    move v6, v7

    goto :goto_1

    .line 13
    :cond_2
    iget-wide v8, p0, Lc/e/a/a/e/c/g;->w:J

    iget-wide v10, p0, Lc/e/a/a/e/c/g;->v:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v1, v7

    .line 14
    iget-wide v8, p0, Lc/e/a/a/e/c/g;->z:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    .line 15
    iput-object v2, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    .line 16
    iput-object v2, p0, Lc/e/a/a/e/c/g;->J:Lc/e/a/a/o/q;

    .line 17
    new-instance v0, Lc/e/a/a/e/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lc/e/a/a/e/b;-><init>([I[J[J[J)V

    return-object v0

    .line 18
    :cond_3
    :goto_2
    iput-object v2, p0, Lc/e/a/a/e/c/g;->I:Lc/e/a/a/o/q;

    .line 19
    iput-object v2, p0, Lc/e/a/a/e/c/g;->J:Lc/e/a/a/o/q;

    .line 20
    new-instance v0, Lc/e/a/a/e/o$b;

    iget-wide v1, p0, Lc/e/a/a/e/c/g;->z:J

    invoke-direct {v0, v1, v2}, Lc/e/a/a/e/o$b;-><init>(J)V

    return-object v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lc/e/a/a/e/c/g;->U:I

    .line 2
    iput v0, p0, Lc/e/a/a/e/c/g;->ca:I

    .line 3
    iput v0, p0, Lc/e/a/a/e/c/g;->ba:I

    .line 4
    iput-boolean v0, p0, Lc/e/a/a/e/c/g;->V:Z

    .line 5
    iput-boolean v0, p0, Lc/e/a/a/e/c/g;->W:Z

    .line 6
    iput-boolean v0, p0, Lc/e/a/a/e/c/g;->Y:Z

    .line 7
    iput v0, p0, Lc/e/a/a/e/c/g;->aa:I

    .line 8
    iput-byte v0, p0, Lc/e/a/a/e/c/g;->Z:B

    .line 9
    iput-boolean v0, p0, Lc/e/a/a/e/c/g;->X:Z

    .line 10
    iget-object v0, p0, Lc/e/a/a/e/c/g;->q:Lc/e/a/a/o/v;

    invoke-virtual {v0}, Lc/e/a/a/o/v;->C()V

    return-void
.end method
