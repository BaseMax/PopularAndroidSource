.class public Lb/b/c/a/b;
.super Lb/b/c/a/f;
.source "AnimatedStateListDrawableCompat.java"

# interfaces
.implements Lb/i/c/a/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/c/a/b$e;,
        Lb/b/c/a/b$b;,
        Lb/b/c/a/b$c;,
        Lb/b/c/a/b$d;,
        Lb/b/c/a/b$a;,
        Lb/b/c/a/b$f;
    }
.end annotation


# instance fields
.field public p:Lb/b/c/a/b$b;

.field public q:Lb/b/c/a/b$f;

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lb/b/c/a/b;-><init>(Lb/b/c/a/b$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Lb/b/c/a/b$b;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lb/b/c/a/f;-><init>(Lb/b/c/a/f$a;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb/b/c/a/b;->r:I

    .line 4
    iput v0, p0, Lb/b/c/a/b;->s:I

    .line 5
    new-instance v0, Lb/b/c/a/b$b;

    invoke-direct {v0, p1, p0, p2}, Lb/b/c/a/b$b;-><init>(Lb/b/c/a/b$b;Lb/b/c/a/b;Landroid/content/res/Resources;)V

    .line 6
    invoke-virtual {p0, v0}, Lb/b/c/a/b;->a(Lb/b/c/a/d$b;)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/c/a/b;->onStateChange([I)Z

    .line 8
    invoke-virtual {p0}, Lb/b/c/a/b;->jumpToCurrentState()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/b/c/a/b;
    .locals 8

    .line 3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Lb/b/c/a/b;

    invoke-direct {v0}, Lb/b/c/a/b;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 6
    invoke-virtual/range {v2 .. v7}, Lb/b/c/a/b;->b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lb/b/c/a/b$b;
    .locals 3

    .line 25
    new-instance v0, Lb/b/c/a/b$b;

    iget-object v1, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lb/b/c/a/b$b;-><init>(Lb/b/c/a/b$b;Lb/b/c/a/b;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public bridge synthetic a()Lb/b/c/a/d$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/c/a/b;->a()Lb/b/c/a/b$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lb/b/c/a/f$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lb/b/c/a/b;->a()Lb/b/c/a/b$b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 11
    iget v1, v0, Lb/b/c/a/d$b;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lb/b/c/a/d$b;->d:I

    .line 12
    :cond_0
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Lb/b/c/a/d$b;->i:Z

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lb/b/c/a/d$b;->b(Z)V

    .line 15
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Lb/b/c/a/d$b;->l:Z

    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lb/b/c/a/d$b;->a(Z)V

    .line 18
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Lb/b/c/a/d$b;->A:I

    .line 19
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lb/b/c/a/d$b;->b(I)V

    .line 21
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Lb/b/c/a/d$b;->B:I

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Lb/b/c/a/d$b;->c(I)V

    .line 24
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v0, v0, Lb/b/c/a/d$b;->x:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/c/a/d;->setDither(Z)V

    return-void
.end method

.method public a(Lb/b/c/a/d$b;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lb/b/c/a/f;->a(Lb/b/c/a/d$b;)V

    .line 27
    instance-of v0, p1, Lb/b/c/a/b$b;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lb/b/c/a/b$b;

    iput-object p1, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    sget-object v0, Lb/b/d/b;->AnimatedStateListDrawableCompat:[I

    invoke-static {p2, p5, p4, v0}, Lb/i/b/a/i;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lb/b/c/a/b;->setVisible(ZZ)Z

    .line 3
    invoke-virtual {p0, v0}, Lb/b/c/a/b;->a(Landroid/content/res/TypedArray;)V

    .line 4
    invoke-virtual {p0, p2}, Lb/b/c/a/d;->a(Landroid/content/res/Resources;)V

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual/range {p0 .. p5}, Lb/b/c/a/b;->c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 7
    invoke-virtual {p0}, Lb/b/c/a/b;->d()V

    return-void
.end method

.method public final b(I)Z
    .locals 9

    .line 8
    iget-object v0, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 9
    iget v2, p0, Lb/b/c/a/b;->r:I

    if-ne p1, v2, :cond_0

    return v1

    .line 10
    :cond_0
    iget v2, p0, Lb/b/c/a/b;->s:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lb/b/c/a/b$f;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v0}, Lb/b/c/a/b$f;->b()V

    .line 12
    iget v0, p0, Lb/b/c/a/b;->s:I

    iput v0, p0, Lb/b/c/a/b;->r:I

    .line 13
    iput p1, p0, Lb/b/c/a/b;->s:I

    return v1

    .line 14
    :cond_1
    iget v2, p0, Lb/b/c/a/b;->r:I

    .line 15
    invoke-virtual {v0}, Lb/b/c/a/b$f;->d()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Lb/b/c/a/d;->b()I

    move-result v2

    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lb/b/c/a/b;->s:I

    .line 19
    iput v0, p0, Lb/b/c/a/b;->r:I

    .line 20
    iget-object v0, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    .line 21
    invoke-virtual {v0, v2}, Lb/b/c/a/b$b;->d(I)I

    move-result v3

    .line 22
    invoke-virtual {v0, p1}, Lb/b/c/a/b$b;->d(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    if-nez v3, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v0, v3, v4}, Lb/b/c/a/b$b;->d(II)I

    move-result v6

    if-gez v6, :cond_4

    return v5

    .line 24
    :cond_4
    invoke-virtual {v0, v3, v4}, Lb/b/c/a/b$b;->f(II)Z

    move-result v7

    .line 25
    invoke-virtual {p0, v6}, Lb/b/c/a/d;->a(I)Z

    .line 26
    invoke-virtual {p0}, Lb/b/c/a/d;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 27
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_5

    .line 28
    invoke-virtual {v0, v3, v4}, Lb/b/c/a/b$b;->e(II)Z

    move-result v0

    .line 29
    new-instance v3, Lb/b/c/a/b$d;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, Lb/b/c/a/b$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_1

    .line 30
    :cond_5
    instance-of v0, v6, Lb/E/a/a/d;

    if-eqz v0, :cond_6

    .line 31
    new-instance v3, Lb/b/c/a/b$c;

    check-cast v6, Lb/E/a/a/d;

    invoke-direct {v3, v6}, Lb/b/c/a/b$c;-><init>(Lb/E/a/a/d;)V

    goto :goto_1

    .line 32
    :cond_6
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    .line 33
    new-instance v3, Lb/b/c/a/b$a;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, Lb/b/c/a/b$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 34
    :goto_1
    invoke-virtual {v3}, Lb/b/c/a/b$f;->c()V

    .line 35
    iput-object v3, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    .line 36
    iput v2, p0, Lb/b/c/a/b;->s:I

    .line 37
    iput p1, p0, Lb/b/c/a/b;->r:I

    return v1

    :cond_7
    :goto_2
    return v5
.end method

.method public final c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5

    .line 1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    :cond_1
    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-le v3, v0, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual/range {p0 .. p5}, Lb/b/c/a/b;->d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 6
    :cond_4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual/range {p0 .. p5}, Lb/b/c/a/b;->e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 4

    .line 2
    sget-object v0, Lb/b/d/b;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Lb/i/b/a/i;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 4
    sget v2, Lb/b/d/b;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v3, -0x1

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    invoke-static {}, Lb/b/g/Q;->a()Lb/b/g/Q;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lb/b/g/Q;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-virtual {p0, p4}, Lb/b/c/a/f;->a(Landroid/util/AttributeSet;)[I

    move-result-object v0

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez p1, :cond_5

    .line 9
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    .line 10
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "vector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {p2, p3, p4, p5}, Lb/E/a/a/k;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/E/a/a/k;

    move-result-object p1

    goto :goto_2

    .line 12
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_3

    .line 13
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 17
    iget-object p2, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    invoke-virtual {p2, v0, p1, v1}, Lb/b/c/a/b$b;->a([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    .line 18
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/c/a/b;->onStateChange([I)Z

    return-void
.end method

.method public final e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    .line 1
    sget-object v0, Lb/b/d/b;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Lb/i/b/a/i;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lb/b/d/b;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3
    sget v3, Lb/b/d/b;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 4
    sget v4, Lb/b/d/b;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    .line 5
    invoke-static {}, Lb/b/g/Q;->a()Lb/b/g/Q;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lb/b/g/Q;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    sget v5, Lb/b/d/b;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v4, :cond_5

    .line 8
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 9
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "animated-vector"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-static {p1, p2, p3, p4, p5}, Lb/E/a/a/d;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/E/a/a/d;

    move-result-object v4

    goto :goto_2

    .line 11
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p1, v4, :cond_3

    .line 12
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 14
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v3, v2, :cond_6

    .line 16
    iget-object p1, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    invoke-virtual {p1, v1, v3, v4, v5}, Lb/b/c/a/b$b;->a(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    .line 17
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Lb/b/c/a/d;->jumpToCurrentState()V

    .line 2
    iget-object v0, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/b/c/a/b$f;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    .line 5
    iget v0, p0, Lb/b/c/a/b;->r:I

    invoke-virtual {p0, v0}, Lb/b/c/a/d;->a(I)Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lb/b/c/a/b;->r:I

    .line 7
    iput v0, p0, Lb/b/c/a/b;->s:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/c/a/b;->t:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lb/b/c/a/f;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    invoke-virtual {v0}, Lb/b/c/a/b$b;->n()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb/b/c/a/b;->t:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/c/a/b;->p:Lb/b/c/a/b$b;

    invoke-virtual {v0, p1}, Lb/b/c/a/b$b;->b([I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lb/b/c/a/d;->b()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lb/b/c/a/b;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lb/b/c/a/d;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lb/b/c/a/d;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lb/b/c/a/d;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lb/b/c/a/b;->q:Lb/b/c/a/b$f;

    invoke-virtual {p1}, Lb/b/c/a/b$f;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lb/b/c/a/b;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method
