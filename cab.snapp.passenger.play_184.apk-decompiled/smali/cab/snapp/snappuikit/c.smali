.class public final Lcab/snapp/snappuikit/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/LinearLayout;

.field private final c:Landroidx/appcompat/widget/AppCompatImageView;

.field private d:Landroid/content/Context;

.field private e:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/c;->d:Landroid/content/Context;

    .line 33
    sget v0, Lcab/snapp/snappuikit/a$f;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcab/snapp/snappuikit/c;->e:Landroidx/appcompat/widget/Toolbar;

    .line 34
    sget v0, Lcab/snapp/snappuikit/a$f;->toolbar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcab/snapp/snappuikit/c;->a:Landroid/widget/TextView;

    .line 35
    sget v0, Lcab/snapp/snappuikit/a$f;->toolbar_back_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcab/snapp/snappuikit/c;->b:Landroid/widget/LinearLayout;

    .line 36
    sget v0, Lcab/snapp/snappuikit/a$f;->toolbar_back_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcab/snapp/snappuikit/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method


# virtual methods
.method public final getToolbar()Landroidx/appcompat/widget/Toolbar;
    .locals 1

    .line 135
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->e:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final setBackButton(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 82
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->b:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setBackButton(ILandroid/view/View$OnClickListener;I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 98
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcab/snapp/snappuikit/c;->d:Landroid/content/Context;

    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->b:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setMenu(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 70
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->e:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public final setOnTitleClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/snappuikit/c;->d:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 4

    .line 46
    iget-object v0, p0, Lcab/snapp/snappuikit/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcab/snapp/snappuikit/c;->e:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    .line 1113
    :goto_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1115
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1116
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1118
    check-cast v1, Landroid/widget/TextView;

    .line 1119
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1121
    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1146
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/iran_sans_mobile_medium.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
