.class public final Lcab/snapp/snappdialog/b;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/b$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Landroid/view/View$OnClickListener;

.field private F:Lcab/snapp/snappdialog/b/b;

.field private G:Lcab/snapp/snappdialog/b/b;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcab/snapp/snappdialog/dialogViews/a/c;

.field private l:Z

.field private m:Ljava/lang/Integer;

.field private n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

.field private o:Z

.field private p:Landroidx/appcompat/widget/AppCompatButton;

.field private q:Landroidx/appcompat/widget/AppCompatButton;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/widget/FrameLayout;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/widget/ImageView;

.field private w:Landroidx/appcompat/widget/AppCompatTextView;

.field private x:Landroidx/appcompat/widget/AppCompatTextView;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 136
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->a:Z

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->b:Ljava/lang/String;

    const/16 v1, 0xc9

    .line 85
    iput v1, p0, Lcab/snapp/snappdialog/b;->f:I

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lcab/snapp/snappdialog/b;->g:Z

    .line 93
    iput v1, p0, Lcab/snapp/snappdialog/b;->h:I

    .line 97
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->i:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->j:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    .line 109
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->l:Z

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->m:Ljava/lang/Integer;

    .line 124
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->o:Z

    .line 1645
    new-instance p1, Lcab/snapp/snappdialog/b/b;

    iget-object v0, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    invoke-direct {p1, v0, p0}, Lcab/snapp/snappdialog/b/b;-><init>(Landroid/view/View$OnClickListener;Lcab/snapp/snappdialog/b;)V

    iput-object p1, p0, Lcab/snapp/snappdialog/b;->F:Lcab/snapp/snappdialog/b/b;

    .line 1647
    new-instance p1, Lcab/snapp/snappdialog/b/b;

    iget-object v0, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    invoke-direct {p1, v0, p0}, Lcab/snapp/snappdialog/b/b;-><init>(Landroid/view/View$OnClickListener;Lcab/snapp/snappdialog/b;)V

    iput-object p1, p0, Lcab/snapp/snappdialog/b;->G:Lcab/snapp/snappdialog/b/b;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcab/snapp/snappdialog/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/b;)Lcab/snapp/snappdialog/dialogViews/a/c;
    .locals 0

    .line 53
    iget-object p0, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/snappdialog/b;I)Ljava/lang/String;
    .locals 0

    .line 2069
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 859
    sget v0, Lcab/snapp/snappdialog/a$e;->dialog_button_positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->p:Landroidx/appcompat/widget/AppCompatButton;

    .line 860
    sget v0, Lcab/snapp/snappdialog/a$e;->dialog_button_negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object p1, p0, Lcab/snapp/snappdialog/b;->q:Landroidx/appcompat/widget/AppCompatButton;

    .line 861
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 863
    iget-object p1, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/b;Lcab/snapp/snappdialog/dialogViews/a/c;)V
    .locals 0

    .line 2398
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V
    .locals 0

    .line 2358
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 2447
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->i:Ljava/lang/String;

    .line 2448
    iget-object p1, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    .line 2450
    iput-object p2, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/b;Z)V
    .locals 0

    .line 7532
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->l:Z

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/b;)V
    .locals 1

    .line 4459
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->F:Lcab/snapp/snappdialog/b/b;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/b;I)V
    .locals 0

    .line 2378
    iput p1, p0, Lcab/snapp/snappdialog/b;->d:I

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V
    .locals 0

    .line 2388
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 3470
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->j:Ljava/lang/String;

    .line 3471
    iget-object p1, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    .line 3473
    iput-object p2, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/snappdialog/b;Z)V
    .locals 0

    .line 7542
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->o:Z

    return-void
.end method

.method static synthetic c(Lcab/snapp/snappdialog/b;)V
    .locals 1

    .line 4482
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->G:Lcab/snapp/snappdialog/b/b;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic c(Lcab/snapp/snappdialog/b;I)V
    .locals 0

    .line 5436
    iput p1, p0, Lcab/snapp/snappdialog/b;->h:I

    return-void
.end method

.method static synthetic c(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V
    .locals 0

    .line 2512
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcab/snapp/snappdialog/b;)V
    .locals 6

    .line 7656
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7658
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7659
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 7722
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8338
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->m:Ljava/lang/Integer;

    .line 8702
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9694
    sget v3, Lcab/snapp/snappdialog/a$f;->dialog_base_layout:I

    const/4 v4, 0x0

    .line 8702
    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    .line 8704
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_content_frame:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->s:Landroid/widget/FrameLayout;

    .line 8705
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_top_image:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->t:Landroid/widget/ImageView;

    .line 8706
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_icon_layout:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->u:Landroid/widget/FrameLayout;

    .line 8707
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_icon:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->v:Landroid/widget/ImageView;

    .line 8708
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_icon_font:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8709
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_title:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8710
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_button_area_layout:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->y:Landroid/widget/FrameLayout;

    .line 8711
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_vertical_button_area_green:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    .line 8712
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_horizontal_button_area_green:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    .line 8713
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_vertical_button_area_dark:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    .line 8714
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    sget v3, Lcab/snapp/snappdialog/a$e;->dialog_base_horizontal_button_area_dark:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    .line 9731
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9733
    iget v0, p0, Lcab/snapp/snappdialog/b;->h:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->o:Z

    if-eqz v0, :cond_1

    .line 9735
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcab/snapp/snappdialog/a$b;->cherry:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 9737
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 9738
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9747
    :cond_2
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->a:Z

    if-nez v0, :cond_4

    .line 9751
    iget v0, p0, Lcab/snapp/snappdialog/b;->d:I

    if-eqz v0, :cond_3

    .line 9753
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9754
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9755
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->v:Landroid/widget/ImageView;

    iget v3, p0, Lcab/snapp/snappdialog/b;->d:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9757
    :cond_3
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9759
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9760
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 9761
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->w:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 9762
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9764
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcab/snapp/snappdialog/a$b;->green_blue:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 9783
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->a:Z

    if-nez v0, :cond_5

    .line 9787
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9789
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9790
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->with(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/h;->load(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v0

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/g;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/j;

    .line 9939
    :cond_5
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    if-eqz v0, :cond_13

    .line 9943
    iput-object v4, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9944
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/c;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 9980
    :pswitch_0
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9981
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappItemPickerDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    goto/16 :goto_1

    .line 9976
    :pswitch_1
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9977
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappDatePickerDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    goto/16 :goto_1

    .line 9984
    :pswitch_2
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9985
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappLoadingDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9986
    iput-boolean v1, p0, Lcab/snapp/snappdialog/b;->a:Z

    goto/16 :goto_1

    .line 9970
    :pswitch_3
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9971
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9972
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    check-cast v3, Lcab/snapp/snappdialog/dialogViews/a/d;

    invoke-virtual {v3}, Lcab/snapp/snappdialog/dialogViews/a/d;->getDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Lcab/snapp/snappdialog/dialogViews/view/SnappInputTextDialogView;->setDirection(I)V

    goto/16 :goto_1

    .line 9964
    :pswitch_4
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9965
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappCheckboxListDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappCheckboxListDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9966
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappCheckboxListDialogView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    check-cast v3, Lcab/snapp/snappdialog/dialogViews/a/a;

    invoke-virtual {v3}, Lcab/snapp/snappdialog/dialogViews/a/a;->getDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Lcab/snapp/snappdialog/dialogViews/view/SnappCheckboxListDialogView;->setDirection(I)V

    goto :goto_1

    .line 9958
    :pswitch_5
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9959
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9960
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    check-cast v3, Lcab/snapp/snappdialog/dialogViews/a/i;

    invoke-virtual {v3}, Lcab/snapp/snappdialog/dialogViews/a/i;->getDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Lcab/snapp/snappdialog/dialogViews/view/SnappRadioListDialogView;->setDirection(I)V

    goto :goto_1

    .line 9952
    :pswitch_6
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9953
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageListDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageListDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9954
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageListDialogView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    check-cast v3, Lcab/snapp/snappdialog/dialogViews/a/h;

    invoke-virtual {v3}, Lcab/snapp/snappdialog/dialogViews/a/h;->getDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageListDialogView;->setDirection(I)V

    goto :goto_1

    .line 9947
    :pswitch_7
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9948
    invoke-static {}, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->getLayout()I

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;

    iput-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    .line 9949
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    check-cast v0, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    check-cast v3, Lcab/snapp/snappdialog/dialogViews/a/g;

    invoke-virtual {v3}, Lcab/snapp/snappdialog/dialogViews/a/g;->getDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Lcab/snapp/snappdialog/dialogViews/view/SnappMessageDialogView;->setDirection(I)V

    .line 9989
    :goto_1
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    if-eqz v0, :cond_7

    .line 9991
    iget-object v3, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    invoke-virtual {v0, v3}, Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;->setData(Lcab/snapp/snappdialog/dialogViews/a/c;)V

    .line 9992
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->s:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 9994
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 9996
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9998
    :cond_6
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->s:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcab/snapp/snappdialog/b;->n:Lcab/snapp/snappdialog/dialogViews/view/SnappDialogViewType;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10800
    :cond_7
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->a:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_8

    .line 10802
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10803
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10804
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10805
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 10809
    :cond_8
    iget v0, p0, Lcab/snapp/snappdialog/b;->h:I

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 10812
    :cond_9
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->g:Z

    if-eqz v0, :cond_a

    .line 10814
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10815
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10816
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10817
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10818
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcab/snapp/snappdialog/b;->a(Landroid/view/View;)V

    goto :goto_2

    .line 10822
    :cond_a
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10823
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10824
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10825
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10826
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcab/snapp/snappdialog/b;->a(Landroid/view/View;)V

    goto :goto_2

    .line 10830
    :cond_b
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->g:Z

    if-eqz v0, :cond_c

    .line 10832
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10833
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10834
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10835
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10836
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcab/snapp/snappdialog/b;->a(Landroid/view/View;)V

    goto :goto_2

    .line 10840
    :cond_c
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10841
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10842
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10843
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10844
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->B:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcab/snapp/snappdialog/b;->a(Landroid/view/View;)V

    .line 10873
    :goto_2
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->a:Z

    if-nez v0, :cond_10

    .line 10877
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->p:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v0, :cond_e

    .line 10879
    iget-object v1, p0, Lcab/snapp/snappdialog/b;->i:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 10881
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 10882
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->p:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 10884
    :cond_d
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->p:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10886
    :cond_e
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->q:Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v0, :cond_10

    .line 10888
    iget-object v1, p0, Lcab/snapp/snappdialog/b;->j:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 10890
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 10891
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->q:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcab/snapp/snappdialog/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 10893
    :cond_f
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->q:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10902
    :cond_10
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->a:Z

    if-nez v0, :cond_11

    .line 10906
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->g:Z

    if-eqz v0, :cond_11

    .line 10910
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->p:Landroidx/appcompat/widget/AppCompatButton;

    .line 10911
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10912
    iget-object v1, p0, Lcab/snapp/snappdialog/b;->q:Landroidx/appcompat/widget/AppCompatButton;

    .line 10913
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 10914
    iget v2, p0, Lcab/snapp/snappdialog/b;->f:I

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40c00000    # 6.0f

    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 10925
    :pswitch_8
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10926
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    .line 10921
    :pswitch_9
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10922
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_3

    :pswitch_a
    const/high16 v2, 0x40a00000    # 5.0f

    .line 10917
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10918
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10929
    :goto_3
    iget-object v2, p0, Lcab/snapp/snappdialog/b;->p:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10930
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->q:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7670
    :cond_11
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/snappdialog/b;->setContentView(Landroid/view/View;)V

    .line 7671
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->l:Z

    if-eqz v0, :cond_12

    .line 7673
    invoke-virtual {p0}, Lcab/snapp/snappdialog/b;->show()V

    :cond_12
    return-void

    .line 9941
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "View type should be implemented for dialog"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic d(Lcab/snapp/snappdialog/b;I)V
    .locals 0

    .line 6426
    iput p1, p0, Lcab/snapp/snappdialog/b;->f:I

    return-void
.end method

.method static synthetic d(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V
    .locals 0

    .line 3522
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcab/snapp/snappdialog/b;I)V
    .locals 1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7414
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->g:Z

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 7411
    iput-boolean p1, p0, Lcab/snapp/snappdialog/b;->g:Z

    return-void
.end method

.method static synthetic e(Lcab/snapp/snappdialog/b;Ljava/lang/String;)V
    .locals 0

    .line 5368
    iput-object p1, p0, Lcab/snapp/snappdialog/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDialogDataType()Lcab/snapp/snappdialog/dialogViews/a/c;
    .locals 1

    .line 295
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->k:Lcab/snapp/snappdialog/dialogViews/a/c;

    return-object v0
.end method

.method public final getDialogId()Ljava/lang/Integer;
    .locals 1

    .line 175
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIconFont()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconRes()I
    .locals 1

    .line 205
    iget v0, p0, Lcab/snapp/snappdialog/b;->d:I

    return v0
.end method

.method public final getNegativeButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 265
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getNegativeButtonText()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getPositiveButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 255
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 684
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getSnappDialogButtonProportion()I
    .locals 1

    .line 225
    iget v0, p0, Lcab/snapp/snappdialog/b;->f:I

    return v0
.end method

.method public final getSnappDialogTheme()I
    .locals 1

    .line 245
    iget v0, p0, Lcab/snapp/snappdialog/b;->h:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTopImageUrl()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isErrorInformation()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->o:Z

    return v0
.end method

.method public final isHorizontalButtonMode()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->g:Z

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->a:Z

    return v0
.end method

.method public final isShouldShowOnBuild()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcab/snapp/snappdialog/b;->l:Z

    return v0
.end method

.method public final releaseMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 1039
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->D:Landroid/view/View$OnClickListener;

    .line 1040
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->E:Landroid/view/View$OnClickListener;

    .line 1041
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->F:Lcab/snapp/snappdialog/b/b;

    .line 1042
    iput-object v0, p0, Lcab/snapp/snappdialog/b;->G:Lcab/snapp/snappdialog/b/b;

    return-void
.end method

.method public final show()V
    .locals 2

    .line 1079
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1080
    iget-object v0, p0, Lcab/snapp/snappdialog/b;->r:Landroid/view/ViewGroup;

    new-instance v1, Lcab/snapp/snappdialog/b$1;

    invoke-direct {v1, p0}, Lcab/snapp/snappdialog/b$1;-><init>(Lcab/snapp/snappdialog/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
