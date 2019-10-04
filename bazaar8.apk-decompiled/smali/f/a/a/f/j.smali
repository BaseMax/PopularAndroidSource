.class public Lf/a/a/f/j;
.super Ljava/lang/Object;
.source "PicassoImageGetter.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field public a:Landroid/content/res/Resources;

.field public b:Lcom/squareup/picasso/Picasso;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/content/res/Resources;Lcom/squareup/picasso/Picasso;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/f/j;->c:Landroid/widget/TextView;

    .line 3
    iput-object p2, p0, Lf/a/a/f/j;->a:Landroid/content/res/Resources;

    .line 4
    iput-object p3, p0, Lf/a/a/f/j;->b:Lcom/squareup/picasso/Picasso;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/f/b;

    invoke-direct {v0}, Lf/a/a/f/b;-><init>()V

    .line 2
    new-instance v1, Lf/a/a/f/i;

    invoke-direct {v1, p0, p1, v0}, Lf/a/a/f/i;-><init>(Lf/a/a/f/j;Ljava/lang/String;Lf/a/a/f/b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 3
    invoke-virtual {v1, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method
