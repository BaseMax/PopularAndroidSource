.class public Lf/a/a/f/i;
.super Landroid/os/AsyncTask;
.source "PicassoImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/f/j;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf/a/a/f/b;

.field public final synthetic c:Lf/a/a/f/j;


# direct methods
.method public constructor <init>(Lf/a/a/f/j;Ljava/lang/String;Lf/a/a/f/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/f/i;->c:Lf/a/a/f/j;

    iput-object p2, p0, Lf/a/a/f/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lf/a/a/f/i;->b:Lf/a/a/f/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lf/a/a/f/i;->c:Lf/a/a/f/j;

    iget-object p1, p1, Lf/a/a/f/j;->b:Lcom/squareup/picasso/Picasso;

    iget-object v0, p0, Lf/a/a/f/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lc/f/a/H;

    move-result-object p1

    invoke-virtual {p1}, Lc/f/a/H;->d()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 2
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lf/a/a/f/i;->c:Lf/a/a/f/j;

    iget-object v1, v1, Lf/a/a/f/j;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3
    iget-object p1, p0, Lf/a/a/f/i;->c:Lf/a/a/f/j;

    iget-object p1, p1, Lf/a/a/f/j;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x3

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 6
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 8
    iget-object v3, p0, Lf/a/a/f/i;->b:Lf/a/a/f/b;

    invoke-virtual {v3, v0}, Lf/a/a/f/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lf/a/a/f/i;->b:Lf/a/a/f/b;

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 10
    iget-object p1, p0, Lf/a/a/f/i;->c:Lf/a/a/f/j;

    iget-object p1, p1, Lf/a/a/f/j;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lf/a/a/f/i;->c:Lf/a/a/f/j;

    iget-object v0, v0, Lf/a/a/f/j;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lf/a/a/f/i;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lf/a/a/f/i;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
