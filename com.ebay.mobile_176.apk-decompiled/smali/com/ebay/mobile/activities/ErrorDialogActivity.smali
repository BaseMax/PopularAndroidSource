.class public Lcom/ebay/mobile/activities/ErrorDialogActivity;
.super Lcom/ebay/nautilus/shell/app/BaseActivity;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static haveOneUp:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120209

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, p2, v1}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 49
    sget-boolean v0, Lcom/ebay/mobile/activities/ErrorDialogActivity;->haveOneUp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lcom/ebay/mobile/activities/ErrorDialogActivity;->haveOneUp:Z

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ebay/mobile/activities/ErrorDialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p3, :cond_1

    const-string v2, "</"

    .line 55
    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p4, "is_html"

    .line 56
    invoke-virtual {v1, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    const-string p4, "alert_icon"

    .line 58
    invoke-virtual {v1, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    :goto_0
    const-string/jumbo p4, "title"

    .line 59
    invoke-virtual {v1, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "errorcode"

    .line 60
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "errortext"

    .line 61
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p0, "ErrorDialogActivity"

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error code = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ErrorDialogActivity"

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error text = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, v0, p2, p3}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->StartActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected createUI()V
    .locals 5

    .line 120
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_html"

    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0603

    .line 125
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    const-string v2, "errortext"

    .line 126
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0602

    .line 130
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "errortext"

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v1, "errorcode"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0a05fd

    .line 138
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const v1, 0x7f0a05f2

    .line 143
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f0a05f9

    .line 147
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 148
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    sput-boolean v0, Lcom/ebay/mobile/activities/ErrorDialogActivity;->haveOneUp:Z

    .line 115
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/activities/CoreLayoutInflater;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/mobile/activities/CoreLayoutInflater;-><init>(Landroidx/appcompat/app/AppCompatDelegate;)V

    invoke-static {v0, v1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 74
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_html"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "alert_icon"

    .line 78
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->requestWindowFeature(I)Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->requestWindowFeature(I)Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const v4, 0x7f0d0171

    goto :goto_1

    :cond_2
    const v4, 0x7f0d0170

    .line 84
    :goto_1
    invoke-virtual {p0, v4}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    .line 87
    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    .line 93
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v4, 0x1010355

    invoke-virtual {v1, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_4

    :cond_3
    const v1, 0x1080027

    .line 95
    iput v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 96
    :cond_4
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    :cond_5
    const-string/jumbo v0, "title"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->createUI()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "ErrorDialogActivity"

    const-string v0, "OutOfMemory trying to display an OOM dialog..."

    .line 105
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance p1, Lcom/ebay/mobile/util/TaskManager;

    invoke-direct {p1}, Lcom/ebay/mobile/util/TaskManager;-><init>()V

    const-class v0, Lcom/ebay/mobile/activities/MainActivity;

    invoke-virtual {p1, p0, v0}, Lcom/ebay/mobile/util/TaskManager;->replaceTask(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/ErrorDialogActivity;->finish()V

    :goto_2
    return-void
.end method
