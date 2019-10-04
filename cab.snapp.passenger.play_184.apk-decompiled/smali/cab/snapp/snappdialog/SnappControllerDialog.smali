.class public Lcab/snapp/snappdialog/SnappControllerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/snappdialog/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/snappdialog/SnappControllerDialog$b;,
        Lcab/snapp/snappdialog/SnappControllerDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/fragment/app/FragmentManager;

.field private b:Landroidx/fragment/app/Fragment;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, "Snapp Controller Dialog Tag"

    .line 44
    iput-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->f:Ljava/lang/Integer;

    return-void
.end method

.method private a()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->a:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "Snapp Controller Dialog Tag"

    .line 213
    invoke-virtual {p0, v0, v1}, Lcab/snapp/snappdialog/SnappControllerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/SnappControllerDialog;)V
    .locals 1

    .line 2181
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3118
    iput-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->f:Ljava/lang/Integer;

    .line 2170
    iget-boolean v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->e:Z

    if-eqz v0, :cond_0

    .line 2172
    invoke-direct {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/SnappControllerDialog;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2138
    iput-object p1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/SnappControllerDialog;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->a:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/SnappControllerDialog;Ljava/lang/String;)V
    .locals 0

    .line 2148
    iput-object p1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/SnappControllerDialog;Z)V
    .locals 0

    .line 2158
    iput-boolean p1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->e:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 383
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->dismissAllowingStateLoss()V

    return-void

    .line 373
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getController()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 85
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->b:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getControllerTag()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogId()Ljava/lang/Integer;
    .locals 1

    .line 75
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public isShowOnBuild()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->e:Z

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 349
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 350
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1230
    iget-object p1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->b:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_3

    .line 1234
    instance-of v0, p1, Lcab/snapp/snappdialog/SnappControllerDialog$b;

    if-eqz v0, :cond_1

    .line 1236
    check-cast p1, Lcab/snapp/snappdialog/SnappControllerDialog$b;

    invoke-interface {p1, p0}, Lcab/snapp/snappdialog/SnappControllerDialog$b;->setCancelListener(Lcab/snapp/snappdialog/b/a;)V

    .line 1238
    :cond_1
    iget-object p1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1240
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcab/snapp/snappdialog/a$e;->dialog_controller_base_content_frame:I

    iget-object v1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    .line 1244
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcab/snapp/snappdialog/a$e;->dialog_controller_base_content_frame:I

    iget-object v1, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 309
    sget p3, Lcab/snapp/snappdialog/a$f;->dialog_controller_base_layout:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 310
    sget p2, Lcab/snapp/snappdialog/a$e;->dialog_controller_base_content_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcab/snapp/snappdialog/SnappControllerDialog;->g:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 317
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 332
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x15

    if-lt p2, v1, :cond_0

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 338
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 340
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    :cond_1
    return-void
.end method

.method public show()V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->dismiss()V

    .line 222
    invoke-direct {p0}, Lcab/snapp/snappdialog/SnappControllerDialog;->a()V

    return-void
.end method
