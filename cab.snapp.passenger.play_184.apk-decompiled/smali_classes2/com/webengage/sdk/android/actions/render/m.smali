.class public Lcom/webengage/sdk/android/actions/render/m;
.super Landroid/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/actions/render/m$b;,
        Lcom/webengage/sdk/android/actions/render/m$a;,
        Lcom/webengage/sdk/android/actions/render/m$c;
    }
.end annotation


# instance fields
.field private a:Lcom/webengage/sdk/android/actions/render/m$c;

.field private b:Lorg/a/c;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->a:Lcom/webengage/sdk/android/actions/render/m$c;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/m;->c:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->f:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->g:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->h:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->i:Landroid/os/Handler;

    iput v1, p0, Lcom/webengage/sdk/android/actions/render/m;->j:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/m;->k:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/m;->l:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/m;->m:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/webengage/sdk/android/actions/render/m;->n:I

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->p:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/m;->q:Z

    iput-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/render/m;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->f:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method private a(Landroid/view/Window;I)V
    .locals 11

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const/4 v1, 0x0

    const-string v2, "allowLandscape"

    invoke-virtual {v0, v2, v1}, Lorg/a/c;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-nez v0, :cond_1

    if-ne p2, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget p2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const/16 v7, 0x1f4

    const-string v8, "responsiveThreshold"

    invoke-virtual {v0, v8, v7}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const-string v7, "logoHeight"

    const-string v8, "height"

    const-string v9, "width"

    const-string v10, "RenderDialogFragment"

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    const-string p2, "Portrait"

    invoke-static {v10, p2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const-string v0, "portrait"

    invoke-virtual {p2, v0}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, v9, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v0, v0

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v3

    float-to-int v3, v0

    :cond_2
    invoke-virtual {p2, v8, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    :goto_0
    int-to-float p2, p2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    invoke-virtual {v0, v7, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v4

    add-float/2addr p2, v0

    float-to-int v4, p2

    goto :goto_1

    :cond_3
    const-string p2, "Landscape"

    invoke-static {v10, p2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const-string v0, "landscape"

    invoke-virtual {p2, v0}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2, v9, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    int-to-float v0, v0

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v3

    float-to-int v3, v0

    :cond_4
    invoke-virtual {p2, v8, v1}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getInAppType()Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    move-result-object p2

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/m;->c:Z

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "diff = "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "diff by resource = "

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_7

    const/16 v7, 0x18

    goto :goto_3

    :cond_7
    const/16 v7, 0x19

    :goto_3
    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v0

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "diff by constant = "

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_4
    sget-object v7, Lcom/webengage/sdk/android/actions/render/m$3;->a:[I

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    if-eq v7, v6, :cond_a

    const/4 p2, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    sget-object v5, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->HEADER:Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;

    invoke-virtual {p2, v5}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData$InAppType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget p2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int p2, p2

    div-int/2addr p2, v6

    div-int/lit8 v2, v4, 0x2

    add-int/2addr p2, v2

    add-int/2addr p2, v0

    goto :goto_5

    :cond_b
    iget p2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr p2, v6

    div-int/lit8 v0, v4, 0x2

    sub-int/2addr p2, v0

    :goto_5
    invoke-virtual {p1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    const-string v0, "x= 0"

    invoke-static {v10, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "y= "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/render/m;Landroid/view/Window;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/webengage/sdk/android/actions/render/m;->a(Landroid/view/Window;I)V

    return-void
.end method

.method static synthetic a(Lcom/webengage/sdk/android/actions/render/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/webengage/sdk/android/actions/render/m;->c:Z

    return p0
.end method

.method static synthetic b(Lcom/webengage/sdk/android/actions/render/m;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/InAppNotificationData;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    return-object p0
.end method

.method static synthetic d(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->g:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic e(Lcom/webengage/sdk/android/actions/render/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->d:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .locals 8

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/m;->n:I

    const-string v1, "experiment_id"

    const-string v2, "id"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-static {v3, v0}, Lcom/webengage/sdk/android/utils/e;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    const-wide/16 v6, 0x14

    if-lt v3, v5, :cond_1

    const/4 v3, -0x1

    invoke-static {v6, v7, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    const-string v3, "notification_view"

    invoke-static {v3, v0, v4, v4, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/i;->onInAppNotificationShown(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    new-instance v0, Lcom/webengage/sdk/android/actions/exception/WebViewException;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/webengage/sdk/android/actions/exception/WebViewException;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    const-string v3, "notification_close"

    invoke-static {v3, v0, v4, v4, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/i;->onInAppNotificationDismissed(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;)V

    return-void

    :cond_5
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v3}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getVariationId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->o:Ljava/lang/String;

    const-string v3, "call_to_action"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v2}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    const-string v3, "notification_click"

    invoke-static {v3, v0, v4, v4, v2}, Lcom/webengage/sdk/android/k;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;)Lcom/webengage/sdk/android/l;

    move-result-object v0

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/m;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/webengage/sdk/android/i;->onInAppNotificationClicked(Landroid/content/Context;Lcom/webengage/sdk/android/actions/render/InAppNotificationData;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->p:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->p:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    const-class v2, Lcom/webengage/sdk/android/NotificationClickHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.webengage.sdk.android.intent.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    const-string v3, "WebEngageDeeplink"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->p:Ljava/lang/String;

    const-string v3, "deeplink_uri"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic f(Lcom/webengage/sdk/android/actions/render/m;)Lorg/a/c;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    return-object p0
.end method

.method static synthetic g(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/m$c;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->a:Lcom/webengage/sdk/android/actions/render/m$c;

    return-object p0
.end method

.method static synthetic h(Lcom/webengage/sdk/android/actions/render/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/render/m;->e()V

    return-void
.end method

.method static synthetic i(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;
    .locals 0

    iget-object p0, p0, Lcom/webengage/sdk/android/actions/render/m;->h:Landroid/view/animation/Animation;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->i:Landroid/os/Handler;

    new-instance v1, Lcom/webengage/sdk/android/actions/render/m$1;

    invoke-direct {v1, p0}, Lcom/webengage/sdk/android/actions/render/m$1;-><init>(Lcom/webengage/sdk/android/actions/render/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/m;->l:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/m;->n:I

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->b()V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/m;->j:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/m;->n:I

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->o:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/m;->p:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/webengage/sdk/android/actions/render/m;->q:Z

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->b()V

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->i:Landroid/os/Handler;

    new-instance v1, Lcom/webengage/sdk/android/actions/render/m$2;

    invoke-direct {v1, p0}, Lcom/webengage/sdk/android/actions/render/m$2;-><init>(Lcom/webengage/sdk/android/actions/render/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method c()V
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/m;->k:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/m;->n:I

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->b()V

    return-void
.end method

.method d()V
    .locals 1

    iget v0, p0, Lcom/webengage/sdk/android/actions/render/m;->m:I

    iput v0, p0, Lcom/webengage/sdk/android/actions/render/m;->n:I

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->a()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "RenderDialogFragment"

    const-string v0, "Attach"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Configuration Changed"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m;->a:Lcom/webengage/sdk/android/actions/render/m$c;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, p1}, Lcom/webengage/sdk/android/actions/render/m;->a(Landroid/view/Window;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "animDuration"

    const-string v1, "RenderDialogFragment"

    const-string v2, "Create"

    invoke-static {v1, v2}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->s:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->i:Landroid/os/Handler;

    const-class v1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "notificationData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->e:Lcom/webengage/sdk/android/actions/render/InAppNotificationData;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/render/InAppNotificationData;->getData()Lorg/a/c;

    move-result-object v1

    const-string v2, "layoutAttributes"

    invoke-virtual {v1, v2}, Lorg/a/c;->optJSONObject(Ljava/lang/String;)Lorg/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const-string v1, "baseUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/webengage/sdk/android/actions/render/m;->d:Ljava/lang/String;

    const-string v1, "fullscreen"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/webengage/sdk/android/actions/render/m;->c:Z

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const-string v1, "entryAnimation"

    const-string v2, "FADE_IN"

    invoke-virtual {p1, v1, v2}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/webengage/sdk/android/actions/render/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/webengage/sdk/android/actions/render/m$a;-><init>(Lcom/webengage/sdk/android/actions/render/m;Lcom/webengage/sdk/android/actions/render/m$1;)V

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v0, v4}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v5, v3

    invoke-static {p1, v1, v5, v6}, Lcom/webengage/sdk/android/actions/render/a;->a(Ljava/lang/String;Landroid/view/animation/Animation$AnimationListener;J)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->g:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    const-string v1, "exitAnimation"

    const-string v3, "FADE_OUT"

    invoke-virtual {p1, v1, v3}, Lorg/a/c;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/webengage/sdk/android/actions/render/m$b;

    invoke-direct {v1, p0, v2}, Lcom/webengage/sdk/android/actions/render/m$b;-><init>(Lcom/webengage/sdk/android/actions/render/m;Lcom/webengage/sdk/android/actions/render/m$1;)V

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/render/m;->b:Lorg/a/c;

    invoke-virtual {v2, v0, v4}, Lorg/a/c;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lcom/webengage/sdk/android/actions/render/a;->a(Ljava/lang/String;Landroid/view/animation/Animation$AnimationListener;J)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->h:Landroid/view/animation/Animation;

    new-instance p1, Lcom/webengage/sdk/android/actions/render/m$c;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1030005

    invoke-direct {p1, p0, v0, v1}, Lcom/webengage/sdk/android/actions/render/m$c;-><init>(Lcom/webengage/sdk/android/actions/render/m;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->a:Lcom/webengage/sdk/android/actions/render/m$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const-string p1, "RenderDialogFragment"

    const-string v0, "CreateDialog"

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/m;->a:Lcom/webengage/sdk/android/actions/render/m$c;

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "RenderDialogFragment"

    const-string v1, "CreateView"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "RenderDialogFragment"

    const-string v1, "DestroyView"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/webengage/sdk/android/actions/render/m;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Detach"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Pause"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Resume"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Start"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    const-string v0, "RenderDialogFragment"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Lcom/webengage/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
