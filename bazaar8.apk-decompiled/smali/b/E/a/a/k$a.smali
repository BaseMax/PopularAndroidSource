.class public Lb/E/a/a/k$a;
.super Lb/E/a/a/k$e;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/E/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/E/a/a/k$e;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/E/a/a/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/E/a/a/k$e;-><init>(Lb/E/a/a/k$e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "pathData"

    .line 1
    invoke-static {p4, v0}, Lb/i/b/a/i;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lb/E/a/a/a;->d:[I

    invoke-static {p1, p3, p2, v0}, Lb/i/b/a/i;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p4}, Lb/E/a/a/k$a;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iput-object v1, p0, Lb/E/a/a/k$e;->b:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v1}, Lb/i/c/b;->a(Ljava/lang/String;)[Lb/i/c/b$b;

    move-result-object v1

    iput-object v1, p0, Lb/E/a/a/k$e;->a:[Lb/i/c/b$b;

    :cond_1
    const/4 v1, 0x2

    const-string v2, "fillType"

    .line 9
    invoke-static {p1, p2, v2, v1, v0}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lb/E/a/a/k$e;->c:I

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
