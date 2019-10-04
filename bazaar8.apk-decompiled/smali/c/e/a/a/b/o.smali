.class public final Lc/e/a/a/b/o;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/b/o$a;,
        Lc/e/a/a/b/o$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lc/e/a/a/b/o$a;

.field public final c:Lc/e/a/a/b/o$b;

.field public d:Lc/e/a/a/b/l;

.field public e:I

.field public f:I

.field public g:F

.field public h:Landroid/media/AudioFocusRequest;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/e/a/a/b/o$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lc/e/a/a/b/o;->g:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lc/e/a/a/b/o;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p2, p0, Lc/e/a/a/b/o;->c:Lc/e/a/a/b/o$b;

    .line 5
    new-instance p1, Lc/e/a/a/b/o$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lc/e/a/a/b/o$a;-><init>(Lc/e/a/a/b/o;Lc/e/a/a/b/n;)V

    iput-object p1, p0, Lc/e/a/a/b/o;->b:Lc/e/a/a/b/o$a;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/e/a/a/b/o;->e:I

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/b/o;F)F
    .locals 0

    .line 4
    iput p1, p0, Lc/e/a/a/b/o;->g:F

    return p1
.end method

.method public static synthetic a(Lc/e/a/a/b/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/b/o;->e:I

    return p0
.end method

.method public static synthetic a(Lc/e/a/a/b/o;I)I
    .locals 0

    .line 2
    iput p1, p0, Lc/e/a/a/b/o;->e:I

    return p1
.end method

.method public static synthetic a(Lc/e/a/a/b/o;Z)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/a/b/o;->a(Z)V

    return-void
.end method

.method public static synthetic b(Lc/e/a/a/b/o;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/b/o;->i()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lc/e/a/a/b/o;)Lc/e/a/a/b/o$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/b/o;->c:Lc/e/a/a/b/o$b;

    return-object p0
.end method

.method public static synthetic d(Lc/e/a/a/b/o;)F
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/b/o;->g:F

    return p0
.end method


# virtual methods
.method public a(ZI)I
    .locals 1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/b/o;->a()V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lc/e/a/a/b/o;->b(Z)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/b/o;->f()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lc/e/a/a/b/o;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 8
    iget v0, p0, Lc/e/a/a/b/o;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lc/e/a/a/b/o;->e:I

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lc/e/a/a/b/o;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lc/e/a/a/b/o;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_3

    .line 10
    :cond_1
    sget p1, Lc/e/a/a/o/I;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lc/e/a/a/b/o;->c()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/b/o;->b()V

    :goto_0
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lc/e/a/a/b/o;->e:I

    :cond_3
    return-void
.end method

.method public final b(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/e/a/a/b/o;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lc/e/a/a/b/o;->b:Lc/e/a/a/b/o$a;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public c(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/b/o;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final c()V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/b/o;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lc/e/a/a/b/o;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method public d()F
    .locals 1

    .line 2
    iget v0, p0, Lc/e/a/a/b/o;->g:F

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lc/e/a/a/b/o;->a(Z)V

    return-void
.end method

.method public final f()I
    .locals 4

    .line 1
    iget v0, p0, Lc/e/a/a/b/o;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lc/e/a/a/b/o;->e:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lc/e/a/a/b/o;->a(Z)V

    :cond_0
    return v1

    .line 4
    :cond_1
    iget v0, p0, Lc/e/a/a/b/o;->e:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 5
    sget v0, Lc/e/a/a/o/I;->a:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/b/o;->h()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lc/e/a/a/b/o;->g()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_1
    iput v0, p0, Lc/e/a/a/b/o;->e:I

    .line 9
    :cond_4
    iget v0, p0, Lc/e/a/a/b/o;->e:I

    if-nez v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    const/4 v1, 0x0

    :cond_6
    return v1
.end method

.method public final g()I
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/o;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lc/e/a/a/b/o;->b:Lc/e/a/a/b/o$a;

    iget-object v2, p0, Lc/e/a/a/b/o;->d:Lc/e/a/a/b/l;

    .line 2
    invoke-static {v2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lc/e/a/a/b/l;

    iget v2, v2, Lc/e/a/a/b/l;->d:I

    invoke-static {v2}, Lc/e/a/a/o/I;->d(I)I

    move-result v2

    iget v3, p0, Lc/e/a/a/b/o;->f:I

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/o;->h:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/e/a/a/b/o;->i:Z

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lc/e/a/a/b/o;->h:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Lc/e/a/a/b/o;->f:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/b/o;->i()Z

    move-result v1

    .line 4
    iget-object v2, p0, Lc/e/a/a/b/o;->d:Lc/e/a/a/b/l;

    .line 5
    invoke-static {v2}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lc/e/a/a/b/l;

    invoke-virtual {v2}, Lc/e/a/a/b/l;->a()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/a/b/o;->b:Lc/e/a/a/b/o$a;

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/b/o;->h:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lc/e/a/a/b/o;->i:Z

    .line 10
    :cond_2
    iget-object v0, p0, Lc/e/a/a/b/o;->a:Landroid/media/AudioManager;

    iget-object v1, p0, Lc/e/a/a/b/o;->h:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/o;->d:Lc/e/a/a/b/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lc/e/a/a/b/l;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
