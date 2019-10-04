.class public final Lc/c/a/i/b;
.super Ljava/lang/Object;
.source "CustomTabsExt.kt"


# static fields
.field public static final a:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(http(s)?:\\/\\/)?(www\\.)?(\\w*\\.)?cafebazaar\\.ir\\b([-a-zA-Z0-9@:%_\\+.~#?&//=]*)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/c/a/i/b;->a:Lkotlin/text/Regex;

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "$this$openUrl"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/c/a/i/b;->a:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity Found for opening :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    new-instance p2, Lb/d/a/a$a;

    invoke-direct {p2}, Lb/d/a/a$a;-><init>()V

    const v0, 0x7f06005b

    .line 9
    invoke-static {p0, v0}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lb/d/a/a$a;->a(I)Lb/d/a/a$a;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p2, v0}, Lb/d/a/a$a;->a(Z)Lb/d/a/a$a;

    .line 11
    invoke-virtual {p2}, Lb/d/a/a$a;->a()Lb/d/a/a;

    move-result-object p2

    .line 12
    sget-object v0, Lc/c/a/d/h/a/c;->a:Lc/c/a/d/h/a/c$a;

    .line 13
    iget-object v1, p2, Lb/d/a/a;->a:Landroid/content/Intent;

    const-string v2, "customTabsIntent.intent"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lc/c/a/d/h/a/c$a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "customTabsIntent"

    .line 14
    invoke-static {p2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "Uri.parse(url)"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lc/c/a/d/h/a/e;

    invoke-direct {v1}, Lc/c/a/d/h/a/e;-><init>()V

    invoke-virtual {v0, p0, p2, p1, v1}, Lc/c/a/d/h/a/c$a;->a(Landroid/content/Context;Lb/d/a/a;Landroid/net/Uri;Lc/c/a/d/h/a/c$b;)V

    :goto_1
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
