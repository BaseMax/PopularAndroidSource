.class public final Lcom/getkeepsafe/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/a/c$a;,
        Lcom/getkeepsafe/a/c$b;,
        Lcom/getkeepsafe/a/c$d;,
        Lcom/getkeepsafe/a/c$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static force()Lcom/getkeepsafe/a/d;
    .locals 1

    .line 74
    new-instance v0, Lcom/getkeepsafe/a/d;

    invoke-direct {v0}, Lcom/getkeepsafe/a/d;-><init>()V

    invoke-virtual {v0}, Lcom/getkeepsafe/a/d;->force()Lcom/getkeepsafe/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0}, Lcom/getkeepsafe/a/c;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0, p2}, Lcom/getkeepsafe/a/c;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-static {p0, p1, p2, v0}, Lcom/getkeepsafe/a/c;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V

    return-void
.end method

.method public static loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/getkeepsafe/a/d;

    invoke-direct {v0}, Lcom/getkeepsafe/a/d;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/getkeepsafe/a/d;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/c$c;)V

    return-void
.end method

.method public static log(Lcom/getkeepsafe/a/c$d;)Lcom/getkeepsafe/a/d;
    .locals 1

    .line 78
    new-instance v0, Lcom/getkeepsafe/a/d;

    invoke-direct {v0}, Lcom/getkeepsafe/a/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/getkeepsafe/a/d;->log(Lcom/getkeepsafe/a/c$d;)Lcom/getkeepsafe/a/d;

    move-result-object p0

    return-object p0
.end method

.method public static recursively()Lcom/getkeepsafe/a/d;
    .locals 1

    .line 82
    new-instance v0, Lcom/getkeepsafe/a/d;

    invoke-direct {v0}, Lcom/getkeepsafe/a/d;-><init>()V

    invoke-virtual {v0}, Lcom/getkeepsafe/a/d;->recursively()Lcom/getkeepsafe/a/d;

    move-result-object v0

    return-object v0
.end method
