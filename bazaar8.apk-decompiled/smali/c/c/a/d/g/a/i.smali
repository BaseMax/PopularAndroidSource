.class public final Lc/c/a/d/g/a/i;
.super Ljava/lang/Object;
.source "ImageLoader.kt"


# static fields
.field public static final a:Lc/c/a/d/g/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/d/g/a/i;

    invoke-direct {v0}, Lc/c/a/d/g/a/i;-><init>()V

    sput-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/d/g/a/i;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1
    invoke-virtual/range {v2 .. v8}, Lc/c/a/d/g/a/i;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lb/i/a/n$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/i/a/q;I)V
    .locals 11

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilder"

    move-object v6, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managerCompat"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lc/c/a/d/g/a/h;

    move-object v1, v10

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v7, p5

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lc/c/a/d/g/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lb/i/a/n$d;Ljava/lang/String;Lb/i/a/q;I)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/d/g/a/c;->a(Landroid/content/Context;)Lc/c/a/d/g/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/n;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageURI"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/b/a/g/g;

    invoke-direct {v0}, Lc/b/a/g/g;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {v0, p3}, Lc/b/a/g/g;->a(Landroid/graphics/drawable/Drawable;)Lc/b/a/g/g;

    move-result-object p3

    const-string p4, "placeholder(placeHolderDrawable)"

    invoke-static {p3, p4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lc/b/a/g/g;->b(I)Lc/b/a/g/g;

    :cond_1
    :goto_0
    if-lez p6, :cond_2

    .line 5
    new-instance p3, Lc/b/a/c/d/a/t;

    invoke-direct {p3, p6}, Lc/b/a/c/d/a/t;-><init>(I)V

    invoke-virtual {v0, p3}, Lc/b/a/g/g;->a(Lc/b/a/c/i;)Lc/b/a/g/g;

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lc/c/a/d/g/a/c;->a(Landroid/content/Context;)Lc/c/a/d/g/a/f;

    move-result-object p3

    .line 7
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Lc/c/a/d/g/a/f;->a(Landroid/net/Uri;)Lc/c/a/d/g/a/e;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lc/b/a/e;->e(Landroid/content/Context;)Lc/b/a/n;

    move-result-object p3

    .line 9
    invoke-virtual {p3, p5}, Lc/b/a/n;->a(Ljava/lang/String;)Lc/b/a/k;

    move-result-object p3

    .line 10
    invoke-virtual {p2, p3}, Lc/c/a/d/g/a/e;->a(Lc/b/a/k;)Lc/c/a/d/g/a/e;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v0}, Lc/c/a/d/g/a/e;->a(Lc/b/a/g/g;)Lc/c/a/d/g/a/e;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Lc/b/a/k;->a(Landroid/widget/ImageView;)Lc/b/a/g/a/i;

    return-void
.end method
