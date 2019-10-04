.class public abstract Landroidx/databinding/ViewDataBinding;
.super Lb/l/a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$b;,
        Landroidx/databinding/ViewDataBinding$a;,
        Landroidx/databinding/ViewDataBinding$c;,
        Landroidx/databinding/ViewDataBinding$g;,
        Landroidx/databinding/ViewDataBinding$e;,
        Landroidx/databinding/ViewDataBinding$h;,
        Landroidx/databinding/ViewDataBinding$f;,
        Landroidx/databinding/ViewDataBinding$d;
    }
.end annotation


# static fields
.field public static b:I

.field public static final c:I

.field public static final d:Z

.field public static final e:Landroidx/databinding/ViewDataBinding$a;

.field public static final f:Landroidx/databinding/ViewDataBinding$a;

.field public static final g:Landroidx/databinding/ViewDataBinding$a;

.field public static final h:Landroidx/databinding/ViewDataBinding$a;

.field public static final i:Lb/l/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/l/c$a<",
            "Lb/l/v;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final l:Ljava/lang/Runnable;

.field public m:Z

.field public n:Z

.field public o:[Landroidx/databinding/ViewDataBinding$f;

.field public final p:Landroid/view/View;

.field public q:Lb/l/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/l/c<",
            "Lb/l/v;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z

.field public s:Landroid/view/Choreographer;

.field public final t:Landroid/view/Choreographer$FrameCallback;

.field public u:Landroid/os/Handler;

.field public final v:Lb/l/f;

.field public w:Landroidx/databinding/ViewDataBinding;

.field public x:Lb/r/k;

.field public y:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->b:I

    const/16 v0, 0x8

    .line 2
    sput v0, Landroidx/databinding/ViewDataBinding;->c:I

    .line 3
    sget v0, Landroidx/databinding/ViewDataBinding;->b:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->d:Z

    .line 4
    new-instance v0, Lb/l/y;

    invoke-direct {v0}, Lb/l/y;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->e:Landroidx/databinding/ViewDataBinding$a;

    .line 5
    new-instance v0, Lb/l/z;

    invoke-direct {v0}, Lb/l/z;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->f:Landroidx/databinding/ViewDataBinding$a;

    .line 6
    new-instance v0, Lb/l/A;

    invoke-direct {v0}, Lb/l/A;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->g:Landroidx/databinding/ViewDataBinding$a;

    .line 7
    new-instance v0, Lb/l/B;

    invoke-direct {v0}, Lb/l/B;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->h:Landroidx/databinding/ViewDataBinding$a;

    .line 8
    new-instance v0, Lb/l/C;

    invoke-direct {v0}, Lb/l/C;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->i:Lb/l/c$a;

    .line 9
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->j:Ljava/lang/ref/ReferenceQueue;

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 11
    sput-object v0, Landroidx/databinding/ViewDataBinding;->k:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Lb/l/D;

    invoke-direct {v0}, Lb/l/D;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->k:Landroid/view/View$OnAttachStateChangeListener;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lb/l/f;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/l/a;-><init>()V

    .line 2
    new-instance v0, Lb/l/E;

    invoke-direct {v0, p0}, Lb/l/E;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->l:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    .line 5
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->v:Lb/l/f;

    .line 6
    new-array p1, p3, [Landroidx/databinding/ViewDataBinding$f;

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$f;

    .line 7
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->p:Landroid/view/View;

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    sget-boolean p1, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->s:Landroid/view/Choreographer;

    .line 11
    new-instance p1, Lb/l/F;

    invoke-direct {p1, p0}, Lb/l/F;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/Choreographer$FrameCallback;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->u:Landroid/os/Handler;

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 15
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Object;)Lb/l/f;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Lb/l/f;Landroid/view/View;I)V

    return-void
.end method

.method public static a(Ljava/lang/Float;)F
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Landroid/view/View;I)I
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/ViewGroup;I)I
    .locals 8

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 83
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 84
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 86
    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_1

    return p1

    .line 89
    :cond_1
    invoke-static {v5, v2}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method public static a(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$b;I)I
    .locals 2

    const/16 v0, 0x2f

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 75
    iget-object p2, p2, Landroidx/databinding/ViewDataBinding$b;->a:[[Ljava/lang/String;

    aget-object p2, p2, p3

    .line 76
    array-length p3, p2

    :goto_0
    if-ge p1, p3, :cond_1

    .line 77
    aget-object v0, p2, p1

    .line 78
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/Long;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 92
    invoke-static {p4}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/Object;)Lb/l/f;

    move-result-object p4

    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lb/l/g;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLb/l/f;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    sget v0, Lb/l/b/a;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/databinding/ViewDataBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Lb/l/f;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lb/l/f;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lb/l/f;

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 0

    .line 2
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic a(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;I)V

    return-void
.end method

.method public static a(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 40
    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 42
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v9, "layout"

    const/4 v2, -0x1

    const/4 v11, 0x1

    if-eqz p5, :cond_5

    if-eqz v1, :cond_5

    .line 43
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x5f

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_4

    add-int/2addr v3, v11

    .line 45
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->b(Ljava/lang/String;I)I

    move-result v1

    .line 47
    aget-object v3, p2, v1

    if-nez v3, :cond_2

    .line 48
    aput-object v0, p2, v1

    :cond_2
    if-nez v7, :cond_3

    const/4 v1, -0x1

    :cond_3
    move v3, v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const/4 v3, -0x1

    :goto_1
    move v12, v3

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_8

    const-string v3, "binding_"

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 50
    sget v3, Landroidx/databinding/ViewDataBinding;->c:I

    invoke-static {v1, v3}, Landroidx/databinding/ViewDataBinding;->b(Ljava/lang/String;I)I

    move-result v1

    .line 51
    aget-object v3, p2, v1

    if-nez v3, :cond_6

    .line 52
    aput-object v0, p2, v1

    :cond_6
    if-nez v7, :cond_7

    const/4 v1, -0x1

    :cond_7
    move v12, v1

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    const/4 v12, -0x1

    :goto_2
    if-nez v1, :cond_9

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_9

    if-eqz v8, :cond_9

    .line 54
    invoke-virtual {v8, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_9

    aget-object v2, p2, v1

    if-nez v2, :cond_9

    .line 55
    aput-object v0, p2, v1

    .line 56
    :cond_9
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 57
    move-object v13, v0

    check-cast v13, Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v0, v14, :cond_e

    .line 59
    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ltz v12, :cond_c

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_0"

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 63
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_c

    .line 64
    invoke-static {v3, v1, v7, v12}, Landroidx/databinding/ViewDataBinding;->a(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$b;I)I

    move-result v3

    if-ltz v3, :cond_c

    add-int/lit8 v1, v3, 0x1

    .line 65
    iget-object v4, v7, Landroidx/databinding/ViewDataBinding$b;->b:[[I

    aget-object v4, v4, v12

    aget v4, v4, v3

    .line 66
    iget-object v5, v7, Landroidx/databinding/ViewDataBinding$b;->c:[[I

    aget-object v5, v5, v12

    aget v3, v5, v3

    .line 67
    invoke-static {v13, v0}, Landroidx/databinding/ViewDataBinding;->a(Landroid/view/ViewGroup;I)I

    move-result v5

    if-ne v5, v0, :cond_a

    .line 68
    invoke-static {v6, v2, v3}, Lb/l/g;->a(Lb/l/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    move v10, v0

    move v15, v1

    goto :goto_5

    :cond_a
    sub-int/2addr v5, v0

    add-int/2addr v5, v11

    .line 69
    new-array v15, v5, [Landroid/view/View;

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v5, :cond_b

    add-int v11, v0, v10

    .line 70
    invoke-virtual {v13, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    aput-object v11, v15, v10

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    .line 71
    :cond_b
    invoke-static {v6, v15, v3}, Lb/l/g;->a(Lb/l/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    aput-object v3, p2, v4

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v0, v5

    move v10, v0

    move v15, v1

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    move v10, v0

    move v15, v1

    const/4 v11, 0x0

    :goto_5
    if-nez v11, :cond_d

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 72
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;Z)V

    :cond_d
    const/4 v0, 0x1

    add-int/lit8 v1, v10, 0x1

    move v0, v1

    move v1, v15

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method public static synthetic a(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    return p1
.end method

.method public static a(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 3

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lb/l/f;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6

    .line 29
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 30
    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->a(Lb/l/f;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$b;Landroid/util/SparseIntArray;Z)V

    return-object p2
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 3

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    mul-int/lit8 v1, v1, 0xa

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static b(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 0

    .line 3
    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->p:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    .line 2
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->j()V

    return-void
.end method

.method public static synthetic b(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    return p1
.end method

.method public static synthetic c()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->k:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method public static synthetic d()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 1
    sget-object v0, Landroidx/databinding/ViewDataBinding;->j:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static j()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/databinding/ViewDataBinding$f;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/databinding/ViewDataBinding$f;

    .line 4
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$f;->c()Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;I)V
    .locals 1

    .line 16
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->z:Z

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->b(ILjava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$a;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$f;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 24
    invoke-interface {p3, p0, p1}, Landroidx/databinding/ViewDataBinding$a;->a(Landroidx/databinding/ViewDataBinding;I)Landroidx/databinding/ViewDataBinding$f;

    move-result-object v0

    .line 25
    iget-object p3, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$f;

    aput-object v0, p3, p1

    .line 26
    iget-object p1, p0, Landroidx/databinding/ViewDataBinding;->x:Lb/r/k;

    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding$f;->a(Lb/r/k;)V

    .line 28
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/databinding/ViewDataBinding$f;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lb/r/k;)V
    .locals 4

    .line 7
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->x:Lb/r/k;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lb/r/k;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->y:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->b(Lb/r/j;)V

    .line 9
    :cond_1
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->x:Lb/r/k;

    if-eqz p1, :cond_3

    .line 10
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->y:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Lb/l/y;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->y:Landroidx/databinding/ViewDataBinding$OnStartListener;

    .line 12
    :cond_2
    invoke-interface {p1}, Lb/r/k;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->y:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lb/r/j;)V

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$f;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {v3, p1}, Landroidx/databinding/ViewDataBinding$f;->a(Lb/r/k;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(ILandroidx/lifecycle/LiveData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/LiveData<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->z:Z

    const/4 v0, 0x0

    .line 21
    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBinding;->h:Landroidx/databinding/ViewDataBinding$a;

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->b(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$a;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->z:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->z:Z

    throw p1
.end method

.method public a(ILb/l/j;)Z
    .locals 1

    .line 19
    sget-object v0, Landroidx/databinding/ViewDataBinding;->e:Landroidx/databinding/ViewDataBinding$a;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->b(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$a;)Z

    move-result p1

    return p1
.end method

.method public abstract a(ILjava/lang/Object;)Z
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 4
    sget v0, Lb/l/b/a;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$f;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding$f;->c()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(ILjava/lang/Object;I)Z
.end method

.method public final b(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$a;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->b(I)Z

    move-result p1

    return p1

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->o:[Landroidx/databinding/ViewDataBinding$f;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$a;)V

    return v1

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$f;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_2

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->b(I)Z

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;Landroidx/databinding/ViewDataBinding$a;)V

    return v1
.end method

.method public abstract e()V
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->k()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    .line 6
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->q:Lb/l/c;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2, p0, v0, v3}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->q:Lb/l/c;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->n:Z

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->e()V

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->q:Lb/l/c;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 13
    invoke-virtual {v0, p0, v2, v3}, Lb/l/c;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 14
    :cond_3
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->r:Z

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->w:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->f()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->g()V

    :goto_0
    return-void
.end method

.method public h()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->p:Landroid/view/View;

    return-object v0
.end method

.method public abstract i()Z
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->w:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->k()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->x:Lb/r/k;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lb/r/k;->b()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->a()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    if-eqz v0, :cond_2

    .line 8
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->m:Z

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->d:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->s:Landroid/view/Choreographer;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->t:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->u:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
