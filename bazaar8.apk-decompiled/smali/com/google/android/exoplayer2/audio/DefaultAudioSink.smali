.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;,
        Lcom/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = false


# instance fields
.field public A:J

.field public B:J

.field public C:I

.field public D:I

.field public E:J

.field public F:F

.field public G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public H:[Ljava/nio/ByteBuffer;

.field public I:Ljava/nio/ByteBuffer;

.field public J:Ljava/nio/ByteBuffer;

.field public K:[B

.field public L:I

.field public M:I

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:Lc/e/a/a/b/t;

.field public R:Z

.field public S:J

.field public final c:Lc/e/a/a/b/m;

.field public final d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

.field public final e:Z

.field public final f:Lc/e/a/a/b/v;

.field public final g:Lc/e/a/a/b/G;

.field public final h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field public final j:Landroid/os/ConditionVariable;

.field public final k:Lc/e/a/a/b/s;

.field public final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/google/android/exoplayer2/audio/AudioSink$a;

.field public n:Landroid/media/AudioTrack;

.field public o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

.field public p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

.field public q:Landroid/media/AudioTrack;

.field public r:Lc/e/a/a/b/l;

.field public s:Lc/e/a/a/K;

.field public t:Lc/e/a/a/K;

.field public u:J

.field public v:J

.field public w:Ljava/nio/ByteBuffer;

.field public x:I

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Lc/e/a/a/b/m;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;Z)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lc/e/a/a/b/m;

    .line 5
    invoke-static {p2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 6
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e:Z

    .line 7
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Landroid/os/ConditionVariable;

    .line 8
    new-instance p1, Lc/e/a/a/b/s;

    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$e;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Lc/e/a/a/b/w;)V

    invoke-direct {p1, v0}, Lc/e/a/a/b/s;-><init>(Lc/e/a/a/b/s$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    .line 9
    new-instance p1, Lc/e/a/a/b/v;

    invoke-direct {p1}, Lc/e/a/a/b/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lc/e/a/a/b/v;

    .line 10
    new-instance p1, Lc/e/a/a/b/G;

    invoke-direct {p1}, Lc/e/a/a/b/G;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:Lc/e/a/a/b/G;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lc/e/a/a/b/u;

    new-instance v1, Lc/e/a/a/b/C;

    invoke-direct {v1}, Lc/e/a/a/b/C;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lc/e/a/a/b/v;

    aput-object v1, v0, p3

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:Lc/e/a/a/b/G;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13
    invoke-interface {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->b()[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 14
    new-array p2, v2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 15
    new-array p1, p3, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    new-instance p2, Lc/e/a/a/b/z;

    invoke-direct {p2}, Lc/e/a/a/b/z;-><init>()V

    aput-object p2, p1, v2

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:F

    .line 17
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    .line 18
    sget-object p1, Lc/e/a/a/b/l;->a:Lc/e/a/a/b/l;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lc/e/a/a/b/l;

    .line 19
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 20
    new-instance p1, Lc/e/a/a/b/t;

    const/4 p2, 0x0

    invoke-direct {p1, v2, p2}, Lc/e/a/a/b/t;-><init>(IF)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:Lc/e/a/a/b/t;

    .line 21
    sget-object p1, Lc/e/a/a/K;->a:Lc/e/a/a/K;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    .line 23
    new-array p1, v2, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 24
    new-array p1, v2, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:[Ljava/nio/ByteBuffer;

    .line 25
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/b/m;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lc/e/a/a/b/m;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V

    return-void
.end method

.method public constructor <init>(Lc/e/a/a/b/m;[Lcom/google/android/exoplayer2/audio/AudioProcessor;Z)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lc/e/a/a/b/m;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;Z)V

    return-void
.end method

.method public static a(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 133
    invoke-static {}, Lc/e/a/a/b/h;->a()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 134
    invoke-static {p1}, Lc/e/a/a/b/h;->b(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    const/16 v0, 0x11

    if-ne p0, v0, :cond_3

    .line 135
    invoke-static {p1}, Lc/e/a/a/b/j;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_5

    .line 136
    invoke-static {p1}, Lc/e/a/a/b/h;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 137
    :cond_4
    invoke-static {p1, p0}, Lc/e/a/a/b/h;->a(Ljava/nio/ByteBuffer;I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x10

    :goto_0
    return p0

    .line 138
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected audio encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_6
    :goto_1
    invoke-static {p1}, Lc/e/a/a/b/y;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static a(IZ)I
    .locals 2

    .line 130
    sget v0, Lc/e/a/a/o/I;->a:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x6

    .line 131
    :cond_2
    :goto_0
    sget v0, Lc/e/a/a/o/I;->a:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_3

    sget-object v0, Lc/e/a/a/o/I;->b:Ljava/lang/String;

    const-string v1, "fugu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x2

    .line 132
    :cond_3
    invoke-static {p0}, Lc/e/a/a/o/I;->a(I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->S:J

    return-wide v0
.end method

.method public static a(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method public static synthetic b(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c(I)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static b(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method public static c(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

    const p0, 0x52080

    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const p0, 0x2ebae4

    return p0

    :cond_2
    const p0, 0x225510

    return p0

    :cond_3
    const p0, 0x2ee00

    return p0

    :cond_4
    const p0, 0xbb800

    return p0

    :cond_5
    const p0, 0x13880

    return p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(I)Landroid/media/AudioTrack;
    .locals 9

    .line 3
    new-instance v8, Landroid/media/AudioTrack;

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 142
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 145
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long p4, p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 148
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 149
    iput p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    .line 150
    :cond_1
    iget-object p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_3

    .line 151
    iget-object p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_2

    .line 152
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    return p5

    :cond_2
    if-ge p5, p4, :cond_3

    return v1

    .line 153
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_4

    .line 154
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    return p1

    .line 155
    :cond_4
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    return p1
.end method

.method public final a(J)J
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    .line 129
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b(J)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public a(Z)J
    .locals 4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {v0, p1}, Lc/e/a/a/b/s;->a(Z)J

    move-result-wide v0

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public a()Lc/e/a/a/K;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    return-object v0
.end method

.method public a(Lc/e/a/a/K;)Lc/e/a/a/K;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->j:Z

    if-nez v0, :cond_0

    .line 96
    sget-object p1, Lc/e/a/a/K;->a:Lc/e/a/a/K;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 97
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    return-object p1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Lc/e/a/a/K;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 101
    :goto_0
    invoke-virtual {p1, v0}, Lc/e/a/a/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 105
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    return-object p1
.end method

.method public a(F)V
    .locals 1

    .line 125
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 126
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:F

    .line 127
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 120
    sget v0, Lc/e/a/a/o/I;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    if-eq v0, p1, :cond_2

    .line 122
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    .line 123
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 124
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    :cond_2
    return-void
.end method

.method public a(IIII[III)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 12
    sget v2, Lc/e/a/a/o/I;->a:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-ge v2, v4, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    if-nez p5, :cond_0

    const/4 v2, 0x6

    .line 13
    new-array v2, v2, [I

    const/4 v4, 0x0

    .line 14
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 15
    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p5

    .line 16
    :cond_1
    invoke-static/range {p1 .. p1}, Lc/e/a/a/o/I;->f(I)Z

    move-result v5

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move/from16 v7, p1

    if-eq v7, v4, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move/from16 v7, p1

    :cond_3
    const/4 v13, 0x0

    .line 17
    :goto_1
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->e:Z

    if-eqz v8, :cond_4

    .line 18
    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-static/range {p1 .. p1}, Lc/e/a/a/o/I;->e(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 20
    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    goto :goto_3

    :cond_5
    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    :goto_3
    move-object v15, v8

    if-eqz v13, :cond_8

    .line 21
    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:Lc/e/a/a/b/G;

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual {v8, v9, v10}, Lc/e/a/a/b/G;->a(II)V

    .line 22
    iget-object v8, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f:Lc/e/a/a/b/v;

    invoke-virtual {v8, v2}, Lc/e/a/a/b/v;->a([I)V

    .line 23
    array-length v2, v15

    move/from16 v11, p3

    move v9, v0

    move v12, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_4
    if-ge v8, v2, :cond_7

    aget-object v14, v15, v8

    .line 24
    :try_start_0
    invoke-interface {v14, v11, v9, v12}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a(III)Z

    move-result v16
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioProcessor$UnhandledFormatException; {:try_start_0 .. :try_end_0} :catch_0

    or-int v10, v10, v16

    .line 25
    invoke-interface {v14}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->s()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 26
    invoke-interface {v14}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->u()I

    move-result v9

    .line 27
    invoke-interface {v14}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->v()I

    move-result v11

    .line 28
    invoke-interface {v14}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->w()I

    move-result v12

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    move/from16 v16, v10

    move v2, v11

    move v11, v12

    goto :goto_5

    :cond_8
    move/from16 v2, p3

    move v9, v0

    move v11, v7

    const/16 v16, 0x0

    .line 30
    :goto_5
    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(IZ)I

    move-result v10

    if-eqz v10, :cond_e

    const/4 v8, -0x1

    if-eqz v5, :cond_9

    .line 31
    invoke-static/range {p1 .. p2}, Lc/e/a/a/o/I;->b(II)I

    move-result v0

    goto :goto_6

    :cond_9
    const/4 v0, -0x1

    :goto_6
    if-eqz v5, :cond_a

    .line 32
    invoke-static {v11, v9}, Lc/e/a/a/o/I;->b(II)I

    move-result v7

    move v8, v7

    :cond_a
    if-eqz v13, :cond_b

    if-nez v4, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    .line 33
    :goto_7
    new-instance v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    move-object v4, v3

    move v6, v0

    move/from16 v7, p3

    move v9, v2

    move/from16 v12, p4

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;-><init>(ZIIIIIIIZZ[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 35
    iget-object v0, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    goto :goto_8

    :cond_c
    if-eqz v16, :cond_d

    .line 37
    iput-object v3, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    return-void

    .line 38
    :cond_d
    :goto_8
    iput-object v3, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    return-void

    .line 39
    :cond_e
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported channel count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public a(Lc/e/a/a/b/l;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lc/e/a/a/b/l;

    invoke-virtual {v0, p1}, Lc/e/a/a/b/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lc/e/a/a/b/l;

    .line 109
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    if-eqz p1, :cond_1

    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    return-void
.end method

.method public a(Lc/e/a/a/b/t;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:Lc/e/a/a/b/t;

    invoke-virtual {v0, p1}, Lc/e/a/a/b/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p1, Lc/e/a/a/b/t;->a:I

    .line 114
    iget v1, p1, Lc/e/a/a/b/t;->b:F

    .line 115
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 116
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:Lc/e/a/a/b/t;

    iget v3, v3, Lc/e/a/a/b/t;->a:I

    if-eq v3, v0, :cond_1

    .line 117
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 119
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:Lc/e/a/a/b/t;

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    return-void
.end method

.method public a(II)Z
    .locals 3

    .line 3
    invoke-static {p2}, Lc/e/a/a/o/I;->f(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 4
    sget p1, Lc/e/a/a/o/I;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lc/e/a/a/b/m;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p2}, Lc/e/a/a/b/m;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c:Lc/e/a/a/b/m;

    .line 7
    invoke-virtual {p2}, Lc/e/a/a/b/m;->b()I

    move-result p2

    if-gt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public a(Ljava/nio/ByteBuffer;J)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 40
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lc/e/a/a/o/e;->a(Z)V

    .line 41
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h()Z

    move-result v4

    if-nez v4, :cond_2

    return v5

    .line 43
    :cond_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    .line 44
    iput-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    .line 45
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->j:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    iget-object v8, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 46
    invoke-interface {v4, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    move-result-object v4

    goto :goto_2

    :cond_3
    sget-object v4, Lc/e/a/a/K;->a:Lc/e/a/a/K;

    :goto_2
    iput-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p()V

    .line 48
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v4

    if-nez v4, :cond_5

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l()V

    .line 50
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:Z

    if-eqz v4, :cond_5

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->f()V

    .line 52
    :cond_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lc/e/a/a/b/s;->f(J)Z

    move-result v4

    if-nez v4, :cond_6

    return v5

    .line 53
    :cond_6
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    const-string v8, "AudioTrack"

    if-nez v4, :cond_f

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7

    return v6

    .line 55
    :cond_7
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v9, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:Z

    if-nez v9, :cond_8

    iget v9, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:I

    if-nez v9, :cond_8

    .line 56
    iget v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->g:I

    invoke-static {v4, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:I

    .line 57
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:I

    if-nez v4, :cond_8

    return v6

    .line 58
    :cond_8
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    const-wide/16 v9, 0x0

    if-eqz v4, :cond_a

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h()Z

    move-result v4

    if-nez v4, :cond_9

    return v5

    .line 60
    :cond_9
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    .line 61
    iput-object v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    .line 62
    iget-object v11, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    invoke-interface {v11, v4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    move-result-object v13

    .line 63
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    .line 64
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-object v12, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    move-object/from16 v19, v8

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b(J)J

    move-result-wide v16

    const/16 v18, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;-><init>(Lc/e/a/a/K;JJLc/e/a/a/b/w;)V

    .line 66
    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p()V

    goto :goto_3

    :cond_a
    move-object/from16 v19, v8

    .line 68
    :goto_3
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    if-nez v4, :cond_b

    .line 69
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:J

    .line 70
    iput v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    move-object/from16 v12, v19

    goto :goto_5

    .line 71
    :cond_b
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:J

    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j()J

    move-result-wide v11

    iget-object v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:Lc/e/a/a/b/G;

    invoke-virtual {v13}, Lc/e/a/a/b/G;->f()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 73
    invoke-virtual {v4, v11, v12}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->c(J)J

    move-result-wide v11

    add-long/2addr v7, v11

    .line 74
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    const/4 v11, 0x2

    if-ne v4, v6, :cond_c

    sub-long v12, v7, v2

    .line 75
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v4, v12, v14

    if-lez v4, :cond_c

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Discontinuity detected [expected "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", got "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v19

    invoke-static {v12, v4}, Lc/e/a/a/o/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput v11, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    goto :goto_4

    :cond_c
    move-object/from16 v12, v19

    .line 78
    :goto_4
    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    if-ne v4, v11, :cond_d

    sub-long v7, v2, v7

    .line 79
    iget-wide v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:J

    add-long/2addr v13, v7

    iput-wide v13, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:J

    .line 80
    iput v6, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    .line 81
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz v4, :cond_d

    cmp-long v11, v7, v9

    if-eqz v11, :cond_d

    .line 82
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->a()V

    .line 83
    :cond_d
    :goto_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:Z

    if-eqz v4, :cond_e

    .line 84
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:J

    goto :goto_6

    .line 85
    :cond_e
    iget-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:J

    iget v4, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:J

    .line 86
    :goto_6
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    move-object v12, v8

    .line 87
    :goto_7
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->i:Z

    if-eqz v1, :cond_10

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c(J)V

    goto :goto_8

    .line 89
    :cond_10
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Ljava/nio/ByteBuffer;J)V

    .line 90
    :goto_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    .line 91
    iput-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    return v6

    .line 92
    :cond_11
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lc/e/a/a/b/s;->e(J)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Resetting stalled audio track"

    .line 93
    invoke-static {v12, v1}, Lc/e/a/a/o/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    return v6

    :cond_12
    return v5
.end method

.method public final b(J)J
    .locals 5

    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    .line 40
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 42
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Lc/e/a/a/K;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 43
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:J

    .line 44
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->c(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->E:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:J

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    iget v0, v0, Lc/e/a/a/K;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 46
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:J

    sub-long/2addr p1, v3

    .line 49
    invoke-interface {v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(J)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    .line 50
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    iget v2, v2, Lc/e/a/a/K;->b:F

    .line 51
    invoke-static {p1, p2, v2}, Lc/e/a/a/o/I;->a(JF)J

    move-result-wide p1

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .line 33
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/b/s;->c(J)V

    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;J)V
    .locals 12

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->a(Z)V

    goto :goto_1

    .line 6
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 7
    sget v0, Lc/e/a/a/o/I;->a:I

    if-ge v0, v2, :cond_5

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 10
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[B

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 12
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    iput v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:I

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 16
    sget v4, Lc/e/a/a/o/I;->a:I

    if-ge v4, v2, :cond_6

    .line 17
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    invoke-virtual {p2, v1, v2}, Lc/e/a/a/b/s;->b(J)I

    move-result p2

    if-lez p2, :cond_9

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->K:[B

    iget v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:I

    invoke-virtual {p3, v1, v2, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result v3

    if-lez v3, :cond_9

    .line 20
    iget p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->L:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    .line 22
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    if-eqz v2, :cond_8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 23
    :goto_2
    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    .line 24
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v3

    goto :goto_3

    .line 25
    :cond_8
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 26
    :cond_9
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->S:J

    if-ltz v3, :cond_d

    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:Z

    if-eqz p1, :cond_a

    .line 28
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    int-to-long v1, v3

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    :cond_a
    if-ne v3, v0, :cond_c

    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:Z

    if-nez p1, :cond_b

    .line 30
    iget-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    iget p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    :cond_b
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    :cond_c
    return-void

    .line 32
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;

    invoke-direct {p1, v3}, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;-><init>(I)V

    throw p1
.end method

.method public final c(J)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    aget-object v3, v3, v1

    .line 6
    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->a(Ljava/nio/ByteBuffer;)V

    .line 7
    invoke-interface {v3}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->t()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 9
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public c()Z
    .locals 3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/b/s;->d(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {v0}, Lc/e/a/a/b/s;->i()V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:J

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    .line 5
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->C:I

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 8
    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 9
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->s:Lc/e/a/a/K;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Lc/e/a/a/K;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 12
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 13
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->u:J

    .line 14
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->v:J

    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->g:Lc/e/a/a/b/G;

    invoke-virtual {v0}, Lc/e/a/a/b/G;->g()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i()V

    .line 17
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->I:Ljava/nio/ByteBuffer;

    .line 18
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    .line 19
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->N:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    .line 21
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->w:Ljava/nio/ByteBuffer;

    .line 22
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->x:I

    .line 23
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {v0}, Lc/e/a/a/b/s;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    .line 27
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    .line 28
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    if-eqz v1, :cond_3

    .line 29
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    .line 30
    iput-object v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {v1}, Lc/e/a/a/b/s;->g()V

    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 33
    new-instance v1, Lc/e/a/a/b/w;

    invoke-direct {v1, p0, v0}, Lc/e/a/a/b/w;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->D:I

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->x()V

    .line 6
    :cond_2
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->c(J)V

    .line 7
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->d()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 8
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->J:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 12
    :cond_5
    iput v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->M:I

    return v2
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->t()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->y:J

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->b:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->z:J

    :goto_0
    return-wide v1
.end method

.method public final k()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->A:J

    iget v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->B:J

    :goto_0
    return-wide v1
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->j:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    .line 3
    invoke-static {v0}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->R:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->r:Lc/e/a/a/b/l;

    iget v3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->a(ZLc/e/a/a/b/l;I)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 6
    sget-boolean v1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a:Z

    if-eqz v1, :cond_1

    .line 7
    sget v1, Lc/e/a/a/o/I;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n()V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Landroid/media/AudioTrack;

    .line 13
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    if-eq v1, v0, :cond_2

    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m:Lcom/google/android/exoplayer2/audio/AudioSink$a;

    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->c(I)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->d:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 18
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$a;->a(Lc/e/a/a/K;)Lc/e/a/a/K;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lc/e/a/a/K;->a:Lc/e/a/a/K;

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t:Lc/e/a/a/K;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p()V

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget v3, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->g:I

    iget v4, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->d:I

    iget v2, v2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->h:I

    invoke-virtual {v0, v1, v3, v4, v2}, Lc/e/a/a/b/s;->a(Landroid/media/AudioTrack;III)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->o()V

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:Lc/e/a/a/b/t;

    iget v0, v0, Lc/e/a/a/b/t;->a:I

    if-eqz v0, :cond_4

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->Q:Lc/e/a/a/b/t;

    iget v1, v1, Lc/e/a/a/b/t;->b:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    :cond_4
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n:Landroid/media/AudioTrack;

    .line 3
    new-instance v1, Lc/e/a/a/b/x;

    invoke-direct {v1, p0, v0}, Lc/e/a/a/b/x;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lc/e/a/a/o/I;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->a(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->F:F

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->b(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->p:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;->k:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->s()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->flush()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8
    new-array v2, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->G:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    .line 9
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->H:[Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i()V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->k:Lc/e/a/a/b/s;

    invoke-virtual {v0}, Lc/e/a/a/b/s;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->q:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->flush()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->h:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->i:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 6
    invoke-interface {v4}, Lcom/google/android/exoplayer2/audio/AudioProcessor;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iput v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->P:I

    .line 8
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->O:Z

    return-void
.end method
