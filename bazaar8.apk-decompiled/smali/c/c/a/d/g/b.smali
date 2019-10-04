.class public final Lc/c/a/d/g/b;
.super Ljava/lang/Object;
.source "LocaleManager.kt"


# static fields
.field public static a:Lc/c/a/e/d/u/a;

.field public static final b:Lc/c/a/d/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/d/g/b;

    invoke-direct {v0}, Lc/c/a/d/g/b;-><init>()V

    sput-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lc/c/a/d/g/b;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/c/a/d/g/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {v0, p1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p1

    sput-object p1, Lc/c/a/d/g/b;->a:Lc/c/a/e/d/u/a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-object v0, Lc/c/a/d/g/b;->a:Lc/c/a/e/d/u/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/e/d/u/a;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "appSettings"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/g/b;->a:Lc/c/a/e/d/u/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/c/a/d/g/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "appSettings"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 5
    new-instance v1, Landroid/content/res/Configuration;

    const-string v2, "res"

    invoke-static {p2, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "context.createConfigurationContext(config)"

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 7
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 8
    new-instance p2, Landroid/os/LocaleList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-direct {p2, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 9
    invoke-static {p2}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 10
    invoke-virtual {v1, p2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    if-lt v2, v4, :cond_1

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_0
    return-object p1
.end method
