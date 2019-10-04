.class public Lb/i/c/c;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# static fields
.field public static final a:Lb/i/c/j;

.field public static final b:Lb/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/g<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lb/i/c/g;

    invoke-direct {v0}, Lb/i/c/g;-><init>()V

    sput-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lb/i/c/f;

    invoke-direct {v0}, Lb/i/c/f;-><init>()V

    sput-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 4
    invoke-static {}, Lb/i/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lb/i/c/e;

    invoke-direct {v0}, Lb/i/c/e;-><init>()V

    sput-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    goto :goto_0

    .line 6
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 7
    new-instance v0, Lb/i/c/d;

    invoke-direct {v0}, Lb/i/c/d;-><init>()V

    sput-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Lb/i/c/j;

    invoke-direct {v0}, Lb/i/c/j;-><init>()V

    sput-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    .line 9
    :goto_0
    new-instance v0, Lb/f/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lb/f/g;-><init>(I)V

    sput-object v0, Lb/i/c/c;->b:Lb/f/g;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    .line 11
    sget-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lb/i/c/j;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    invoke-static {p1, p2, p4}, Lb/i/c/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object p2, Lb/i/c/c;->b:Lb/f/g;

    invoke-virtual {p2, p1, p0}, Lb/f/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p0, :cond_1

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 16
    invoke-static {p0, p1, p2}, Lb/i/c/c;->b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 17
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/i/h/f$b;I)Landroid/graphics/Typeface;
    .locals 1

    .line 14
    sget-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    invoke-virtual {v0, p0, p1, p2, p3}, Lb/i/c/j;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/i/h/f$b;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lb/i/b/a/c$a;Landroid/content/res/Resources;IILb/i/b/a/h$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7

    .line 2
    instance-of v1, p1, Lb/i/b/a/c$d;

    if-eqz v1, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lb/i/b/a/c$d;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    .line 4
    invoke-virtual {v0}, Lb/i/b/a/c$d;->a()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    :goto_0
    const/4 v4, 0x1

    :cond_1
    if-eqz p7, :cond_2

    .line 5
    invoke-virtual {v0}, Lb/i/b/a/c$d;->c()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v5, -0x1

    .line 6
    :goto_1
    invoke-virtual {v0}, Lb/i/b/a/c$d;->b()Lb/i/h/a;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, Lb/i/h/f;->a(Landroid/content/Context;Lb/i/h/a;Lb/i/b/a/h$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_3
    sget-object v1, Lb/i/c/c;->a:Lb/i/c/j;

    move-object v0, p1

    check-cast v0, Lb/i/b/a/c$b;

    invoke-virtual {v1, p0, v0, p2, p4}, Lb/i/c/j;->a(Landroid/content/Context;Lb/i/b/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p5, v0, p6}, Lb/i/b/a/h$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_2

    :cond_4
    const/4 v1, -0x3

    .line 9
    invoke-virtual {p5, v1, p6}, Lb/i/b/a/h$a;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 10
    sget-object v1, Lb/i/c/c;->b:Lb/f/g;

    invoke-static {p2, p3, p4}, Lb/i/c/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lb/f/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2

    .line 2
    sget-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    invoke-virtual {v0, p1}, Lb/i/c/j;->a(Landroid/graphics/Typeface;)Lb/i/b/a/c$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lb/i/c/c;->a:Lb/i/c/j;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    invoke-virtual {v0, p0, p1, v1, p2}, Lb/i/c/j;->a(Landroid/content/Context;Lb/i/b/a/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1

    .line 1
    sget-object v0, Lb/i/c/c;->b:Lb/f/g;

    invoke-static {p0, p1, p2}, Lb/i/c/c;->a(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/f/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method
