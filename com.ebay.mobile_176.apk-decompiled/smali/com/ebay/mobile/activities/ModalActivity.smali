.class public Lcom/ebay/mobile/activities/ModalActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "ModalActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# static fields
.field public static final EXTRA_SOURCE_VIEW_LOCATION:Ljava/lang/String; = "source_view_location"

.field public static final IS_PARENT_ACTIVITY_MODAL:Ljava/lang/String; = "is_parent_activity_modal"


# instance fields
.field private animateOutX:F

.field private animateOutY:F

.field private backButton:Landroid/widget/ImageButton;

.field private closeButton:Landroid/widget/ImageButton;

.field private isParentActivityModal:Z

.field private modalBackground:Landroid/view/View;

.field private modalPosX:I

.field private modalPosY:I

.field private modalToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalBackground:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 36
    iput-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    .line 37
    iput-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalPosX:I

    .line 39
    iput v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalPosY:I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/ebay/mobile/activities/ModalActivity;->animateOutX:F

    .line 41
    iput v1, p0, Lcom/ebay/mobile/activities/ModalActivity;->animateOutY:F

    .line 42
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->isParentActivityModal:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ebay/mobile/activities/ModalActivity;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalPosX:I

    return p1
.end method

.method static synthetic access$102(Lcom/ebay/mobile/activities/ModalActivity;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalPosY:I

    return p1
.end method

.method private setDefaultToolbarTitle()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ModalActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->setToolbarTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 266
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->setToolbarTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addMenuItem(II)V
    .locals 0

    .line 320
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/activities/ModalActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/activities/ModalActivity;->addMenuItem(ILjava/lang/String;)V

    return-void
.end method

.method public addMenuItem(ILjava/lang/String;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    .line 312
    invoke-interface {v0, v1, p1, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 313
    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 315
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public enableMenuItem(IZ)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 326
    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a0a19

    .line 228
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ModalActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_parent_activity_modal"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/ModalActivity;->isParentActivityModal:Z

    const p1, 0x7f0a0a1a

    .line 95
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Lcom/ebay/mobile/activities/ModalActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/activities/ModalActivity$2;-><init>(Lcom/ebay/mobile/activities/ModalActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public setBackButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 5

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->setToolbarFlags(I)V

    .line 49
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ModalActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d02a4

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0a19

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ModalActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ModalActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 53
    invoke-super {p0, v0}, Lcom/ebay/mobile/activities/CoreActivity;->setContentView(Landroid/view/View;)V

    const p1, 0x7f0a0a18

    .line 55
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalBackground:Landroid/view/View;

    const p1, 0x7f0a133d

    .line 59
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 60
    iget-object p1, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    const p1, 0x7f0a0a1a

    .line 66
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance p1, Lcom/ebay/mobile/activities/ModalActivity$1;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/activities/ModalActivity$1;-><init>(Lcom/ebay/mobile/activities/ModalActivity;)V

    const v0, 0x7f0a1336

    .line 76
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    .line 77
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a1338

    .line 79
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ModalActivity;->showCloseButton()V

    .line 85
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ModalActivity;->setDefaultToolbarTitle()V

    return-void
.end method

.method public setMenuItemVisibility(IZ)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 334
    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 336
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ModalActivity;->setToolbarTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ModalActivity;->setToolbarTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setToolbarTitle(I)V
    .locals 1

    const v0, 0x7f0a1337

    .line 246
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 249
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->setTitle(I)V

    return-void
.end method

.method public setToolbarTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const v0, 0x7f0a1337

    .line 254
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ModalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->modalToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showBackButton()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showCloseButton()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->closeButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity;->backButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "is_parent_activity_modal"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "is_parent_activity_modal"

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    const-string v0, "is_parent_activity_modal"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "is_parent_activity_modal"

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
