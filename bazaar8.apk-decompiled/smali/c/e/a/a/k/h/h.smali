.class public final Lc/e/a/a/k/h/h;
.super Lc/e/a/a/k/c;
.source "WebvttDecoder.java"


# instance fields
.field public final o:Lc/e/a/a/k/h/g;

.field public final p:Lc/e/a/a/o/v;

.field public final q:Lc/e/a/a/k/h/f$a;

.field public final r:Lc/e/a/a/k/h/a;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/e/a/a/k/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/a/k/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/e/a/a/k/h/g;

    invoke-direct {v0}, Lc/e/a/a/k/h/g;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/h;->o:Lc/e/a/a/k/h/g;

    .line 3
    new-instance v0, Lc/e/a/a/o/v;

    invoke-direct {v0}, Lc/e/a/a/o/v;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    .line 4
    new-instance v0, Lc/e/a/a/k/h/f$a;

    invoke-direct {v0}, Lc/e/a/a/k/h/f$a;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/h;->q:Lc/e/a/a/k/h/f$a;

    .line 5
    new-instance v0, Lc/e/a/a/k/h/a;

    invoke-direct {v0}, Lc/e/a/a/k/h/a;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/h;->r:Lc/e/a/a/k/h/a;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/a/k/h/h;->s:Ljava/util/List;

    return-void
.end method

.method public static a(Lc/e/a/a/o/v;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ne v2, v1, :cond_3

    .line 20
    invoke-virtual {p0}, Lc/e/a/a/o/v;->c()I

    move-result v3

    .line 21
    invoke-virtual {p0}, Lc/e/a/a/o/v;->k()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p0, v3}, Lc/e/a/a/o/v;->e(I)V

    return v2
.end method

.method public static b(Lc/e/a/a/o/v;)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/o/v;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a([BIZ)Lc/e/a/a/k/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/k/h/h;->a([BIZ)Lc/e/a/a/k/h/j;

    move-result-object p1

    return-object p1
.end method

.method public a([BIZ)Lc/e/a/a/k/h/j;
    .locals 2

    .line 2
    iget-object p3, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-virtual {p3, p1, p2}, Lc/e/a/a/o/v;->a([BI)V

    .line 3
    iget-object p1, p0, Lc/e/a/a/k/h/h;->q:Lc/e/a/a/k/h/f$a;

    invoke-virtual {p1}, Lc/e/a/a/k/h/f$a;->c()V

    .line 4
    iget-object p1, p0, Lc/e/a/a/k/h/h;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :try_start_0
    iget-object p1, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-static {p1}, Lc/e/a/a/k/h/i;->c(Lc/e/a/a/o/v;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    iget-object p1, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-virtual {p1}, Lc/e/a/a/o/v;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    :goto_1
    iget-object p2, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-static {p2}, Lc/e/a/a/k/h/h;->a(Lc/e/a/a/o/v;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 9
    iget-object p2, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-static {p2}, Lc/e/a/a/k/h/h;->b(Lc/e/a/a/o/v;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-virtual {p2}, Lc/e/a/a/o/v;->k()Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lc/e/a/a/k/h/h;->r:Lc/e/a/a/k/h/a;

    iget-object p3, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    invoke-virtual {p2, p3}, Lc/e/a/a/k/h/a;->c(Lc/e/a/a/o/v;)Lc/e/a/a/k/h/d;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    iget-object p3, p0, Lc/e/a/a/k/h/h;->s:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 15
    iget-object p2, p0, Lc/e/a/a/k/h/h;->o:Lc/e/a/a/k/h/g;

    iget-object p3, p0, Lc/e/a/a/k/h/h;->p:Lc/e/a/a/o/v;

    iget-object v0, p0, Lc/e/a/a/k/h/h;->q:Lc/e/a/a/k/h/f$a;

    iget-object v1, p0, Lc/e/a/a/k/h/h;->s:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Lc/e/a/a/k/h/g;->a(Lc/e/a/a/o/v;Lc/e/a/a/k/h/f$a;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    iget-object p2, p0, Lc/e/a/a/k/h/h;->q:Lc/e/a/a/k/h/f$a;

    invoke-virtual {p2}, Lc/e/a/a/k/h/f$a;->a()Lc/e/a/a/k/h/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p2, p0, Lc/e/a/a/k/h/h;->q:Lc/e/a/a/k/h/f$a;

    invoke-virtual {p2}, Lc/e/a/a/k/h/f$a;->c()V

    goto :goto_1

    .line 18
    :cond_5
    new-instance p2, Lc/e/a/a/k/h/j;

    invoke-direct {p2, p1}, Lc/e/a/a/k/h/j;-><init>(Ljava/util/List;)V

    return-object p2

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Exception;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method
