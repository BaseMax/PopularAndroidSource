.class public Lc/e/a/a/m/g;
.super Landroid/widget/FrameLayout;
.source "PlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/a/m/g$a;,
        Lc/e/a/a/m/g$b;
    }
.end annotation


# instance fields
.field public A:Lc/e/a/a/r;

.field public B:Lc/e/a/a/m/g$b;

.field public C:Lc/e/a/a/L;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:Z

.field public N:J

.field public O:[J

.field public P:[Z

.field public Q:[J

.field public R:[Z

.field public S:J

.field public final a:Lc/e/a/a/m/g$a;

.field public final b:Landroid/view/View;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public final g:Landroid/view/View;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/view/View;

.field public final j:Landroid/view/View;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Lc/e/a/a/m/p;

.field public final n:Ljava/lang/StringBuilder;

.field public final o:Ljava/util/Formatter;

.field public final p:Lc/e/a/a/Z$a;

.field public final q:Lc/e/a/a/Z$b;

.field public final r:Ljava/lang/Runnable;

.field public final s:Ljava/lang/Runnable;

.field public final t:Landroid/graphics/drawable/Drawable;

.field public final u:Landroid/graphics/drawable/Drawable;

.field public final v:Landroid/graphics/drawable/Drawable;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public z:Lc/e/a/a/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.ui"

    .line 1
    invoke-static {v0}, Lc/e/a/a/C;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget p2, Lc/e/a/a/m/l;->exo_player_control_view:I

    const/16 p3, 0x1388

    .line 3
    iput p3, p0, Lc/e/a/a/m/g;->H:I

    const/16 v0, 0x3a98

    .line 4
    iput v0, p0, Lc/e/a/a/m/g;->I:I

    .line 5
    iput p3, p0, Lc/e/a/a/m/g;->J:I

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lc/e/a/a/m/g;->L:I

    const/16 v0, 0xc8

    .line 7
    iput v0, p0, Lc/e/a/a/m/g;->K:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lc/e/a/a/m/g;->N:J

    .line 9
    iput-boolean p3, p0, Lc/e/a/a/m/g;->M:Z

    if-eqz p4, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lc/e/a/a/m/n;->PlayerControlView:[I

    .line 11
    invoke-virtual {v0, p4, v1, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 12
    :try_start_0
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_rewind_increment:I

    iget v1, p0, Lc/e/a/a/m/g;->H:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/g;->H:I

    .line 13
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_fastforward_increment:I

    iget v1, p0, Lc/e/a/a/m/g;->I:I

    .line 14
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/g;->I:I

    .line 15
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_show_timeout:I

    iget v1, p0, Lc/e/a/a/m/g;->J:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/g;->J:I

    .line 16
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_controller_layout_id:I

    .line 17
    invoke-virtual {p4, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 18
    iget v0, p0, Lc/e/a/a/m/g;->L:I

    invoke-static {p4, v0}, Lc/e/a/a/m/g;->a(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Lc/e/a/a/m/g;->L:I

    .line 19
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_show_shuffle_button:I

    iget-boolean v1, p0, Lc/e/a/a/m/g;->M:Z

    .line 20
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lc/e/a/a/m/g;->M:Z

    .line 21
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_time_bar_min_update_interval:I

    iget v1, p0, Lc/e/a/a/m/g;->K:I

    .line 22
    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lc/e/a/a/m/g;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    throw p1

    .line 26
    :cond_0
    :goto_0
    new-instance p4, Lc/e/a/a/Z$a;

    invoke-direct {p4}, Lc/e/a/a/Z$a;-><init>()V

    iput-object p4, p0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    .line 27
    new-instance p4, Lc/e/a/a/Z$b;

    invoke-direct {p4}, Lc/e/a/a/Z$b;-><init>()V

    iput-object p4, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    .line 28
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p4, p0, Lc/e/a/a/m/g;->n:Ljava/lang/StringBuilder;

    .line 29
    new-instance p4, Ljava/util/Formatter;

    iget-object v0, p0, Lc/e/a/a/m/g;->n:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object p4, p0, Lc/e/a/a/m/g;->o:Ljava/util/Formatter;

    .line 30
    new-array p4, p3, [J

    iput-object p4, p0, Lc/e/a/a/m/g;->O:[J

    .line 31
    new-array p4, p3, [Z

    iput-object p4, p0, Lc/e/a/a/m/g;->P:[Z

    .line 32
    new-array p4, p3, [J

    iput-object p4, p0, Lc/e/a/a/m/g;->Q:[J

    .line 33
    new-array p4, p3, [Z

    iput-object p4, p0, Lc/e/a/a/m/g;->R:[Z

    .line 34
    new-instance p4, Lc/e/a/a/m/g$a;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lc/e/a/a/m/g$a;-><init>(Lc/e/a/a/m/g;Lc/e/a/a/m/f;)V

    iput-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    .line 35
    new-instance p4, Lc/e/a/a/s;

    invoke-direct {p4}, Lc/e/a/a/s;-><init>()V

    iput-object p4, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    .line 36
    new-instance p4, Lc/e/a/a/m/c;

    invoke-direct {p4, p0}, Lc/e/a/a/m/c;-><init>(Lc/e/a/a/m/g;)V

    iput-object p4, p0, Lc/e/a/a/m/g;->r:Ljava/lang/Runnable;

    .line 37
    new-instance p4, Lc/e/a/a/m/a;

    invoke-direct {p4, p0}, Lc/e/a/a/m/a;-><init>(Lc/e/a/a/m/g;)V

    iput-object p4, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    invoke-virtual {p4, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 39
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 40
    sget p2, Lc/e/a/a/m/k;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lc/e/a/a/m/g;->k:Landroid/widget/TextView;

    .line 41
    sget p2, Lc/e/a/a/m/k;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lc/e/a/a/m/g;->l:Landroid/widget/TextView;

    .line 42
    sget p2, Lc/e/a/a/m/k;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lc/e/a/a/m/p;

    iput-object p2, p0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    .line 43
    iget-object p2, p0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    if-eqz p2, :cond_1

    .line 44
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-interface {p2, p4}, Lc/e/a/a/m/p;->a(Lc/e/a/a/m/p$a;)V

    .line 45
    :cond_1
    sget p2, Lc/e/a/a/m/k;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->d:Landroid/view/View;

    .line 46
    iget-object p2, p0, Lc/e/a/a/m/g;->d:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 47
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    :cond_2
    sget p2, Lc/e/a/a/m/k;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->e:Landroid/view/View;

    .line 49
    iget-object p2, p0, Lc/e/a/a/m/g;->e:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 50
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_3
    sget p2, Lc/e/a/a/m/k;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->b:Landroid/view/View;

    .line 52
    iget-object p2, p0, Lc/e/a/a/m/g;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 53
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_4
    sget p2, Lc/e/a/a/m/k;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->c:Landroid/view/View;

    .line 55
    iget-object p2, p0, Lc/e/a/a/m/g;->c:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 56
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_5
    sget p2, Lc/e/a/a/m/k;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->g:Landroid/view/View;

    .line 58
    iget-object p2, p0, Lc/e/a/a/m/g;->g:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 59
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_6
    sget p2, Lc/e/a/a/m/k;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->f:Landroid/view/View;

    .line 61
    iget-object p2, p0, Lc/e/a/a/m/g;->f:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 62
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_7
    sget p2, Lc/e/a/a/m/k;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    .line 64
    iget-object p2, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    .line 65
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :cond_8
    sget p2, Lc/e/a/a/m/k;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->i:Landroid/view/View;

    .line 67
    iget-object p2, p0, Lc/e/a/a/m/g;->i:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 68
    iget-object p4, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_9
    sget p2, Lc/e/a/a/m/k;->exo_vr:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->j:Landroid/view/View;

    .line 70
    invoke-virtual {p0, p3}, Lc/e/a/a/m/g;->setShowVrButton(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 72
    sget p2, Lc/e/a/a/m/j;->exo_controls_repeat_off:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->t:Landroid/graphics/drawable/Drawable;

    .line 73
    sget p2, Lc/e/a/a/m/j;->exo_controls_repeat_one:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->u:Landroid/graphics/drawable/Drawable;

    .line 74
    sget p2, Lc/e/a/a/m/j;->exo_controls_repeat_all:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->v:Landroid/graphics/drawable/Drawable;

    .line 75
    sget p2, Lc/e/a/a/m/m;->exo_controls_repeat_off_description:I

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->w:Ljava/lang/String;

    .line 77
    sget p2, Lc/e/a/a/m/m;->exo_controls_repeat_one_description:I

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/e/a/a/m/g;->x:Ljava/lang/String;

    .line 79
    sget p2, Lc/e/a/a/m/m;->exo_controls_repeat_all_description:I

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/m/g;->y:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 5
    sget v0, Lc/e/a/a/m/n;->PlayerControlView_repeat_toggle_modes:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->h()V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/m/g;Lc/e/a/a/M;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->b(Lc/e/a/a/M;)V

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/m/g;Lc/e/a/a/M;J)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lc/e/a/a/m/g;->b(Lc/e/a/a/M;J)V

    return-void
.end method

.method public static a(I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x59

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_1

    const/16 v0, 0x58

    if-ne p0, v0, :cond_0

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

.method public static a(Lc/e/a/a/Z;Lc/e/a/a/Z$b;)Z
    .locals 8

    .line 34
    invoke-virtual {p0}, Lc/e/a/a/Z;->b()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/Z;->b()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 36
    invoke-virtual {p0, v2, p1}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v3

    iget-wide v3, v3, Lc/e/a/a/Z$b;->i:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic a(Lc/e/a/a/m/g;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/e/a/a/m/g;->G:Z

    return p1
.end method

.method public static synthetic b(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->l()V

    return-void
.end method

.method public static synthetic b(Lc/e/a/a/m/g;Lc/e/a/a/M;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->c(Lc/e/a/a/M;)V

    return-void
.end method

.method public static synthetic c(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->m()V

    return-void
.end method

.method public static synthetic c(Lc/e/a/a/m/g;Lc/e/a/a/M;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;)V

    return-void
.end method

.method public static synthetic d(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lc/e/a/a/m/g;Lc/e/a/a/M;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->d(Lc/e/a/a/M;)V

    return-void
.end method

.method public static synthetic e(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->b:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic f(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->f:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic g(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->g:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic h(Lc/e/a/a/m/g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic i(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->d:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic j(Lc/e/a/a/m/g;)Lc/e/a/a/L;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->C:Lc/e/a/a/L;

    return-object p0
.end method

.method public static synthetic k(Lc/e/a/a/m/g;)Lc/e/a/a/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    return-object p0
.end method

.method public static synthetic l(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->e:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic m(Lc/e/a/a/m/g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic n(Lc/e/a/a/m/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/e/a/a/m/g;->L:I

    return p0
.end method

.method public static synthetic o(Lc/e/a/a/m/g;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->i:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic p(Lc/e/a/a/m/g;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->n:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static synthetic q(Lc/e/a/a/m/g;)Ljava/util/Formatter;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->o:Ljava/util/Formatter;

    return-object p0
.end method

.method public static synthetic r(Lc/e/a/a/m/g;)Lc/e/a/a/M;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    return-object p0
.end method

.method public static synthetic s(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->i()V

    return-void
.end method

.method public static synthetic t(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->j()V

    return-void
.end method

.method public static synthetic u(Lc/e/a/a/m/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->k()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lc/e/a/a/m/g;->B:Lc/e/a/a/m/g$b;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lc/e/a/a/m/g$b;->a(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lc/e/a/a/m/g;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iget-object v0, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide v0, p0, Lc/e/a/a/m/g;->N:J

    :cond_1
    return-void
.end method

.method public final a(Lc/e/a/a/M;)V
    .locals 4

    .line 16
    invoke-interface {p1}, Lc/e/a/a/M;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/m/g;->I:I

    if-lez v0, :cond_0

    .line 17
    invoke-interface {p1}, Lc/e/a/a/M;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lc/e/a/a/m/g;->I:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;J)V

    :cond_0
    return-void
.end method

.method public final a(Lc/e/a/a/M;J)V
    .locals 1

    .line 18
    invoke-interface {p1}, Lc/e/a/a/M;->j()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;IJ)Z

    return-void
.end method

.method public final a(ZLandroid/view/View;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const p1, 0x3e99999a    # 0.3f

    .line 14
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 24
    iget-object v1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-static {v0}, Lc/e/a/a/m/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_8

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 26
    iget-object p1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x59

    if-ne v0, v1, :cond_2

    .line 27
    iget-object p1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->d(Lc/e/a/a/M;)V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x55

    if-eq v0, p1, :cond_7

    const/16 p1, 0x57

    if-eq v0, p1, :cond_6

    const/16 p1, 0x58

    if-eq v0, p1, :cond_5

    const/16 p1, 0x7e

    if-eq v0, p1, :cond_4

    const/16 p1, 0x7f

    if-eq v0, p1, :cond_3

    goto :goto_0

    .line 29
    :cond_3
    iget-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {p1, v0, v2}, Lc/e/a/a/r;->b(Lc/e/a/a/M;Z)Z

    goto :goto_0

    .line 30
    :cond_4
    iget-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {p1, v0, v3}, Lc/e/a/a/r;->b(Lc/e/a/a/M;Z)Z

    goto :goto_0

    .line 31
    :cond_5
    iget-object p1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->c(Lc/e/a/a/M;)V

    goto :goto_0

    .line 32
    :cond_6
    iget-object p1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->b(Lc/e/a/a/M;)V

    goto :goto_0

    .line 33
    :cond_7
    iget-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v0}, Lc/e/a/a/M;->f()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v0, v1}, Lc/e/a/a/r;->b(Lc/e/a/a/M;Z)Z

    :cond_8
    :goto_0
    return v3

    :cond_9
    :goto_1
    return v2
.end method

.method public final a(Lc/e/a/a/M;IJ)Z
    .locals 5

    .line 19
    invoke-interface {p1}, Lc/e/a/a/M;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 20
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 22
    iget-object v0, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/e/a/a/r;->a(Lc/e/a/a/M;IJ)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 5

    .line 3
    iget-object v0, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget v0, p0, Lc/e/a/a/m/g;->J:I

    if-lez v0, :cond_0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lc/e/a/a/m/g;->J:I

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lc/e/a/a/m/g;->N:J

    .line 6
    iget-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    int-to-long v1, v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide v0, p0, Lc/e/a/a/m/g;->N:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lc/e/a/a/M;)V
    .locals 6

    .line 9
    invoke-interface {p1}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lc/e/a/a/M;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lc/e/a/a/M;->j()I

    move-result v1

    .line 12
    invoke-interface {p1}, Lc/e/a/a/M;->o()I

    move-result v2

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_1

    .line 13
    invoke-virtual {p0, p1, v2, v4, v5}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;IJ)Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v0

    iget-boolean v0, v0, Lc/e/a/a/Z$b;->e:Z

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0, p1, v1, v4, v5}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lc/e/a/a/M;J)V
    .locals 6

    .line 16
    invoke-interface {p1}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lc/e/a/a/m/g;->F:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    invoke-virtual {v0}, Lc/e/a/a/Z;->b()I

    move-result v1

    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v2, v3}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    move-result-object v3

    invoke-virtual {v3}, Lc/e/a/a/Z$b;->c()J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    goto :goto_1

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {p1}, Lc/e/a/a/M;->j()I

    move-result v2

    .line 21
    :goto_1
    invoke-virtual {p0, p1, v2, p2, p3}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 22
    invoke-virtual {p0}, Lc/e/a/a/m/g;->j()V

    :cond_3
    return-void
.end method

.method public final c(Lc/e/a/a/M;)V
    .locals 6

    .line 3
    invoke-interface {p1}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Lc/e/a/a/M;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lc/e/a/a/M;->j()I

    move-result v1

    .line 6
    iget-object v2, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    .line 7
    invoke-interface {p1}, Lc/e/a/a/M;->m()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 8
    invoke-interface {p1}, Lc/e/a/a/M;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    iget-boolean v2, v1, Lc/e/a/a/Z$b;->e:Z

    if-eqz v2, :cond_2

    iget-boolean v1, v1, Lc/e/a/a/Z$b;->d:Z

    if-nez v1, :cond_2

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;IJ)Z

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 11
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lc/e/a/a/M;->b()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    .line 13
    invoke-interface {v0}, Lc/e/a/a/M;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    .line 14
    invoke-interface {v0}, Lc/e/a/a/M;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final d(Lc/e/a/a/M;)V
    .locals 4

    .line 4
    invoke-interface {p1}, Lc/e/a/a/M;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/e/a/a/m/g;->H:I

    if-lez v0, :cond_0

    .line 5
    invoke-interface {p1}, Lc/e/a/a/M;->getCurrentPosition()J

    move-result-wide v0

    iget v2, p0, Lc/e/a/a/m/g;->H:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lc/e/a/a/m/g;->a(Lc/e/a/a/M;J)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/a/m/g;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/m/g;->b()V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v1, p0, Lc/e/a/a/m/g;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lc/e/a/a/m/g;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/m/g;->B:Lc/e/a/a/m/g$b;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lc/e/a/a/m/g$b;->a(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/m/g;->g()V

    .line 7
    invoke-virtual {p0}, Lc/e/a/a/m/g;->e()V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->b()V

    return-void
.end method

.method public final g()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->i()V

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/m/g;->h()V

    .line 4
    invoke-virtual {p0}, Lc/e/a/a/m/g;->k()V

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/m/g;->l()V

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/m/g;->m()V

    return-void
.end method

.method public getPlayer()Lc/e/a/a/M;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/m/g;->L:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/m/g;->M:Z

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/m/g;->J:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/g;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()V
    .locals 7

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 4
    invoke-interface {v0}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lc/e/a/a/Z;->c()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v2}, Lc/e/a/a/M;->c()Z

    move-result v2

    if-nez v2, :cond_7

    .line 6
    iget-object v2, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v2}, Lc/e/a/a/M;->j()I

    move-result v2

    iget-object v3, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    invoke-virtual {v0, v2, v3}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    .line 7
    iget-object v0, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    iget-boolean v2, v0, Lc/e/a/a/Z$b;->d:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 8
    iget-boolean v0, v0, Lc/e/a/a/Z$b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v0}, Lc/e/a/a/M;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 9
    iget v4, p0, Lc/e/a/a/m/g;->H:I

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 10
    iget v5, p0, Lc/e/a/a/m/g;->I:I

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 11
    :goto_3
    iget-object v6, p0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    iget-boolean v6, v6, Lc/e/a/a/Z$b;->e:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v6}, Lc/e/a/a/M;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    move v3, v2

    move v2, v1

    move v1, v4

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 12
    :goto_4
    iget-object v4, p0, Lc/e/a/a/m/g;->b:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    .line 13
    iget-object v0, p0, Lc/e/a/a/m/g;->g:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    .line 14
    iget-object v0, p0, Lc/e/a/a/m/g;->f:Landroid/view/View;

    invoke-virtual {p0, v5, v0}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lc/e/a/a/m/g;->c:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    .line 16
    iget-object v0, p0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    if-eqz v0, :cond_8

    .line 17
    invoke-interface {v0, v3}, Lc/e/a/a/m/p;->setEnabled(Z)V

    :cond_8
    :goto_5
    return-void
.end method

.method public final i()V
    .locals 7

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    if-nez v0, :cond_0

    goto :goto_5

    .line 3
    :cond_0
    invoke-virtual {p0}, Lc/e/a/a/m/g;->c()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lc/e/a/a/m/g;->d:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v4

    .line 6
    iget-object v5, p0, Lc/e/a/a/m/g;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v6, 0x8

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 7
    :goto_2
    iget-object v5, p0, Lc/e/a/a/m/g;->e:Landroid/view/View;

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v1, v3

    .line 9
    iget-object v3, p0, Lc/e/a/a/m/g;->e:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p0}, Lc/e/a/a/m/g;->e()V

    :cond_7
    :goto_5
    return-void
.end method

.method public final j()V
    .locals 13

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v1, p0, Lc/e/a/a/m/g;->S:J

    invoke-interface {v0}, Lc/e/a/a/M;->l()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 5
    iget-wide v3, p0, Lc/e/a/a/m/g;->S:J

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v0}, Lc/e/a/a/M;->t()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 6
    :goto_0
    iget-object v0, p0, Lc/e/a/a/m/g;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Lc/e/a/a/m/g;->G:Z

    if-nez v5, :cond_2

    .line 7
    iget-object v5, p0, Lc/e/a/a/m/g;->n:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lc/e/a/a/m/g;->o:Ljava/util/Formatter;

    invoke-static {v5, v6, v1, v2}, Lc/e/a/a/o/I;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0, v1, v2}, Lc/e/a/a/m/p;->setPosition(J)V

    .line 10
    iget-object v0, p0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    invoke-interface {v0, v3, v4}, Lc/e/a/a/m/p;->setBufferedPosition(J)V

    .line 11
    :cond_3
    iget-object v0, p0, Lc/e/a/a/m/g;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lc/e/a/a/M;->b()I

    move-result v0

    :goto_1
    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v0, v4, :cond_7

    .line 13
    iget-object v4, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v4}, Lc/e/a/a/M;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 14
    iget-object v0, p0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0}, Lc/e/a/a/m/p;->getPreferredUpdateDelay()J

    move-result-wide v3

    goto :goto_2

    :cond_5
    move-wide v3, v5

    .line 16
    :goto_2
    rem-long/2addr v1, v5

    sub-long v1, v5, v1

    .line 17
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v2}, Lc/e/a/a/M;->a()Lc/e/a/a/K;

    move-result-object v2

    iget v2, v2, Lc/e/a/a/K;->b:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    long-to-float v0, v0

    div-float/2addr v0, v2

    float-to-long v5, v0

    :cond_6
    move-wide v7, v5

    .line 19
    iget v0, p0, Lc/e/a/a/m/g;->K:I

    int-to-long v9, v0

    const-wide/16 v11, 0x3e8

    invoke-static/range {v7 .. v12}, Lc/e/a/a/o/I;->b(JJJ)J

    move-result-wide v0

    .line 20
    iget-object v2, p0, Lc/e/a/a/m/g;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_8

    .line 21
    iget-object v0, p0, Lc/e/a/a/m/g;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5, v6}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public final k()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v1, p0, Lc/e/a/a/m/g;->L:I

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0, v2, v0}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    .line 8
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v0}, Lc/e/a/a/M;->d()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lc/e/a/a/m/g;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lc/e/a/a/m/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lc/e/a/a/m/g;->u:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lc/e/a/a/m/g;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lc/e/a/a/m/g;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lc/e/a/a/m/g;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    iget-object v0, p0, Lc/e/a/a/m/g;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/e/a/a/m/g;->i:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v1, p0, Lc/e/a/a/m/g;->M:Z

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0, v2, v0}, Lc/e/a/a/m/g;->a(ZLandroid/view/View;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {v1}, Lc/e/a/a/M;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const v1, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lc/e/a/a/m/g;->i:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lc/e/a/a/m/g;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 22

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v2, v0, Lc/e/a/a/m/g;->E:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v1

    iget-object v2, v0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    invoke-static {v1, v2}, Lc/e/a/a/m/g;->a(Lc/e/a/a/Z;Lc/e/a/a/Z$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lc/e/a/a/m/g;->F:Z

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lc/e/a/a/m/g;->S:J

    .line 6
    iget-object v5, v0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v5}, Lc/e/a/a/M;->q()Lc/e/a/a/Z;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lc/e/a/a/Z;->c()Z

    move-result v6

    if-nez v6, :cond_e

    .line 8
    iget-object v6, v0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {v6}, Lc/e/a/a/M;->j()I

    move-result v6

    .line 9
    iget-boolean v7, v0, Lc/e/a/a/m/g;->F:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move v7, v6

    .line 10
    :goto_1
    iget-boolean v8, v0, Lc/e/a/a/m/g;->F:Z

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Lc/e/a/a/Z;->b()I

    move-result v8

    sub-int/2addr v8, v4

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    move-wide v9, v1

    const/4 v11, 0x0

    :goto_3
    if-gt v7, v8, :cond_d

    if-ne v7, v6, :cond_4

    .line 11
    invoke-static {v9, v10}, Lc/e/a/a/q;->b(J)J

    move-result-wide v12

    iput-wide v12, v0, Lc/e/a/a/m/g;->S:J

    .line 12
    :cond_4
    iget-object v12, v0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    invoke-virtual {v5, v7, v12}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$b;)Lc/e/a/a/Z$b;

    .line 13
    iget-object v12, v0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    iget-wide v13, v12, Lc/e/a/a/Z$b;->i:J

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v17, v13, v15

    if-nez v17, :cond_5

    .line 14
    iget-boolean v1, v0, Lc/e/a/a/m/g;->F:Z

    xor-int/2addr v1, v4

    invoke-static {v1}, Lc/e/a/a/o/e;->b(Z)V

    goto/16 :goto_8

    .line 15
    :cond_5
    iget v12, v12, Lc/e/a/a/Z$b;->f:I

    :goto_4
    iget-object v13, v0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    iget v14, v13, Lc/e/a/a/Z$b;->g:I

    if-gt v12, v14, :cond_c

    .line 16
    iget-object v13, v0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    invoke-virtual {v5, v12, v13}, Lc/e/a/a/Z;->a(ILc/e/a/a/Z$a;)Lc/e/a/a/Z$a;

    .line 17
    iget-object v13, v0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    invoke-virtual {v13}, Lc/e/a/a/Z$a;->a()I

    move-result v13

    move v14, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v13, :cond_b

    .line 18
    iget-object v4, v0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    invoke-virtual {v4, v11}, Lc/e/a/a/Z$a;->b(I)J

    move-result-wide v18

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v4, v18, v20

    if-nez v4, :cond_7

    .line 19
    iget-object v4, v0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    iget-wide v3, v4, Lc/e/a/a/Z$a;->d:J

    cmp-long v18, v3, v15

    if-nez v18, :cond_6

    goto :goto_7

    :cond_6
    move-wide/from16 v18, v3

    .line 20
    :cond_7
    iget-object v3, v0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    invoke-virtual {v3}, Lc/e/a/a/Z$a;->e()J

    move-result-wide v3

    add-long v18, v18, v3

    cmp-long v3, v18, v1

    if-ltz v3, :cond_a

    .line 21
    iget-object v3, v0, Lc/e/a/a/m/g;->q:Lc/e/a/a/Z$b;

    iget-wide v3, v3, Lc/e/a/a/Z$b;->i:J

    cmp-long v21, v18, v3

    if-gtz v21, :cond_a

    .line 22
    iget-object v3, v0, Lc/e/a/a/m/g;->O:[J

    array-length v4, v3

    if-ne v14, v4, :cond_9

    .line 23
    array-length v4, v3

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    array-length v3, v3

    mul-int/lit8 v4, v3, 0x2

    .line 24
    :goto_6
    iget-object v3, v0, Lc/e/a/a/m/g;->O:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lc/e/a/a/m/g;->O:[J

    .line 25
    iget-object v3, v0, Lc/e/a/a/m/g;->P:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lc/e/a/a/m/g;->P:[Z

    .line 26
    :cond_9
    iget-object v3, v0, Lc/e/a/a/m/g;->O:[J

    add-long v18, v9, v18

    invoke-static/range {v18 .. v19}, Lc/e/a/a/q;->b(J)J

    move-result-wide v18

    aput-wide v18, v3, v14

    .line 27
    iget-object v3, v0, Lc/e/a/a/m/g;->P:[Z

    iget-object v4, v0, Lc/e/a/a/m/g;->p:Lc/e/a/a/Z$a;

    invoke-virtual {v4, v11}, Lc/e/a/a/Z$a;->d(I)Z

    move-result v4

    aput-boolean v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move v11, v14

    const/4 v4, 0x1

    goto :goto_4

    .line 28
    :cond_c
    iget-wide v3, v13, Lc/e/a/a/Z$b;->i:J

    add-long/2addr v9, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_d
    :goto_8
    move-wide v1, v9

    goto :goto_9

    :cond_e
    const/4 v11, 0x0

    .line 29
    :goto_9
    invoke-static {v1, v2}, Lc/e/a/a/q;->b(J)J

    move-result-wide v1

    .line 30
    iget-object v3, v0, Lc/e/a/a/m/g;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    .line 31
    iget-object v4, v0, Lc/e/a/a/m/g;->n:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lc/e/a/a/m/g;->o:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lc/e/a/a/o/I;->a(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_f
    iget-object v3, v0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    if-eqz v3, :cond_11

    .line 33
    invoke-interface {v3, v1, v2}, Lc/e/a/a/m/p;->setDuration(J)V

    .line 34
    iget-object v1, v0, Lc/e/a/a/m/g;->Q:[J

    array-length v1, v1

    add-int v2, v11, v1

    .line 35
    iget-object v3, v0, Lc/e/a/a/m/g;->O:[J

    array-length v4, v3

    if-le v2, v4, :cond_10

    .line 36
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, v0, Lc/e/a/a/m/g;->O:[J

    .line 37
    iget-object v3, v0, Lc/e/a/a/m/g;->P:[Z

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    iput-object v3, v0, Lc/e/a/a/m/g;->P:[Z

    .line 38
    :cond_10
    iget-object v3, v0, Lc/e/a/a/m/g;->Q:[J

    iget-object v4, v0, Lc/e/a/a/m/g;->O:[J

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v3, v0, Lc/e/a/a/m/g;->R:[Z

    iget-object v4, v0, Lc/e/a/a/m/g;->P:[Z

    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v1, v0, Lc/e/a/a/m/g;->m:Lc/e/a/a/m/p;

    iget-object v3, v0, Lc/e/a/a/m/g;->O:[J

    iget-object v4, v0, Lc/e/a/a/m/g;->P:[Z

    invoke-interface {v1, v3, v4, v2}, Lc/e/a/a/m/p;->a([J[ZI)V

    .line 41
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lc/e/a/a/m/g;->j()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    .line 3
    iget-wide v0, p0, Lc/e/a/a/m/g;->N:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/m/g;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lc/e/a/a/m/g;->b()V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/m/g;->g()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/e/a/a/m/g;->D:Z

    .line 3
    iget-object v0, p0, Lc/e/a/a/m/g;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lc/e/a/a/m/g;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setControlDispatcher(Lc/e/a/a/r;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lc/e/a/a/s;

    invoke-direct {p1}, Lc/e/a/a/s;-><init>()V

    :cond_0
    iput-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    return-void
.end method

.method public setFastForwardIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/a/m/g;->I:I

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->h()V

    return-void
.end method

.method public setPlaybackPreparer(Lc/e/a/a/L;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/m/g;->C:Lc/e/a/a/L;

    return-void
.end method

.method public setPlayer(Lc/e/a/a/M;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/o/e;->b(Z)V

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lc/e/a/a/M;->r()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :cond_2
    :goto_1
    invoke-static {v2}, Lc/e/a/a/o/e;->a(Z)V

    .line 4
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-interface {v0, v1}, Lc/e/a/a/M;->b(Lc/e/a/a/M$b;)V

    .line 6
    :cond_4
    iput-object p1, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    if-eqz p1, :cond_5

    .line 7
    iget-object v0, p0, Lc/e/a/a/m/g;->a:Lc/e/a/a/m/g$a;

    invoke-interface {p1, v0}, Lc/e/a/a/M;->a(Lc/e/a/a/M$b;)V

    .line 8
    :cond_5
    invoke-virtual {p0}, Lc/e/a/a/m/g;->g()V

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Lc/e/a/a/m/g;->L:I

    .line 2
    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lc/e/a/a/M;->d()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lc/e/a/a/r;->a(Lc/e/a/a/M;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {p1, v0, v2}, Lc/e/a/a/r;->a(Lc/e/a/a/M;I)Z

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 6
    iget-object p1, p0, Lc/e/a/a/m/g;->A:Lc/e/a/a/r;

    iget-object v0, p0, Lc/e/a/a/m/g;->z:Lc/e/a/a/M;

    invoke-interface {p1, v0, v1}, Lc/e/a/a/r;->a(Lc/e/a/a/M;I)Z

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lc/e/a/a/m/g;->k()V

    return-void
.end method

.method public setRewindIncrementMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/a/m/g;->H:I

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->h()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/e/a/a/m/g;->E:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->m()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/e/a/a/m/g;->M:Z

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->l()V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/e/a/a/m/g;->J:I

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/m/g;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/e/a/a/m/g;->b()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/g;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    .line 1
    invoke-static {p1, v0, v1}, Lc/e/a/a/o/I;->a(III)I

    move-result p1

    iput p1, p0, Lc/e/a/a/m/g;->K:I

    return-void
.end method

.method public setVisibilityListener(Lc/e/a/a/m/g$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/m/g;->B:Lc/e/a/a/m/g$b;

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/m/g;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
