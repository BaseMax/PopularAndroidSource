.class public abstract Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ApptentiveBaseFragment.java"

# interfaces
.implements Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;",
        ">",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;"
    }
.end annotation


# static fields
.field public static final EVENT_NAME_LAUNCH:Ljava/lang/String; = "launch"


# instance fields
.field private bShownAsModal:Z

.field private fragmentImplClass:Ljava/lang/Class;

.field private fragmentMenuItems:Ljava/util/List;

.field private final fragmentName:Ljava/lang/String;

.field protected hasLaunched:Z

.field private hostField:Ljava/lang/reflect/Field;

.field protected interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isChangingConfigurations:Z

.field private onTransitionListener:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;

.field private retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

.field protected sectionTitle:Ljava/lang/String;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarLayoutId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 77
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentMenuItems:Ljava/util/List;

    :try_start_0
    const-string v0, "androidx.fragment.app.FragmentManagerImpl"

    .line 95
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentImplClass:Ljava/lang/Class;

    .line 96
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentImplClass:Ljava/lang/Class;

    const-string v1, "mHost"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hostField:Ljava/lang/reflect/Field;

    .line 97
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hostField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FragmentManagerImpl.mHost is found due to the change of Android SDK, this workaround doesn\'t work any more. See the issue at https://code.google.com/p/android/issues/detail?id=74222"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FragmentManagerImpl is renamed due to the change of Android SDK, this workaround doesn\'t work any more. See the issue at https://code.google.com/p/android/issues/detail?id=74222"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static logException(Ljava/lang/Exception;)V
    .locals 0

    .line 611
    invoke-static {p0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static popBackStack(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 567
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method public static popBackStackImmediate(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public static removeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static replaceFragment(Landroidx/fragment/app/FragmentManager;ILandroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    .line 548
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 551
    sget p5, Lcom/apptentive/android/sdk/R$anim;->apptentive_slide_right_in:I

    sget v1, Lcom/apptentive/android/sdk/R$anim;->apptentive_slide_left_out:I

    sget v2, Lcom/apptentive/android/sdk/R$anim;->apptentive_slide_left_in:I

    sget v3, Lcom/apptentive/android/sdk/R$anim;->apptentive_slide_right_out:I

    invoke-virtual {v0, p5, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 554
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 555
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 556
    invoke-virtual {v0, p4}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 559
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    if-eqz p6, :cond_2

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :cond_2
    return-void
.end method

.method private replaceFragmentManagerHost(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentHostCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hostField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private showToolbarElevationLollipop(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 506
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 511
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/apptentive/android/sdk/util/Util;->dipsToPixels(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 520
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/apptentive/android/sdk/util/Util;->dipsToPixels(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private showToolbarElevationPreLollipop(Z)V
    .locals 2

    .line 530
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$id;->apptentive_vp_container:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/apptentive/android/sdk/R$drawable;->apptentive_actionbar_compat_shadow:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 539
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 541
    :cond_1
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateHosts(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentHostCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->replaceFragmentManagerHost(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentHostCallback;)V

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 192
    :try_start_0
    const-class v1, Landroidx/fragment/app/Fragment;

    const-string v2, "mHost"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    .line 199
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->updateHosts(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentHostCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected attachFragmentMenuListeners(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected dispatchOnMainQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V
    .locals 1

    .line 607
    invoke-static {}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->mainQueue()Lcom/apptentive/android/sdk/util/threading/DispatchQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/util/threading/DispatchQueue;->dispatchAsync(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method public varargs engage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/apptentive/android/sdk/model/ExtendedData;",
            ")V"
        }
    .end annotation

    .line 581
    new-instance v9, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lcom/apptentive/android/sdk/model/ExtendedData;)V

    const-string v0, "engage"

    invoke-static {v9, v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method public engageInternal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, p1, v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public engageInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 594
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$2;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "engage"

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchConversationTask(Lcom/apptentive/android/sdk/conversation/ConversationDispatchTask;Ljava/lang/String;)V

    return-void
.end method

.method protected exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;
    .locals 1

    .line 501
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->isShouldAddToEngage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cause"

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveViewExitType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apptentive/android/sdk/util/StringUtils;->asJson(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getActivity(Landroidx/fragment/app/Fragment;)Landroid/app/Activity;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 442
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    return-object p1
.end method

.method protected getBundle()Landroid/os/Bundle;
    .locals 3

    .line 409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    iget v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "toolbarLayoutId"

    .line 412
    iget v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getConversation()Lcom/apptentive/android/sdk/conversation/ConversationProxy;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 603
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentName:Ljava/lang/String;

    return-object v0
.end method

.method protected getMenuResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->sectionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToolbarNavigationContentDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbarNavigationIconResourceId(Landroid/content/res/Resources$Theme;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->isChangingConfigurations:Z

    return v0
.end method

.method public isShownAsModalDialog()Z
    .locals 3

    .line 451
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "showAsModal"

    .line 454
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .line 158
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_0

    .line 164
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hostField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentHostCallback;

    invoke-direct {p0, v0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->updateHosts(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentHostCallback;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->retainedChildFragmentManager:Landroidx/fragment/app/FragmentManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.onAttach()"

    .line 174
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {v0, v1, p1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "toolbarLayoutId"

    .line 235
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    const-string/jumbo v3, "showAsModal"

    .line 236
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->bShownAsModal:Z

    const-string v3, "interaction"

    .line 237
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 239
    invoke-static {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction$Factory;->parseInteraction(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    if-eqz v2, :cond_2

    .line 245
    iget-boolean v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->bShownAsModal:Z

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->sectionTitle:Ljava/lang/String;

    .line 252
    :cond_2
    :goto_0
    iget v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getMenuResourceId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    invoke-virtual {p0, v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->setHasOptionsMenu(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "has_launched"

    .line 257
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hasLaunched:Z

    .line 259
    :cond_4
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hasLaunched:Z

    if-nez p1, :cond_5

    .line 260
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hasLaunched:Z

    .line 261
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->sendLaunchEvent(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v2, "Exception in %s.onCreate()"

    .line 264
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p1, v2, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    const/4 v0, 0x0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getMenuResourceId()I

    move-result v1

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 392
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveToolbarTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$attr;->colorControlNormal:I

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/Util;->getThemeColor(Landroid/content/res/Resources$Theme;I)I

    move-result v1

    const/4 v2, 0x0

    .line 393
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 394
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 397
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->attachFragmentMenuListeners(Landroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Exception in %s.onCreateOptionsMenu()"

    const/4 v3, 0x1

    .line 402
    new-array v3, v3, [Ljava/lang/Object;

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    .line 405
    :goto_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 5

    .line 366
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 376
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.onDestroyView()"

    const/4 v2, 0x1

    .line 380
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 217
    :try_start_0
    const-class v0, Landroidx/fragment/app/Fragment;

    const-string v1, "mChildFragmentManager"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 2

    .line 478
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 483
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 490
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onInteractionUpdated(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 339
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->removeInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.onPause()"

    const/4 v2, 0x1

    .line 341
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    .line 344
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 328
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->addInteractionUpdateListener(Lcom/apptentive/android/sdk/module/engagement/interaction/InteractionManager$InteractionUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.onResume()"

    const/4 v2, 0x1

    .line 330
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    .line 333
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "has_launched"

    .line 152
    iget-boolean v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->hasLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 353
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 355
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->isChangingConfigurations:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.onStop()"

    const/4 v2, 0x1

    .line 359
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 283
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 286
    :try_start_0
    iget p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    if-eqz p2, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbarLayoutId:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 288
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getMenuResourceId()I

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz p2, :cond_2

    .line 289
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 292
    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 293
    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->getMenuResourceId()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 297
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->attachFragmentMenuListeners(Landroid/view/Menu;)V

    .line 300
    iget-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p2

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentMenuItems:Ljava/util/List;

    .line 303
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getApptentiveToolbarTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$attr;->colorControlNormal:I

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/Util;->getThemeColor(Landroid/content/res/Resources$Theme;I)I

    move-result v1

    const/4 v2, 0x0

    .line 304
    :goto_1
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 305
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    iget-object v4, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->fragmentMenuItems:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 312
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "Exception in %s.onViewCreated()"

    const/4 v1, 0x1

    .line 319
    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {p2, v0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-static {p2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method protected sendLaunchEvent(Landroid/app/Activity;)V
    .locals 0

    .line 276
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    if-eqz p1, :cond_0

    const-string p1, "launch"

    .line 277
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->engageInternal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnTransitionListener(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onTransitionListener:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;

    return-void
.end method

.method public showToolbarElevation(Z)V
    .locals 2

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 465
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->showToolbarElevationLollipop(Z)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->showToolbarElevationPreLollipop(Z)V

    :goto_0
    return-void
.end method

.method public transit()V
    .locals 5

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onTransitionListener:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->onTransitionListener:Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;

    invoke-interface {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment$OnFragmentTransitionListener;->onFragmentTransition(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception in %s.transit()"

    const/4 v2, 0x1

    .line 143
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected updateMenuVisibility()V
    .locals 0

    return-void
.end method
