.class public final Lc/e/a/a/k/h/b;
.super Lc/e/a/a/k/c;
.source "Mp4WebvttDecoder.java"


# static fields
.field public static final o:I

.field public static final p:I

.field public static final q:I


# instance fields
.field public final r:Lc/e/a/a/o/v;

.field public final s:Lc/e/a/a/k/h/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "payl"

    .line 1
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/k/h/b;->o:I

    const-string v0, "sttg"

    .line 2
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/k/h/b;->p:I

    const-string v0, "vttc"

    .line 3
    invoke-static {v0}, Lc/e/a/a/o/I;->b(Ljava/lang/String;)I

    move-result v0

    sput v0, Lc/e/a/a/k/h/b;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/k/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    .line 3
    new-instance v0, Lc/e/a/a/k/h/f$a;

    invoke-direct {v0}, Lc/e/a/a/k/h/f$a;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/b;->s:Lc/e/a/a/k/h/f$a;

    return-void
.end method

.method public static a(Lc/e/a/a/o/v;Lc/e/a/a/k/h/f$a;I)Lc/e/a/a/k/b;
    .locals 4

    .line 13
    invoke-virtual {p1}, Lc/e/a/a/k/h/f$a;->c()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lc/e/a/a/o/v;->i()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lc/e/a/a/o/v;->i()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v1, v0

    .line 16
    iget-object v0, p0, Lc/e/a/a/o/v;->a:[B

    .line 17
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v3

    invoke-static {v0, v3, v1}, Lc/e/a/a/o/I;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v1}, Lc/e/a/a/o/v;->f(I)V

    sub-int/2addr p2, v1

    .line 19
    sget v1, Lc/e/a/a/k/h/b;->p:I

    if-ne v2, v1, :cond_1

    .line 20
    invoke-static {v0, p1}, Lc/e/a/a/k/h/g;->a(Ljava/lang/String;Lc/e/a/a/k/h/f$a;)V

    goto :goto_0

    .line 21
    :cond_1
    sget v1, Lc/e/a/a/k/h/b;->o:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lc/e/a/a/k/h/g;->a(Ljava/lang/String;Ljava/lang/String;Lc/e/a/a/k/h/f$a;Ljava/util/List;)V

    goto :goto_0

    .line 23
    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_3
    invoke-virtual {p1}, Lc/e/a/a/k/h/f$a;->a()Lc/e/a/a/k/h/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a([BIZ)Lc/e/a/a/k/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/k/h/b;->a([BIZ)Lc/e/a/a/k/h/c;

    move-result-object p1

    return-object p1
.end method

.method public a([BIZ)Lc/e/a/a/k/h/c;
    .locals 1

    .line 2
    iget-object p3, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    invoke-virtual {p3, p1, p2}, Lc/e/a/a/o/v;->a([BI)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    iget-object p2, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->a()I

    move-result p2

    if-lez p2, :cond_2

    .line 5
    iget-object p2, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->a()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_1

    .line 6
    iget-object p2, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->i()I

    move-result p2

    .line 7
    iget-object p3, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    invoke-virtual {p3}, Lc/e/a/a/o/v;->i()I

    move-result p3

    .line 8
    sget v0, Lc/e/a/a/k/h/b;->q:I

    if-ne p3, v0, :cond_0

    .line 9
    iget-object p3, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    iget-object v0, p0, Lc/e/a/a/k/h/b;->s:Lc/e/a/a/k/h/f$a;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, v0, p2}, Lc/e/a/a/k/h/b;->a(Lc/e/a/a/o/v;Lc/e/a/a/k/h/f$a;I)Lc/e/a/a/k/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p3, p0, Lc/e/a/a/k/h/b;->r:Lc/e/a/a/o/v;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lc/e/a/a/o/v;->f(I)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p2, Lc/e/a/a/k/h/c;

    invoke-direct {p2, p1}, Lc/e/a/a/k/h/c;-><init>(Ljava/util/List;)V

    return-object p2
.end method
