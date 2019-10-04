.class public Lf/a/a/e/C;
.super Lf/a/a/e/l;
.source "VideoPageFragment.java"


# instance fields
.field public Y:Landroid/view/View;

.field public Z:Landroid/widget/LinearLayout;

.field public aa:Ljava/lang/String;

.field public ba:Ljava/lang/String;

.field public ca:Z

.field public da:Lf/a/a/g/d/b/f;

.field public ea:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/l;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/C;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/C;->Ma()V

    return-void
.end method


# virtual methods
.method public La()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final Ma()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->cover_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->player_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineUser;->c()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/platform/InlineApplication;->g()Lf/a/a/d/f;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lf/a/a/d/f;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-interface {v1, v0}, Lf/a/a/d/f;->b(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/Theme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lir/cafebazaar/inline/platform/InlineApplication;->a(Lir/cafebazaar/inline/ui/Theme;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lf/a/a/e/l;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineUser;->b()Lir/cafebazaar/inline/ux/permission/PermissionManager;

    move-result-object v3

    .line 9
    invoke-interface {v1, v0}, Lf/a/a/d/f;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b(Ljava/util/List;)V

    .line 10
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    .line 12
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    const/high16 v4, 0x4000000

    .line 13
    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 14
    invoke-virtual {p0}, Lf/a/a/e/l;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v4

    invoke-virtual {v4}, Lir/cafebazaar/inline/ui/Theme;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 15
    :cond_2
    iget-object v3, p0, Lf/a/a/e/C;->da:Lf/a/a/g/d/b/f;

    invoke-interface {v1, v0}, Lf/a/a/d/f;->g(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lf/a/a/g/d/b/f;->a(Ljava/util/Collection;)V

    .line 16
    invoke-interface {v1, v0}, Lf/a/a/d/f;->e(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/inflaters/PageInflater;

    move-result-object v0

    check-cast v0, Lf/a/a/e/b/X;

    .line 17
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->c()V

    .line 19
    :cond_3
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {p0}, Lf/a/a/e/l;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lf/a/a/g/d/d;->g()Lir/cafebazaar/inline/ux/flow/FlowSnapshot;

    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lir/cafebazaar/inline/ux/flow/FlowSnapshot;->a(Ljava/lang/String;)V

    .line 22
    :cond_4
    invoke-virtual {v0}, Lf/a/a/e/b/X;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf/a/a/e/C;->aa:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lf/a/a/e/b/X;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf/a/a/e/C;->ba:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lf/a/a/e/b/X;->c()Z

    move-result v1

    iput-boolean v1, p0, Lf/a/a/e/C;->ca:Z

    .line 25
    invoke-virtual {v0, p1, p2, p0}, Lf/a/a/e/b/X;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->player_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lf/a/a/e/C;->Z:Landroid/widget/LinearLayout;

    .line 27
    iget-object v0, p0, Lf/a/a/e/C;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf/a/a/e/C;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    iget-object v1, p0, Lf/a/a/e/C;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->video_play_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lf/a/a/e/x;

    invoke-direct {v1, p0}, Lf/a/a/e/x;-><init>(Lf/a/a/e/C;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 32
    new-instance v1, Lf/a/a/e/y;

    invoke-direct {v1, p0, v0}, Lf/a/a/e/y;-><init>(Lf/a/a/e/C;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    if-eqz v2, :cond_5

    .line 33
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->inline_lyt_submit_comment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 34
    :cond_5
    iget-object v0, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v1, Lf/a/a/e;->inline_bt_video_page_comment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    sget v1, Lf/a/a/d;->inline_ic_send_normal:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    goto :goto_1

    .line 37
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v1

    sget v2, Lf/a/a/b;->inline_submit_comment_normal:I

    invoke-static {v1, v2}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v1

    .line 38
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, v1}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 39
    iget-object v2, p0, Lf/a/a/e/C;->Y:Landroid/view/View;

    sget v3, Lf/a/a/e;->inline_et_video_page_comment:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lir/cafebazaar/inline/ui/SingleLineEditText;

    .line 40
    new-instance v3, Lf/a/a/e/z;

    invoke-direct {v3, p0, v0}, Lf/a/a/e/z;-><init>(Lf/a/a/e/C;Landroidx/appcompat/widget/AppCompatImageView;)V

    invoke-virtual {v2, v3}, Lir/cafebazaar/inline/ui/SingleLineEditText;->setSingleLineEditTextCommunicator(Lir/cafebazaar/inline/ui/SingleLineEditText$a;)V

    .line 41
    new-instance v3, Lf/a/a/e/A;

    invoke-direct {v3, p0, v2, v0, v1}, Lf/a/a/e/A;-><init>(Lf/a/a/e/C;Lir/cafebazaar/inline/ui/SingleLineEditText;Landroidx/appcompat/widget/AppCompatImageView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    new-instance v1, Lf/a/a/e/B;

    invoke-direct {v1, p0, v2}, Lf/a/a/e/B;-><init>(Lf/a/a/e/C;Lir/cafebazaar/inline/ui/SingleLineEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lf/a/a/e/C;->Y:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 45
    new-instance v1, Lf/a/a/e/j;

    sget v2, Lf/a/a/g;->error_general:I

    .line 46
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lf/a/a/g;->error_try_again_later:I

    .line 47
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lf/a/a/g/c;->f()V

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lf/a/a/e/C;->ea:Landroid/view/View;

    return-void
.end method

.method public aa()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/C;->ea:Landroid/view/View;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    invoke-static {p1}, Lf/a/a/f/c;->a(I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lf/a/a/g/d/b/f;

    invoke-direct {p1, p0}, Lf/a/a/g/d/b/f;-><init>(Lf/a/a/e/g;)V

    iput-object p1, p0, Lf/a/a/e/C;->da:Lf/a/a/g/d/b/f;

    return-void
.end method

.method public oa()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->oa()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public sa()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->sa()V

    .line 2
    iget-object v0, p0, Lf/a/a/e/C;->da:Lf/a/a/g/d/b/f;

    invoke-virtual {v0}, Lf/a/a/g/d/b/f;->b()V

    return-void
.end method

.method public ta()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ta()V

    .line 2
    iget-object v0, p0, Lf/a/a/e/C;->da:Lf/a/a/g/d/b/f;

    invoke-virtual {v0}, Lf/a/a/g/d/b/f;->a()V

    return-void
.end method
