.class public Lf/a/a/g/i/f;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# static fields
.field public static final a:[I

.field public static final b:I


# instance fields
.field public c:Lf/a/a/e/g;

.field public d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lf/a/a/g/i/f;->a:[I

    .line 2
    sget-object v0, Lf/a/a/g/i/f;->a:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lf/a/a/g/i/f;->b:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0xa
        0xf
        0x15
    .end array-data
.end method

.method public constructor <init>(Lf/a/a/e/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "inline_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/i/f;->d:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "inline_pref"

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "short__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lf/a/a/g/i/f;->b:I

    .line 14
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 15
    new-instance v0, Lc/c/a/d/d/a;

    invoke-direct {v0, p1}, Lc/c/a/d/d/a;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-static {p1, p5}, Lf/a/a/g/i/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    invoke-static {p5}, Lir/cafebazaar/inline/ui/InlineActivity;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p5

    const-string v1, "ref"

    const-string v2, "shortcut"

    .line 18
    invoke-virtual {p5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p4, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lf/a/a/d;->ic_inline:I

    invoke-static {p4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 22
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 23
    invoke-static {p4, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_2
    if-nez p3, :cond_3

    .line 24
    sget p3, Lf/a/a/g;->inline_app:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 25
    :cond_3
    invoke-virtual {v0, p2, p3, p4, p5}, Lc/c/a/d/d/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 8
    iget-object v0, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    iget-object v0, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    .line 9
    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    .line 10
    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    .line 11
    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->d()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Lf/a/a/g/i/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/a/a/g/i/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/a/a/g/i/f;->d:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "short__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    invoke-interface {v4}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v4

    invoke-virtual {v4}, Lir/cafebazaar/inline/platform/InlineApplication;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v2, p0, Lf/a/a/g/i/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    invoke-interface {v3}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lf/a/a/g/i/f;->b:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    sget-object v2, Lf/a/a/g/i/f;->a:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 5
    iget-object v0, p0, Lf/a/a/g/i/f;->c:Lf/a/a/e/g;

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    return v1
.end method
