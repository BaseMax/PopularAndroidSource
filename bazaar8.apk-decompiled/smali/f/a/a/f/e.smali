.class public Lf/a/a/f/e;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/f/e$a;
    }
.end annotation


# static fields
.field public static a:Lf/a/a/f/e;


# instance fields
.field public b:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj/I;

    invoke-direct {v0}, Lj/I;-><init>()V

    .line 3
    new-instance v1, Lcom/squareup/picasso/Picasso$a;

    invoke-direct {v1, p1}, Lcom/squareup/picasso/Picasso$a;-><init>(Landroid/content/Context;)V

    new-instance p1, Lc/f/a/z;

    invoke-direct {p1, v0}, Lc/f/a/z;-><init>(Lj/I;)V

    .line 4
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso$a;->a(Lc/f/a/r;)Lcom/squareup/picasso/Picasso$a;

    .line 5
    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$a;->a()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/f/e;->b:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method public static a()Lf/a/a/f/e;
    .locals 3

    .line 1
    sget-object v0, Lf/a/a/f/e;->a:Lf/a/a/f/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lf/a/a/f/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lf/a/a/f/e;->a:Lf/a/a/f/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lf/a/a/f/e;

    sget-object v2, Lf/a/a/b/a;->e:Lf/a/a/b/a;

    invoke-virtual {v2}, Lf/a/a/b/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lf/a/a/f/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf/a/a/f/e;->a:Lf/a/a/f/e;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lf/a/a/f/e;->a:Lf/a/a/f/e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Landroid/content/res/Resources;)Landroid/text/Html$ImageGetter;
    .locals 2

    .line 7
    new-instance v0, Lf/a/a/f/j;

    iget-object v1, p0, Lf/a/a/f/e;->b:Lcom/squareup/picasso/Picasso;

    invoke-direct {v0, p1, p2, v1}, Lf/a/a/f/j;-><init>(Landroid/widget/TextView;Landroid/content/res/Resources;Lcom/squareup/picasso/Picasso;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lf/a/a/f/e;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lc/f/a/H;

    move-result-object p1

    invoke-virtual {p1}, Lc/f/a/H;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, v0, v1}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZLf/a/a/f/e$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 9
    invoke-virtual/range {v0 .. v8}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZILf/a/a/f/e$a;III)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;IILf/a/a/f/e$a;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p5

    move v6, p4

    .line 14
    invoke-virtual/range {v0 .. v8}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZILf/a/a/f/e$a;III)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lf/a/a/f/e$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0, p3}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZLf/a/a/f/e$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZLf/a/a/f/e$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;ZII)V
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 13
    invoke-virtual/range {v0 .. v8}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZILf/a/a/f/e$a;III)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;ZILf/a/a/f/e$a;III)V
    .locals 1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lf/a/a/f/e;->b:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lc/f/a/H;

    move-result-object p1

    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    .line 17
    invoke-virtual {p1, p7, p8}, Lc/f/a/H;->a(II)Lc/f/a/H;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lc/f/a/H;->c()Lc/f/a/H;

    :goto_0
    if-eqz p4, :cond_1

    .line 19
    invoke-virtual {p1, p4}, Lc/f/a/H;->a(I)Lc/f/a/H;

    :cond_1
    if-eqz p6, :cond_2

    .line 20
    new-instance p4, Lf/a/a/f/k;

    const/4 p7, 0x0

    invoke-direct {p4, p6, p7}, Lf/a/a/f/k;-><init>(II)V

    .line 21
    invoke-virtual {p1, p4}, Lc/f/a/H;->a(Lc/f/a/N;)Lc/f/a/H;

    :cond_2
    if-nez p3, :cond_3

    .line 22
    invoke-virtual {p1}, Lc/f/a/H;->f()Lc/f/a/H;

    .line 23
    :cond_3
    new-instance p3, Lf/a/a/f/d;

    invoke-direct {p3, p0, p5}, Lf/a/a/f/d;-><init>(Lf/a/a/f/e;Lf/a/a/f/e$a;)V

    invoke-virtual {p1, p2, p3}, Lc/f/a/H;->a(Landroid/widget/ImageView;Lc/f/a/l;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;ZLf/a/a/f/e$a;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 12
    invoke-virtual/range {v0 .. v8}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;ZILf/a/a/f/e$a;III)V

    return-void
.end method
