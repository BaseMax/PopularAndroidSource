.class public Lb/b/f/a/k;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Lb/i/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/f/a/k$b;,
        Lb/b/f/a/k$a;
    }
.end annotation


# static fields
.field public static final a:[I


# instance fields
.field public A:Z

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/res/Resources;

.field public d:Z

.field public e:Z

.field public f:Lb/b/f/a/k$a;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:I

.field public n:Landroid/view/ContextMenu$ContextMenuInfo;

.field public o:Ljava/lang/CharSequence;

.field public p:Landroid/graphics/drawable/Drawable;

.field public q:Landroid/view/View;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lb/b/f/a/t;",
            ">;>;"
        }
    .end annotation
.end field

.field public y:Lb/b/f/a/o;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb/b/f/a/k;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/b/f/a/k;->m:I

    .line 3
    iput-boolean v0, p0, Lb/b/f/a/k;->r:Z

    .line 4
    iput-boolean v0, p0, Lb/b/f/a/k;->s:Z

    .line 5
    iput-boolean v0, p0, Lb/b/f/a/k;->t:Z

    .line 6
    iput-boolean v0, p0, Lb/b/f/a/k;->u:Z

    .line 7
    iput-boolean v0, p0, Lb/b/f/a/k;->v:Z

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/b/f/a/k;->w:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    iput-boolean v0, p0, Lb/b/f/a/k;->z:Z

    .line 11
    iput-object p1, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/b/f/a/k;->h:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lb/b/f/a/k;->i:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/f/a/k;->j:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/f/a/k;->k:Ljava/util/ArrayList;

    .line 18
    iput-boolean p1, p0, Lb/b/f/a/k;->l:Z

    .line 19
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->e(Z)V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;I)I"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/o;

    .line 48
    invoke-virtual {v1}, Lb/b/f/a/o;->c()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    .line 14
    sget-object v1, Lb/b/f/a/k;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 15
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lb/b/f/a/k;->a(II)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 2

    .line 40
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 41
    iget-object v1, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/f/a/o;

    .line 42
    invoke-virtual {v1}, Lb/b/f/a/o;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .line 20
    invoke-static {p3}, Lb/b/f/a/k;->c(I)I

    move-result v7

    .line 21
    iget v6, p0, Lb/b/f/a/k;->m:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lb/b/f/a/k;->a(IIIILjava/lang/CharSequence;I)Lb/b/f/a/o;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lb/b/f/a/k;->n:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p1, p2}, Lb/b/f/a/o;->a(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 24
    :cond_0
    iget-object p2, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-static {p2, v7}, Lb/b/f/a/k;->a(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 25
    invoke-virtual {p0, p2}, Lb/b/f/a/k;->c(Z)V

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lb/b/f/a/k;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 112
    invoke-virtual/range {v0 .. v5}, Lb/b/f/a/k;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public a(Landroid/view/View;)Lb/b/f/a/k;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 113
    invoke-virtual/range {v0 .. v5}, Lb/b/f/a/k;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lb/b/f/a/k;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Lb/b/f/a/k;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final a(IIIILjava/lang/CharSequence;I)Lb/b/f/a/o;
    .locals 9

    .line 26
    new-instance v8, Lb/b/f/a/o;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lb/b/f/a/o;-><init>(Lb/b/f/a/k;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method public a(ILandroid/view/KeyEvent;)Lb/b/f/a/o;
    .locals 11

    .line 62
    iget-object v0, p0, Lb/b/f/a/k;->w:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    invoke-virtual {p0, v0, p1, p2}, Lb/b/f/a/k;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 67
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 68
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    .line 70
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/f/a/o;

    return-object p1

    .line 71
    :cond_1
    invoke-virtual {p0}, Lb/b/f/a/k;->p()Z

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_7

    .line 72
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/f/a/o;

    if-eqz v4, :cond_2

    .line 73
    invoke-virtual {v7}, Lb/b/f/a/o;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v7}, Lb/b/f/a/o;->getNumericShortcut()C

    move-result v8

    .line 75
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v5

    if-ne v8, v9, :cond_3

    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method public a()V
    .locals 1

    .line 44
    iget-object v0, p0, Lb/b/f/a/k;->f:Lb/b/f/a/k$a;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0}, Lb/b/f/a/k$a;->a(Lb/b/f/a/k;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lb/b/f/a/k;->l()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 102
    iput-object p5, p0, Lb/b/f/a/k;->q:Landroid/view/View;

    .line 103
    iput-object v1, p0, Lb/b/f/a/k;->o:Ljava/lang/CharSequence;

    .line 104
    iput-object v1, p0, Lb/b/f/a/k;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_0
    if-lez p1, :cond_1

    .line 105
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/k;->o:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 106
    iput-object p2, p0, Lb/b/f/a/k;->o:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 107
    invoke-virtual {p0}, Lb/b/f/a/k;->e()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/k;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 108
    iput-object p4, p0, Lb/b/f/a/k;->p:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_4
    :goto_1
    iput-object v1, p0, Lb/b/f/a/k;->q:Landroid/view/View;

    :goto_2
    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->c(Z)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 27
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "android:menu:presenters"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/t;

    if-nez v2, :cond_2

    .line 15
    iget-object v2, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v2}, Lb/b/f/a/t;->getId()I

    move-result v1

    if-lez v1, :cond_1

    .line 17
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v2, v1}, Lb/b/f/a/t;->a(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroid/view/MenuItem;)V
    .locals 6

    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 31
    iget-object v1, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Lb/b/f/a/k;->s()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 33
    iget-object v4, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/a/o;

    .line 34
    invoke-virtual {v4}, Lb/b/f/a/o;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 35
    invoke-virtual {v4}, Lb/b/f/a/o;->i()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    invoke-virtual {v4}, Lb/b/f/a/o;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 37
    :goto_1
    invoke-virtual {v4, v5}, Lb/b/f/a/o;->b(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {p0}, Lb/b/f/a/k;->r()V

    return-void
.end method

.method public a(Lb/b/f/a/k$a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lb/b/f/a/k;->f:Lb/b/f/a/k$a;

    return-void
.end method

.method public a(Lb/b/f/a/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lb/b/f/a/k;->a(Lb/b/f/a/t;Landroid/content/Context;)V

    return-void
.end method

.method public a(Lb/b/f/a/t;Landroid/content/Context;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p2, p0}, Lb/b/f/a/t;->a(Landroid/content/Context;Lb/b/f/a/k;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lb/b/f/a/k;->l:Z

    return-void
.end method

.method public a(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/f/a/o;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lb/b/f/a/k;->p()Z

    move-result v0

    .line 50
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    .line 51
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v3, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    .line 54
    iget-object v7, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/b/f/a/o;

    .line 55
    invoke-virtual {v7}, Lb/b/f/a/o;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 56
    invoke-virtual {v7}, Lb/b/f/a/o;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lb/b/f/a/k;

    invoke-virtual {v8, p1, p2, p3}, Lb/b/f/a/k;->a(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v7}, Lb/b/f/a/o;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lb/b/f/a/o;->getNumericShortcut()C

    move-result v8

    :goto_1
    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v7}, Lb/b/f/a/o;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lb/b/f/a/o;->getNumericModifiers()I

    move-result v9

    :goto_2
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    .line 59
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_5

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_5

    if-eqz v0, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    if-ne p2, v4, :cond_6

    .line 60
    :cond_5
    invoke-virtual {v7}, Lb/b/f/a/o;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 61
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 94
    iget-boolean v0, p0, Lb/b/f/a/k;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lb/b/f/a/k;->v:Z

    .line 96
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 97
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/t;

    if-nez v2, :cond_1

    .line 98
    iget-object v2, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v2, p0, p1}, Lb/b/f/a/t;->a(Lb/b/f/a/k;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lb/b/f/a/k;->v:Z

    return-void
.end method

.method public a(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0, p2}, Lb/b/f/a/k;->a(Landroid/view/MenuItem;Lb/b/f/a/t;I)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/MenuItem;Lb/b/f/a/t;I)Z
    .locals 6

    .line 77
    check-cast p1, Lb/b/f/a/o;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 78
    invoke-virtual {p1}, Lb/b/f/a/o;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 79
    :cond_0
    invoke-virtual {p1}, Lb/b/f/a/o;->g()Z

    move-result v1

    .line 80
    invoke-virtual {p1}, Lb/b/f/a/o;->a()Lb/i/k/b;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2}, Lb/i/k/b;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 82
    :goto_0
    invoke-virtual {p1}, Lb/b/f/a/o;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {p1}, Lb/b/f/a/o;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 84
    invoke-virtual {p0, v3}, Lb/b/f/a/k;->a(Z)V

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {p1}, Lb/b/f/a/o;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_8

    .line 86
    invoke-virtual {p0, v3}, Lb/b/f/a/k;->a(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    .line 87
    invoke-virtual {p0, v0}, Lb/b/f/a/k;->a(Z)V

    .line 88
    :cond_5
    invoke-virtual {p1}, Lb/b/f/a/o;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_6

    .line 89
    new-instance p3, Lb/b/f/a/A;

    invoke-virtual {p0}, Lb/b/f/a/k;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Lb/b/f/a/A;-><init>(Landroid/content/Context;Lb/b/f/a/k;Lb/b/f/a/o;)V

    invoke-virtual {p1, p3}, Lb/b/f/a/o;->a(Lb/b/f/a/A;)V

    .line 90
    :cond_6
    invoke-virtual {p1}, Lb/b/f/a/o;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lb/b/f/a/A;

    if-eqz v4, :cond_7

    .line 91
    invoke-virtual {v2, p1}, Lb/i/k/b;->a(Landroid/view/SubMenu;)V

    .line 92
    :cond_7
    invoke-virtual {p0, p1, p2}, Lb/b/f/a/k;->a(Lb/b/f/a/A;Lb/b/f/a/t;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_8

    .line 93
    invoke-virtual {p0, v3}, Lb/b/f/a/k;->a(Z)V

    :cond_8
    :goto_2
    return v1

    :cond_9
    :goto_3
    return v0
.end method

.method public final a(Lb/b/f/a/A;Lb/b/f/a/t;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2, p1}, Lb/b/f/a/t;->a(Lb/b/f/a/A;)Z

    move-result v1

    .line 7
    :cond_1
    iget-object p2, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/t;

    if-nez v2, :cond_3

    .line 9
    iget-object v2, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    .line 10
    invoke-interface {v2, p1}, Lb/b/f/a/t;->a(Lb/b/f/a/A;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method public a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lb/b/f/a/k;->f:Lb/b/f/a/k$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb/b/f/a/k$a;->a(Lb/b/f/a/k;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lb/b/f/a/o;)Z
    .locals 4

    .line 114
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/b/f/a/k;->y:Lb/b/f/a/o;

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/k;->s()V

    .line 116
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 117
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/t;

    if-nez v3, :cond_2

    .line 118
    iget-object v3, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {v3, p0, p1}, Lb/b/f/a/t;->a(Lb/b/f/a/k;Lb/b/f/a/o;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_3
    invoke-virtual {p0}, Lb/b/f/a/k;->r()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lb/b/f/a/k;->y:Lb/b/f/a/o;

    :cond_4
    :goto_1
    return v1
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lb/b/f/a/k;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/f/a/k;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/f/a/k;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lb/b/f/a/k;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 5
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lb/b/f/a/k;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 9
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 10
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 11
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    .line 12
    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lb/b/f/a/k;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 6
    iget-object v0, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/f/a/k;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/b/f/a/k;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lb/b/f/a/o;

    .line 4
    new-instance p2, Lb/b/f/a/A;

    iget-object p3, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lb/b/f/a/A;-><init>(Landroid/content/Context;Lb/b/f/a/k;Lb/b/f/a/o;)V

    .line 5
    invoke-virtual {p1, p2}, Lb/b/f/a/o;->a(Lb/b/f/a/A;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Lb/b/f/a/k;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public b(I)I
    .locals 3

    .line 20
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    iget-object v2, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/o;

    .line 22
    invoke-virtual {v2}, Lb/b/f/a/o;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b()V
    .locals 6

    .line 23
    invoke-virtual {p0}, Lb/b/f/a/k;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lb/b/f/a/k;->l:Z

    if-nez v1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/f/a/t;

    if-nez v5, :cond_1

    .line 27
    iget-object v5, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_1
    invoke-interface {v5}, Lb/b/f/a/t;->a()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 29
    iget-object v1, p0, Lb/b/f/a/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v1, p0, Lb/b/f/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    .line 32
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/a/o;

    .line 33
    invoke-virtual {v4}, Lb/b/f/a/o;->h()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 34
    iget-object v5, p0, Lb/b/f/a/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_3
    iget-object v5, p0, Lb/b/f/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_4
    iget-object v0, p0, Lb/b/f/a/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object v0, p0, Lb/b/f/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    iget-object v0, p0, Lb/b/f/a/k;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lb/b/f/a/k;->n()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_5
    iput-boolean v2, p0, Lb/b/f/a/k;->l:Z

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 13
    iget-object v1, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 14
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/t;

    if-nez v3, :cond_2

    .line 15
    iget-object v3, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v3}, Lb/b/f/a/t;->getId()I

    move-result v2

    if-lez v2, :cond_1

    .line 17
    invoke-interface {v3}, Lb/b/f/a/t;->b()Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "android:menu:presenters"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public b(Lb/b/f/a/t;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/t;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 3
    :cond_1
    iget-object v2, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 4
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/k;->s()V

    .line 6
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/t;

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v2, p1}, Lb/b/f/a/t;->a(Z)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lb/b/f/a/k;->r()V

    return-void
.end method

.method public b(Lb/b/f/a/o;)Z
    .locals 4

    .line 40
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/k;->s()V

    .line 42
    iget-object v0, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 43
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/t;

    if-nez v3, :cond_2

    .line 44
    iget-object v3, p0, Lb/b/f/a/k;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {v3, p0, p1}, Lb/b/f/a/t;->b(Lb/b/f/a/k;Lb/b/f/a/o;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_3
    invoke-virtual {p0}, Lb/b/f/a/k;->r()V

    if-eqz v1, :cond_4

    .line 47
    iput-object p1, p0, Lb/b/f/a/k;->y:Lb/b/f/a/o;

    :cond_4
    return v1
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lb/b/f/a/k;->b()V

    .line 26
    iget-object v0, p0, Lb/b/f/a/k;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 4
    invoke-virtual {p0, v2}, Lb/b/f/a/k;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 7
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 8
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lb/b/f/a/A;

    .line 10
    invoke-virtual {v3, p1}, Lb/b/f/a/k;->c(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "android:menu:expandedactionview"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 12
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_4
    return-void
.end method

.method public c(Lb/b/f/a/o;)V
    .locals 0

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lb/b/f/a/k;->l:Z

    .line 24
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->c(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 17
    iget-boolean v0, p0, Lb/b/f/a/k;->r:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 18
    iput-boolean v1, p0, Lb/b/f/a/k;->i:Z

    .line 19
    iput-boolean v1, p0, Lb/b/f/a/k;->l:Z

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->b(Z)V

    goto :goto_0

    .line 21
    :cond_1
    iput-boolean v1, p0, Lb/b/f/a/k;->s:Z

    if-eqz p1, :cond_2

    .line 22
    iput-boolean v1, p0, Lb/b/f/a/k;->t:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->y:Lb/b/f/a/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lb/b/f/a/k;->a(Lb/b/f/a/o;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lb/b/f/a/k;->c(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lb/b/f/a/k;->p:Landroid/graphics/drawable/Drawable;

    .line 2
    iput-object v0, p0, Lb/b/f/a/k;->o:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Lb/b/f/a/k;->q:Landroid/view/View;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lb/b/f/a/k;->c(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/b/f/a/k;->a(Z)V

    return-void
.end method

.method public d(I)Lb/b/f/a/k;
    .locals 0

    .line 1
    iput p1, p0, Lb/b/f/a/k;->m:I

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Lb/b/f/a/o;)V
    .locals 0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lb/b/f/a/k;->i:Z

    .line 4
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->c(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lb/b/f/a/k;->A:Z

    return-void
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 17
    iget-object v0, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method public e(I)Lb/b/f/a/k;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lb/b/f/a/k;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p0, v2}, Lb/b/f/a/k;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 7
    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const-string v5, "android:menu:expandedactionview"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    :cond_1
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lb/b/f/a/A;

    .line 11
    invoke-virtual {v3, p1}, Lb/b/f/a/k;->e(Landroid/os/Bundle;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0}, Lb/b/f/a/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    return-void
.end method

.method public final e(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    .line 14
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iget-object v1, p0, Lb/b/f/a/k;->b:Landroid/content/Context;

    .line 16
    invoke-static {p1, v1}, Lb/i/k/A;->d(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lb/b/f/a/k;->e:Z

    return-void
.end method

.method public f(I)Lb/b/f/a/k;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lb/b/f/a/k;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public f()Lb/b/f/a/o;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/b/f/a/k;->y:Lb/b/f/a/o;

    return-object v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/o;

    .line 3
    invoke-virtual {v2}, Lb/b/f/a/o;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {v2}, Lb/b/f/a/o;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Lb/b/f/a/o;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->o:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->A:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/b/f/a/k;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    iget-object v4, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/a/o;

    .line 4
    invoke-virtual {v4}, Lb/b/f/a/o;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public i()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->q:Landroid/view/View;

    return-object v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/b/f/a/k;->a(ILandroid/view/KeyEvent;)Lb/b/f/a/o;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb/b/f/a/k;->b()V

    .line 2
    iget-object v0, p0, Lb/b/f/a/k;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->u:Z

    return v0
.end method

.method public l()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method public m()Lb/b/f/a/k;
    .locals 0

    return-object p0
.end method

.method public n()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lb/b/f/a/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/f/a/k;->h:Ljava/util/ArrayList;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/f/a/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/o;

    .line 5
    invoke-virtual {v3}, Lb/b/f/a/o;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lb/b/f/a/k;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v1, p0, Lb/b/f/a/k;->i:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lb/b/f/a/k;->l:Z

    .line 8
    iget-object v0, p0, Lb/b/f/a/k;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->z:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->d:Z

    return v0
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lb/b/f/a/k;->a(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/b/f/a/k;->a(ILandroid/view/KeyEvent;)Lb/b/f/a/o;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lb/b/f/a/k;->a(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Lb/b/f/a/k;->a(Z)V

    :cond_1
    return p1
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->e:Z

    return v0
.end method

.method public r()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/b/f/a/k;->r:Z

    .line 2
    iget-boolean v1, p0, Lb/b/f/a/k;->s:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lb/b/f/a/k;->s:Z

    .line 4
    iget-boolean v0, p0, Lb/b/f/a/k;->t:Z

    invoke-virtual {p0, v0}, Lb/b/f/a/k;->c(Z)V

    :cond_0
    return-void
.end method

.method public removeGroup(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->a(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    .line 3
    iget-object v3, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/f/a/o;

    invoke-virtual {v3}, Lb/b/f/a/o;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {p0, v0, v2}, Lb/b/f/a/k;->a(IZ)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->c(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->b(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb/b/f/a/k;->a(IZ)V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/b/f/a/k;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/b/f/a/k;->r:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/b/f/a/k;->s:Z

    .line 4
    iput-boolean v0, p0, Lb/b/f/a/k;->t:Z

    :cond_0
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/o;

    .line 3
    invoke-virtual {v2}, Lb/b/f/a/o;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2, p3}, Lb/b/f/a/o;->c(Z)V

    .line 5
    invoke-virtual {v2, p2}, Lb/b/f/a/o;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/b/f/a/k;->z:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/f/a/o;

    .line 3
    invoke-virtual {v2}, Lb/b/f/a/o;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Lb/b/f/a/o;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 2
    iget-object v4, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/a/o;

    .line 3
    invoke-virtual {v4}, Lb/b/f/a/o;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 4
    invoke-virtual {v4, p2}, Lb/b/f/a/o;->e(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Lb/b/f/a/k;->c(Z)V

    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/b/f/a/k;->d:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lb/b/f/a/k;->c(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
