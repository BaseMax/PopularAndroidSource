.class public Lb/b/a/M;
.super Lb/b/a/a;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/M$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Z

.field public B:Lb/b/f/i;

.field public C:Z

.field public D:Z

.field public final E:Lb/i/k/J;

.field public final F:Lb/i/k/J;

.field public final G:Lb/i/k/L;

.field public c:Landroid/content/Context;

.field public d:Landroid/content/Context;

.field public e:Landroid/app/Activity;

.field public f:Landroid/app/Dialog;

.field public g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public h:Landroidx/appcompat/widget/ActionBarContainer;

.field public i:Lb/b/g/G;

.field public j:Landroidx/appcompat/widget/ActionBarContextView;

.field public k:Landroid/view/View;

.field public l:Lb/b/g/V;

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public p:Lb/b/a/M$a;

.field public q:Lb/b/f/b;

.field public r:Lb/b/f/b$a;

.field public s:Z

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lb/b/a/M;->a:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lb/b/a/M;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/b/a/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/a/M;->m:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb/b/a/M;->n:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/a/M;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/b/a/M;->v:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lb/b/a/M;->w:Z

    .line 7
    iput-boolean v0, p0, Lb/b/a/M;->A:Z

    .line 8
    new-instance v0, Lb/b/a/J;

    invoke-direct {v0, p0}, Lb/b/a/J;-><init>(Lb/b/a/M;)V

    iput-object v0, p0, Lb/b/a/M;->E:Lb/i/k/J;

    .line 9
    new-instance v0, Lb/b/a/K;

    invoke-direct {v0, p0}, Lb/b/a/K;-><init>(Lb/b/a/M;)V

    iput-object v0, p0, Lb/b/a/M;->F:Lb/i/k/J;

    .line 10
    new-instance v0, Lb/b/a/L;

    invoke-direct {v0, p0}, Lb/b/a/L;-><init>(Lb/b/a/M;)V

    iput-object v0, p0, Lb/b/a/M;->G:Lb/i/k/L;

    .line 11
    iput-object p1, p0, Lb/b/a/M;->e:Landroid/app/Activity;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lb/b/a/M;->b(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/M;->k:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lb/b/a/a;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/a/M;->m:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lb/b/a/M;->n:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/a/M;->t:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lb/b/a/M;->v:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lb/b/a/M;->w:Z

    .line 22
    iput-boolean v0, p0, Lb/b/a/M;->A:Z

    .line 23
    new-instance v0, Lb/b/a/J;

    invoke-direct {v0, p0}, Lb/b/a/J;-><init>(Lb/b/a/M;)V

    iput-object v0, p0, Lb/b/a/M;->E:Lb/i/k/J;

    .line 24
    new-instance v0, Lb/b/a/K;

    invoke-direct {v0, p0}, Lb/b/a/K;-><init>(Lb/b/a/M;)V

    iput-object v0, p0, Lb/b/a/M;->F:Lb/i/k/J;

    .line 25
    new-instance v0, Lb/b/a/L;

    invoke-direct {v0, p0}, Lb/b/a/L;-><init>(Lb/b/a/M;)V

    iput-object v0, p0, Lb/b/a/M;->G:Lb/i/k/L;

    .line 26
    iput-object p1, p0, Lb/b/a/M;->f:Landroid/app/Dialog;

    .line 27
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/a/M;->b(Landroid/view/View;)V

    return-void
.end method

.method public static a(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lb/b/f/b$a;)Lb/b/f/b;
    .locals 2

    .line 14
    iget-object v0, p0, Lb/b/a/M;->p:Lb/b/a/M$a;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lb/b/a/M$a;->a()V

    .line 16
    :cond_0
    iget-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 17
    iget-object v0, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->d()V

    .line 18
    new-instance v0, Lb/b/a/M$a;

    iget-object v1, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lb/b/a/M$a;-><init>(Lb/b/a/M;Landroid/content/Context;Lb/b/f/b$a;)V

    .line 19
    invoke-virtual {v0}, Lb/b/a/M$a;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    iput-object v0, p0, Lb/b/a/M;->p:Lb/b/a/M$a;

    .line 21
    invoke-virtual {v0}, Lb/b/a/M$a;->i()V

    .line 22
    iget-object p1, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Lb/b/f/b;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lb/b/a/M;->e(Z)V

    .line 24
    iget-object p1, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Landroid/view/View;)Lb/b/g/G;
    .locals 3

    .line 1
    instance-of v0, p1, Lb/b/g/G;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lb/b/g/G;

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lb/b/g/G;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lb/b/a/M;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lb/b/a/M;->y:Z

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lb/b/a/M;->l(Z)V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 7
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Lb/i/k/z;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 9
    iput p1, p0, Lb/b/a/M;->v:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 11
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->m()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lb/b/a/M;->o:Z

    .line 13
    :cond_0
    iget-object v1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Lb/b/g/G;->a(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 8
    iget-object p1, p0, Lb/b/a/M;->c:Landroid/content/Context;

    invoke-static {p1}, Lb/b/f/a;->a(Landroid/content/Context;)Lb/b/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/f/a;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/a/M;->i(Z)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v0, p1}, Lb/b/g/G;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lb/b/a/M;->w:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 29
    iget-object v0, p0, Lb/b/a/M;->p:Lb/b/a/M$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-virtual {v0}, Lb/b/a/M$a;->c()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 32
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 34
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 5

    .line 1
    sget v0, Lb/b/f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 2
    iget-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V

    .line 4
    :cond_0
    sget v0, Lb/b/f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/a/M;->a(Landroid/view/View;)Lb/b/g/G;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    .line 5
    sget v0, Lb/b/f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    .line 6
    sget v0, Lb/b/f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    .line 7
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_7

    .line 8
    invoke-interface {p1}, Lb/b/g/G;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/M;->c:Landroid/content/Context;

    .line 9
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {p1}, Lb/b/g/G;->m()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 10
    iput-boolean v0, p0, Lb/b/a/M;->o:Z

    .line 11
    :cond_2
    iget-object v2, p0, Lb/b/a/M;->c:Landroid/content/Context;

    invoke-static {v2}, Lb/b/f/a;->a(Landroid/content/Context;)Lb/b/f/a;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lb/b/f/a;->a()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p0, p1}, Lb/b/a/M;->k(Z)V

    .line 13
    invoke-virtual {v2}, Lb/b/f/a;->f()Z

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/a/M;->i(Z)V

    .line 14
    iget-object p1, p0, Lb/b/a/M;->c:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lb/b/j;->ActionBar:[I

    sget v4, Lb/b/a;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget v2, Lb/b/j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {p0, v0}, Lb/b/a/M;->j(Z)V

    .line 17
    :cond_5
    sget v0, Lb/b/j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    .line 18
    invoke-virtual {p0, v0}, Lb/b/a/M;->a(F)V

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 20
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lb/b/a/M;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Z)V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lb/b/a/M;->s:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 22
    :cond_0
    iput-boolean p1, p0, Lb/b/a/M;->s:Z

    .line 23
    iget-object v0, p0, Lb/b/a/M;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    iget-object v2, p0, Lb/b/a/M;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/a$b;

    invoke-interface {v2, p1}, Lb/b/a/a$b;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/a/M;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/b/a/M;->y:Z

    .line 3
    invoke-virtual {p0, v0}, Lb/b/a/M;->l(Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lb/b/a/M;->o:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lb/b/a/M;->h(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 4
    iget-object v0, p0, Lb/b/a/M;->B:Lb/b/f/i;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lb/b/f/i;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lb/b/a/M;->B:Lb/b/f/i;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/b/a/M;->C:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lb/b/a/M;->B:Lb/b/f/i;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lb/b/f/i;->a()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 8

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lb/b/a/M;->p()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/b/a/M;->n()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lb/b/a/M;->o()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {p1, v1, v4, v5}, Lb/b/g/G;->a(IJ)Lb/i/k/I;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Lb/b/g/a;->a(IJ)Lb/i/k/I;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {p1, v3, v6, v7}, Lb/b/g/G;->a(IJ)Lb/i/k/I;

    move-result-object v0

    .line 7
    iget-object p1, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Lb/b/g/a;->a(IJ)Lb/i/k/I;

    move-result-object p1

    .line 8
    :goto_1
    new-instance v1, Lb/b/f/i;

    invoke-direct {v1}, Lb/b/f/i;-><init>()V

    .line 9
    invoke-virtual {v1, p1, v0}, Lb/b/f/i;->a(Lb/i/k/I;Lb/i/k/I;)Lb/b/f/i;

    .line 10
    invoke-virtual {v1}, Lb/b/f/i;->c()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {p1, v1}, Lb/b/g/G;->c(I)V

    .line 12
    iget-object p1, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {p1, v3}, Lb/b/g/G;->c(I)V

    .line 14
    iget-object p1, p0, Lb/b/a/M;->j:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/b/a/M;->B:Lb/b/f/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/b/f/i;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lb/b/a/M;->v:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lb/b/a/M;->C:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 4
    :cond_1
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    new-instance v0, Lb/b/f/i;

    invoke-direct {v0}, Lb/b/f/i;-><init>()V

    .line 7
    iget-object v2, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 8
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 9
    iget-object v3, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 10
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 11
    :cond_2
    iget-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lb/i/k/z;->a(Landroid/view/View;)Lb/i/k/I;

    move-result-object p1

    invoke-virtual {p1, v2}, Lb/i/k/I;->b(F)Lb/i/k/I;

    .line 12
    iget-object v1, p0, Lb/b/a/M;->G:Lb/i/k/L;

    invoke-virtual {p1, v1}, Lb/i/k/I;->a(Lb/i/k/L;)Lb/i/k/I;

    .line 13
    invoke-virtual {v0, p1}, Lb/b/f/i;->a(Lb/i/k/I;)Lb/b/f/i;

    .line 14
    iget-boolean p1, p0, Lb/b/a/M;->w:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/b/a/M;->k:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 15
    invoke-static {p1}, Lb/i/k/z;->a(Landroid/view/View;)Lb/i/k/I;

    move-result-object p1

    invoke-virtual {p1, v2}, Lb/i/k/I;->b(F)Lb/i/k/I;

    invoke-virtual {v0, p1}, Lb/b/f/i;->a(Lb/i/k/I;)Lb/b/f/i;

    .line 16
    :cond_3
    sget-object p1, Lb/b/a/M;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Lb/b/f/i;->a(Landroid/view/animation/Interpolator;)Lb/b/f/i;

    const-wide/16 v1, 0xfa

    .line 17
    invoke-virtual {v0, v1, v2}, Lb/b/f/i;->a(J)Lb/b/f/i;

    .line 18
    iget-object p1, p0, Lb/b/a/M;->E:Lb/i/k/J;

    invoke-virtual {v0, p1}, Lb/b/f/i;->a(Lb/i/k/J;)Lb/b/f/i;

    .line 19
    iput-object v0, p0, Lb/b/a/M;->B:Lb/b/f/i;

    .line 20
    invoke-virtual {v0}, Lb/b/f/i;->c()V

    goto :goto_0

    .line 21
    :cond_4
    iget-object p1, p0, Lb/b/a/M;->E:Lb/i/k/J;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/i/k/J;->b(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public f()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/b/g/G;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->m()I

    move-result v0

    return v0
.end method

.method public g(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lb/b/a/M;->B:Lb/b/f/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/b/f/i;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget v0, p0, Lb/b/a/M;->v:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lb/b/a/M;->C:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 6
    :cond_1
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 8
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 9
    iget-object v2, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 10
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 11
    :cond_2
    iget-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 12
    new-instance p1, Lb/b/f/i;

    invoke-direct {p1}, Lb/b/f/i;-><init>()V

    .line 13
    iget-object v2, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Lb/i/k/z;->a(Landroid/view/View;)Lb/i/k/I;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/i/k/I;->b(F)Lb/i/k/I;

    .line 14
    iget-object v3, p0, Lb/b/a/M;->G:Lb/i/k/L;

    invoke-virtual {v2, v3}, Lb/i/k/I;->a(Lb/i/k/L;)Lb/i/k/I;

    .line 15
    invoke-virtual {p1, v2}, Lb/b/f/i;->a(Lb/i/k/I;)Lb/b/f/i;

    .line 16
    iget-boolean v2, p0, Lb/b/a/M;->w:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lb/b/a/M;->k:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18
    iget-object v0, p0, Lb/b/a/M;->k:Landroid/view/View;

    invoke-static {v0}, Lb/i/k/z;->a(Landroid/view/View;)Lb/i/k/I;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/i/k/I;->b(F)Lb/i/k/I;

    invoke-virtual {p1, v0}, Lb/b/f/i;->a(Lb/i/k/I;)Lb/b/f/i;

    .line 19
    :cond_3
    sget-object v0, Lb/b/a/M;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lb/b/f/i;->a(Landroid/view/animation/Interpolator;)Lb/b/f/i;

    const-wide/16 v0, 0xfa

    .line 20
    invoke-virtual {p1, v0, v1}, Lb/b/f/i;->a(J)Lb/b/f/i;

    .line 21
    iget-object v0, p0, Lb/b/a/M;->F:Lb/i/k/J;

    invoke-virtual {p1, v0}, Lb/b/f/i;->a(Lb/i/k/J;)Lb/b/f/i;

    .line 22
    iput-object p1, p0, Lb/b/a/M;->B:Lb/b/f/i;

    .line 23
    invoke-virtual {p1}, Lb/b/f/i;->c()V

    goto :goto_0

    .line 24
    :cond_4
    iget-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 25
    iget-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 26
    iget-boolean p1, p0, Lb/b/a/M;->w:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lb/b/a/M;->k:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 28
    :cond_5
    iget-object p1, p0, Lb/b/a/M;->F:Lb/i/k/J;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/i/k/J;->b(Landroid/view/View;)V

    .line 29
    :goto_0
    iget-object p1, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    .line 30
    invoke-static {p1}, Lb/i/k/z;->G(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public h()Landroid/content/Context;
    .locals 4

    .line 2
    iget-object v0, p0, Lb/b/a/M;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    iget-object v1, p0, Lb/b/a/M;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 5
    sget v2, Lb/b/a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 6
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lb/b/a/M;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lb/b/a/M;->d:Landroid/content/Context;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lb/b/a/M;->c:Landroid/content/Context;

    iput-object v0, p0, Lb/b/a/M;->d:Landroid/content/Context;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/a/M;->d:Landroid/content/Context;

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/b/a/M;->a(II)V

    return-void
.end method

.method public final i(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lb/b/a/M;->u:Z

    .line 2
    iget-boolean p1, p0, Lb/b/a/M;->u:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {p1, v0}, Lb/b/g/G;->a(Lb/b/g/V;)V

    .line 4
    iget-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Lb/b/a/M;->l:Lb/b/g/V;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lb/b/g/V;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lb/b/g/V;)V

    .line 6
    iget-object p1, p0, Lb/b/a/M;->i:Lb/b/g/G;

    iget-object v0, p0, Lb/b/a/M;->l:Lb/b/g/V;

    invoke-interface {p1, v0}, Lb/b/g/G;->a(Lb/b/g/V;)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lb/b/a/M;->m()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 8
    :goto_1
    iget-object v0, p0, Lb/b/a/M;->l:Lb/b/g/V;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0}, Lb/i/k/z;->G(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 13
    :cond_3
    :goto_2
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    iget-boolean v3, p0, Lb/b/a/M;->u:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v0, v3}, Lb/b/g/G;->b(Z)V

    .line 14
    iget-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lb/b/a/M;->u:Z

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lb/b/a/M;->D:Z

    .line 4
    iget-object v0, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v0, p1}, Lb/b/g/G;->a(Z)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/M;->r:Lb/b/f/b$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/b/a/M;->q:Lb/b/f/b;

    invoke-interface {v0, v1}, Lb/b/f/b$a;->a(Lb/b/f/b;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/b/a/M;->q:Lb/b/f/b;

    .line 4
    iput-object v0, p0, Lb/b/a/M;->r:Lb/b/f/b$a;

    :cond_0
    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 5
    iget-boolean v0, p0, Lb/b/a/M;->x:Z

    iget-boolean v1, p0, Lb/b/a/M;->y:Z

    iget-boolean v2, p0, Lb/b/a/M;->z:Z

    invoke-static {v0, v1, v2}, Lb/b/a/M;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lb/b/a/M;->A:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lb/b/a/M;->A:Z

    .line 8
    invoke-virtual {p0, p1}, Lb/b/a/M;->g(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lb/b/a/M;->A:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lb/b/a/M;->A:Z

    .line 11
    invoke-virtual {p0, p1}, Lb/b/a/M;->f(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M;->i:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->k()I

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/b/a/M;->z:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/b/a/M;->z:Z

    .line 3
    iget-object v1, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lb/b/a/M;->l(Z)V

    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Lb/i/k/z;->B(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/b/a/M;->z:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/b/a/M;->z:Z

    .line 3
    iget-object v1, p0, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lb/b/a/M;->l(Z)V

    :cond_1
    return-void
.end method
