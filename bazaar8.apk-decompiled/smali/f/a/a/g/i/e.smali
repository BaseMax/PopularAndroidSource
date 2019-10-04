.class public Lf/a/a/g/i/e;
.super Lf/a/a/g/c;
.source "ShortcutDialog.java"


# direct methods
.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/c;-><init>(Lf/a/a/e/g;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 33
    new-instance v1, Lf/a/a/g/i/d;

    invoke-direct {v1}, Lf/a/a/g/i/d;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic a(Lf/a/a/g/i/e;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 4

    .line 35
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 42
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/g/i/e;)Lb/b/a/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lf/a/a/g/i/e;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lf/a/a/g/i/e;)Lb/b/a/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lf/a/a/g/i/e;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lf/a/a/g/i/e;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lf/a/a/g/i/e;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lf/a/a/g/i/e;)Lb/b/a/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lf/a/a/g/i/e;)Lf/a/a/e/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lb/b/a/l;
    .locals 6

    .line 2
    invoke-static {}, Lf/a/a/a/a/b;->a()Lf/a/a/a/a/b;

    move-result-object v0

    new-instance v1, Lf/a/a/a/a/a;

    invoke-direct {v1}, Lf/a/a/a/a/a;-><init>()V

    const-string v2, "system"

    .line 3
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->a(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v2

    invoke-interface {v2}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->j()Lir/cafebazaar/inline/platform/InlineUser;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineUser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->d(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "inlineapp_action"

    .line 5
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->b(Ljava/lang/String;)Lf/a/a/a/a/a;

    const-string v2, "state"

    const-string v3, "shown"

    .line 6
    invoke-virtual {v1, v2, v3}, Lf/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/a/a/a;

    const-string v2, "shortcut_dialog"

    .line 7
    invoke-virtual {v1, v2}, Lf/a/a/a/a/a;->c(Ljava/lang/String;)Lf/a/a/a/a/a;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lf/a/a/a/a/a;->a(J)Lf/a/a/a/a/a;

    .line 9
    invoke-virtual {v0, v1}, Lf/a/a/a/a/b;->a(Lf/a/a/a/a/a;)V

    .line 10
    new-instance v0, Lb/b/a/l$a;

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    sget v2, Lf/a/a/h;->DialogInline:I

    invoke-direct {v0, v1, v2}, Lb/b/a/l$a;-><init>(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 12
    sget v2, Lf/a/a/f;->inline_shortcut_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 13
    sget v2, Lf/a/a/e;->phone_background:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v3

    invoke-interface {v3}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    sget v2, Lf/a/a/e;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 17
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v3

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v4

    invoke-interface {v4}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v4

    invoke-virtual {v4}, Lir/cafebazaar/inline/platform/InlineApplication;->c()Ljava/lang/String;

    move-result-object v4

    sget v5, Lf/a/a/d;->ic_inline:I

    invoke-virtual {v3, v4, v2, v5}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 18
    sget v3, Lf/a/a/e;->name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v4

    invoke-interface {v4}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v4

    invoke-virtual {v4}, Lir/cafebazaar/inline/platform/InlineApplication;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v3

    invoke-interface {v3}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v3

    invoke-static {v3}, Lf/a/a/g/i/e;->a(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 20
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.farsitel.bazaar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    sget v4, Lf/a/a/e;->other_icon:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v5

    invoke-interface {v5}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    sget v4, Lf/a/a/e;->other_name:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 25
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v5

    invoke-interface {v5}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v5

    invoke-static {v5, v3}, Lf/a/a/g/i/e;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_0
    sget v3, Lf/a/a/e;->add_shortcut_button:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lf/a/a/g/i/a;

    invoke-direct {v4, p0, v2}, Lf/a/a/g/i/a;-><init>(Lf/a/a/g/i/e;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    sget v2, Lf/a/a/e;->not_now_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lf/a/a/g/i/b;

    invoke-direct {v3, p0}, Lf/a/a/g/i/b;-><init>(Lf/a/a/g/i/e;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    sget v2, Lf/a/a/e;->never_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lf/a/a/g/i/c;

    invoke-direct {v3, p0}, Lf/a/a/g/i/c;-><init>(Lf/a/a/g/i/e;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {v0, v1}, Lb/b/a/l$a;->b(Landroid/view/View;)Lb/b/a/l$a;

    .line 31
    invoke-virtual {v0}, Lb/b/a/l$a;->a()Lb/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Z)V

    return-void
.end method
